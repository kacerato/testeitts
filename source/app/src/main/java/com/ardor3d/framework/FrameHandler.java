package com.ardor3d.framework;

import com.ardor3d.annotation.MainThread;
import com.ardor3d.util.Timer;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class FrameHandler {
    private static final Logger logger = Logger.getLogger(FrameHandler.class.toString());
    private final Timer _timer;
    private long _timeoutSeconds = 5;
    private final CopyOnWriteArrayList<Updater> _updaters = new CopyOnWriteArrayList<>();
    private final CopyOnWriteArrayList<Canvas> _canvases = new CopyOnWriteArrayList<>();

    public FrameHandler(Timer timer) {
        this._timer = timer;
    }

    public synchronized void addCanvas(Canvas canvas) {
        this._canvases.addIfAbsent(canvas);
    }

    public void addUpdater(Updater updater) {
        this._updaters.addIfAbsent(updater);
    }

    public long getTimeoutSeconds() {
        return this._timeoutSeconds;
    }

    public void init() {
        Iterator<Canvas> it = this._canvases.iterator();
        while (it.hasNext()) {
            it.next().init();
        }
        Iterator<Updater> it2 = this._updaters.iterator();
        while (it2.hasNext()) {
            it2.next().init();
        }
    }

    public synchronized boolean removeCanvas(Canvas canvas) {
        return this._canvases.remove(canvas);
    }

    public boolean removeUpdater(Updater updater) {
        return this._updaters.remove(updater);
    }

    public void setTimeoutSeconds(long j10) {
        this._timeoutSeconds = j10;
    }

    @MainThread
    public void updateFrame() {
        int size;
        Iterator<Canvas> it;
        this._timer.update();
        Iterator<Updater> it2 = this._updaters.iterator();
        while (it2.hasNext()) {
            it2.next().update(this._timer);
        }
        synchronized (this) {
            size = this._canvases.size();
            it = this._canvases.iterator();
        }
        CountDownLatch countDownLatch = new CountDownLatch(size);
        while (it.hasNext()) {
            it.next().draw(countDownLatch);
        }
        try {
            if (countDownLatch.await(this._timeoutSeconds, TimeUnit.SECONDS)) {
                return;
            }
            logger.logp(Level.SEVERE, FrameHandler.class.toString(), "updateFrame", "Timeout while waiting for renderers");
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
