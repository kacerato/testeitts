package java.lang.ref;

import jdk.internal.access.JavaLangAccess;
import jdk.internal.access.SharedSecrets;
import jdk.internal.misc.VM;

final class Finalizer extends FinalReference<Object> {
    private static ReferenceQueue<Object> queue;
    private static Finalizer unfinalized;
    private static final Object lock;
    private Finalizer next;
    private Finalizer prev;
    static final boolean ENABLED;
    static final boolean $assertionsDisabled;

    private static native boolean isFinalizationEnabled();

    private static native void reportComplete(Object obj);

    static {
        $assertionsDisabled = !Finalizer.class.desiredAssertionStatus();
        queue = new ReferenceQueue<>();
        unfinalized = null;
        lock = new Object();
        ENABLED = isFinalizationEnabled();
    }

    private Finalizer(Object finalizee) {
        super(finalizee, queue);
        synchronized (lock) {
            if (unfinalized != null) {
                this.next = unfinalized;
                unfinalized.prev = this;
            }
            unfinalized = this;
        }
    }

    public static ReferenceQueue<Object> getQueue() {
        return queue;
    }

    static void register(Object finalizee) {
        if (ENABLED) {
            new Finalizer(finalizee);
            return;
        }
        throw new InternalError("unexpected call to Finalizer::register when finalization is disabled");
    }

    private void runFinalizer(JavaLangAccess jla) {
        Object finalizee;
        synchronized (lock) {
            if (this.next == this) {
                return;
            }
            if (unfinalized == this) {
                unfinalized = this.next;
            } else {
                this.prev.next = this.next;
            }
            if (this.next != null) {
                this.next.prev = this.prev;
            }
            this.prev = null;
            this.next = this;
            try {
                finalizee = get();
            } catch (Throwable th2) {
            }
            if (!$assertionsDisabled && finalizee == null) {
                throw new AssertionError();
            }
            if (!(finalizee instanceof Enum)) {
                jla.invokeFinalize(finalizee);
                reportComplete(finalizee);
            }
            super.clear();
        }
    }

    private static void forkSecondaryFinalizer(Runnable proc) {
        ThreadGroup tg2 = Thread.currentThread().getThreadGroup();
        ThreadGroup threadGroup = tg2;
        while (true) {
            ThreadGroup tgn = threadGroup;
            if (tgn != null) {
                tg2 = tgn;
                threadGroup = tg2.getParent();
            } else {
                Thread sft = new Thread(tg2, proc, "Secondary finalizer", 0L, false);
                sft.start();
                try {
                    sft.join();
                    return;
                } catch (InterruptedException e10) {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
        }
    }

    public static void runFinalization() {
        if (VM.initLevel() == 0 || !ENABLED) {
            return;
        }
        forkSecondaryFinalizer(new Runnable() {
            private volatile boolean running;

            @Override
            public void run() {
                if (this.running) {
                    return;
                }
                JavaLangAccess jla = SharedSecrets.getJavaLangAccess();
                this.running = true;
                while (true) {
                    Finalizer f10 = (Finalizer) Finalizer.queue.poll();
                    if (f10 != null) {
                        f10.runFinalizer(jla);
                    } else {
                        return;
                    }
                }
            }
        });
    }

    public static class FinalizerThread extends Thread {
        private volatile boolean running;

        FinalizerThread(ThreadGroup g10) {
            super(g10, (Runnable) null, "Finalizer", 0L, false);
        }

        @Override
        public void run() {
            if (this.running) {
                return;
            }
            JavaLangAccess jla = SharedSecrets.getJavaLangAccess();
            this.running = true;
            while (true) {
                try {
                    Finalizer f10 = (Finalizer) Finalizer.queue.remove();
                    f10.runFinalizer(jla);
                } catch (InterruptedException e10) {
                }
            }
        }
    }

    public static void startFinalizerThread(ThreadGroup tg2) {
        if (ENABLED) {
            Thread finalizer = new FinalizerThread(tg2);
            finalizer.setPriority(8);
            finalizer.setDaemon(true);
            finalizer.start();
        }
    }
}
