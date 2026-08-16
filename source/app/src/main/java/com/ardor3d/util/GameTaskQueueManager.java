package com.ardor3d.util;

import com.google.common.collect.O1;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Future;

public final class GameTaskQueueManager {
    private static final Map<Object, GameTaskQueueManager> _managers = new O1().l().i();
    private final ConcurrentMap<String, GameTaskQueue> _managedQueues = new ConcurrentHashMap(2);

    private GameTaskQueueManager() {
        addQueue(GameTaskQueue.RENDER, new GameTaskQueue());
        addQueue(GameTaskQueue.UPDATE, new GameTaskQueue());
    }

    public static GameTaskQueueManager getManager(Object obj) {
        GameTaskQueueManager gameTaskQueueManager;
        Map<Object, GameTaskQueueManager> map = _managers;
        synchronized (map) {
            try {
                gameTaskQueueManager = map.get(obj);
                if (gameTaskQueueManager == null) {
                    gameTaskQueueManager = new GameTaskQueueManager();
                    map.put(obj, gameTaskQueueManager);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return gameTaskQueueManager;
    }

    public void addQueue(String str, GameTaskQueue gameTaskQueue) {
        this._managedQueues.put(str, gameTaskQueue);
    }

    public void clearTasks() {
        Iterator<GameTaskQueue> it = this._managedQueues.values().iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
    }

    public GameTaskQueue getQueue(String str) {
        return this._managedQueues.get(str);
    }

    public void moveTasksTo(GameTaskQueueManager gameTaskQueueManager) {
        for (String str : this._managedQueues.o()) {
            GameTaskQueue queue = gameTaskQueueManager.getQueue(str);
            GameTaskQueue gameTaskQueue = this._managedQueues.get(str);
            if (queue != null && gameTaskQueue.size() > 0) {
                queue.enqueueAll(gameTaskQueue);
            }
        }
    }

    public <V> Future<V> render(Callable<V> callable) {
        return getQueue(GameTaskQueue.RENDER).enqueue(callable);
    }

    public <V> Future<V> update(Callable<V> callable) {
        return getQueue(GameTaskQueue.UPDATE).enqueue(callable);
    }
}
