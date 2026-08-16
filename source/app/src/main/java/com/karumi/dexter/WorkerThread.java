package com.karumi.dexter;

import android.os.Handler;
import android.os.Looper;

final class WorkerThread implements Thread {
    private final Handler handler;
    private boolean wasLooperNull;

    public WorkerThread() {
        this.wasLooperNull = false;
        if (Looper.myLooper() == null) {
            this.wasLooperNull = true;
            Looper.prepare();
        }
        this.handler = new Handler();
    }

    @Override
    public void execute(Runnable runnable) {
        this.handler.post(runnable);
    }

    @Override
    public void loop() {
        if (this.wasLooperNull) {
            Looper.loop();
        }
    }
}
