package com.itsmagic.engine.Engines.Engine.Renders;

import O9.b;
import java.util.concurrent.atomic.AtomicBoolean;

public class LongGameBlockingOp extends Error {
    private final AtomicBoolean finished = new AtomicBoolean();
    private Runnable runnable;

    public class a implements Runnable {

        public class RunnableC1346a implements Runnable {
            public RunnableC1346a() {
            }

            @Override
            public void run() {
                LongGameBlockingOp.this.finished.set(true);
            }
        }

        public a() {
        }

        @Override
        public void run() {
            try {
                LongGameBlockingOp.this.runnable.run();
                K8.a.I(new RunnableC1346a());
            } catch (Exception e10) {
                e10.printStackTrace();
                LongGameBlockingOp.this.finished.set(true);
            }
        }
    }

    public LongGameBlockingOp(Runnable runnable) {
        runnable.getClass();
        start();
    }

    private void start() {
        b.d(new a());
    }

    public boolean isFinished() {
        return this.finished.get();
    }
}
