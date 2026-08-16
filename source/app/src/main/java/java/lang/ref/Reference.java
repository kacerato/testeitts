package java.lang.ref;

import jdk.internal.access.JavaLangRefAccess;
import jdk.internal.access.SharedSecrets;
import jdk.internal.misc.Unsafe;
import jdk.internal.vm.annotation.ForceInline;
import jdk.internal.vm.annotation.IntrinsicCandidate;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/ref/Reference.class
 */
public abstract class Reference<T> {
    private T referent;
    volatile ReferenceQueue<? super T> queue;
    volatile Reference next;
    private transient Reference<?> discovered;
    private static final Object processPendingLock;
    private static boolean processPendingActive;
    static final boolean $assertionsDisabled;

    private static native Reference<?> getAndClearReferencePendingList();

    private static native boolean hasReferencePendingList();

    private static native void waitForReferencePendingList();

    @IntrinsicCandidate
    private native boolean refersTo0(Object obj);

    @IntrinsicCandidate
    private native void clear0();

    static {
        $assertionsDisabled = !Reference.class.desiredAssertionStatus();
        processPendingLock = new Object();
        processPendingActive = false;
        runtimeSetup();
    }

    public static class ReferenceHandler extends Thread {
        ReferenceHandler(ThreadGroup g10, String name) {
            super(g10, (Runnable) null, name, 0L, false);
        }

        @Override
        public void run() {
            Unsafe.getUnsafe().ensureClassInitialized(jdk.internal.ref.Cleaner.class);
            while (true) {
                Reference.processPendingReferences();
            }
        }
    }

    private void enqueueFromPending() {
        ReferenceQueue<? super T> q10 = this.queue;
        if (q10 != ReferenceQueue.NULL_QUEUE) {
            q10.enqueue(this);
        }
    }

    private static void processPendingReferences() {
        jdk.internal.ref.Cleaner andClearReferencePendingList;
        waitForReferencePendingList();
        synchronized (processPendingLock) {
            andClearReferencePendingList = getAndClearReferencePendingList();
            processPendingActive = true;
        }
        while (andClearReferencePendingList != null) {
            jdk.internal.ref.Cleaner cleaner = andClearReferencePendingList;
            andClearReferencePendingList = ((Reference) cleaner).discovered;
            ((Reference) cleaner).discovered = null;
            if (cleaner instanceof jdk.internal.ref.Cleaner) {
                cleaner.clean();
                synchronized (processPendingLock) {
                    processPendingLock.notifyAll();
                }
            } else {
                cleaner.enqueueFromPending();
            }
        }
        synchronized (processPendingLock) {
            processPendingActive = false;
            processPendingLock.notifyAll();
        }
    }

    private static boolean waitForReferenceProcessing() throws InterruptedException {
        synchronized (processPendingLock) {
            if (processPendingActive || hasReferencePendingList()) {
                processPendingLock.wait();
                return true;
            }
            return false;
        }
    }

    static void startReferenceHandlerThread(ThreadGroup tg2) {
        Thread handler = new ReferenceHandler(tg2, "Reference Handler");
        handler.setPriority(10);
        handler.setDaemon(true);
        handler.start();
    }

    private static void runtimeSetup() {
        SharedSecrets.setJavaLangRefAccess(new JavaLangRefAccess() {
            public void startThreads() {
                ThreadGroup tg2 = Thread.currentThread().getThreadGroup();
                ThreadGroup threadGroup = tg2;
                while (true) {
                    ThreadGroup tgn = threadGroup;
                    if (tgn != null) {
                        tg2 = tgn;
                        threadGroup = tg2.getParent();
                    } else {
                        Reference.startReferenceHandlerThread(tg2);
                        Finalizer.startFinalizerThread(tg2);
                        return;
                    }
                }
            }

            public boolean waitForReferenceProcessing() throws InterruptedException {
                return Reference.waitForReferenceProcessing();
            }

            public void runFinalization() {
                Finalizer.runFinalization();
            }
        });
    }

    @IntrinsicCandidate
    public T get() {
        return this.referent;
    }

    public final boolean refersTo(T obj) {
        return refersToImpl(obj);
    }

    boolean refersToImpl(T obj) {
        return refersTo0(obj);
    }

    public void clear() {
        clearImpl();
    }

    void clearImpl() {
        clear0();
    }

    public T getFromInactiveFinalReference() {
        if (!$assertionsDisabled && !(this instanceof FinalReference)) {
            throw new AssertionError();
        }
        if ($assertionsDisabled || this.next != null) {
            return this.referent;
        }
        throw new AssertionError();
    }

    public void clearInactiveFinalReference() {
        if (!$assertionsDisabled && !(this instanceof FinalReference)) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && this.next == null) {
            throw new AssertionError();
        }
        this.referent = null;
    }

    @Deprecated(since = "16")
    public boolean isEnqueued() {
        return this.queue == ReferenceQueue.ENQUEUED;
    }

    public boolean enqueue() {
        clearImpl();
        return this.queue.enqueue(this);
    }

    protected Object clone() throws CloneNotSupportedException {
        throw new CloneNotSupportedException();
    }

    public Reference(T referent) {
        this(referent, null);
    }

    public Reference(T referent, ReferenceQueue<? super T> queue) {
        this.referent = referent;
        this.queue = queue == null ? ReferenceQueue.NULL_QUEUE : queue;
    }

    @ForceInline
    public static void reachabilityFence(Object ref) {
    }
}
