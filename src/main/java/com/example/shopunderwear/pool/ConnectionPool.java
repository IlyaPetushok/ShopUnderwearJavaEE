package com.example.shopunderwear.pool;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.concurrent.BlockingDeque;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

public class ConnectionPool {
    public static final int CAPACITY = 10;
    private static final CountDownLatch initializingLatch = new CountDownLatch(1);
    private static final AtomicBoolean isInstanceInitialized = new AtomicBoolean(false);
    private BlockingDeque<Connection> freeConnection = new LinkedBlockingDeque<>(CAPACITY);
    private static ConnectionPool instance;
    private static ReentrantLock reentrantLock = new ReentrantLock(true);
    private static final Condition condition = reentrantLock.newCondition();
    private static Properties properties;


    {
        properties = loadProperties();
        String driverName = (String) properties.get("db.driver");
        try {
            Class.forName(driverName);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    private ConnectionPool() {
        Connection connection = null;
        for (int i = 0; i < CAPACITY; i++) {
            try {
                connection = DriverManager.getConnection((String) properties.get("db.url"), properties);

            } catch (SQLException e) {
                e.printStackTrace();
            }
            freeConnection.add(connection);
        }
    }

    public static ConnectionPool getInstance() {
        if (instance == null) {
            while (isInstanceInitialized.compareAndSet(false, true)) {
                instance = new ConnectionPool();
                initializingLatch.countDown();
            }
            try {
                initializingLatch.await();
            } catch (InterruptedException exception) {
                //LOGGER
            }
        }
        return instance;
    }

    public Connection getFreeConnection() {
        Connection connection = null;
        reentrantLock.lock();
        try {
            while (freeConnection.size() == 0) {
                condition.await();
            }
            connection = freeConnection.poll();
        } catch (InterruptedException exception) {
            exception.printStackTrace();
        } finally {
            reentrantLock.unlock();
        }
        return connection;
    }

    public void releaseConnection(Connection connection) {
        reentrantLock.lock();
        try {
            freeConnection.put(connection);
            condition.signalAll();
        } catch (InterruptedException e) {
            e.printStackTrace();
        } finally {
            reentrantLock.unlock();
        }
    }


    private Properties loadProperties() {
        Properties properties = new Properties();
        try {
            properties.load(new FileReader("D:\\Java\\projectWork\\src\\main\\resources\\database.properties"));
        } catch (IOException e) {
            //logger
            e.printStackTrace();
        }
        return properties;
    }
}
