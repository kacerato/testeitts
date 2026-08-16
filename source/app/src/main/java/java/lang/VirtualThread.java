package java.lang;

import java.lang.Thread;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.ForkJoinTask;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import jdk.internal.event.VirtualThreadEndEvent;
import jdk.internal.event.VirtualThreadStartEvent;
import jdk.internal.event.VirtualThreadSubmitFailedEvent;
import jdk.internal.misc.CarrierThread;
import jdk.internal.misc.InnocuousThread;
import jdk.internal.misc.Unsafe;
import jdk.internal.vm.Continuation;
import jdk.internal.vm.ContinuationScope;
import jdk.internal.vm.StackableScope;
import jdk.internal.vm.ThreadContainer;
import jdk.internal.vm.ThreadContainers;
import jdk.internal.vm.annotation.ChangesCurrentThread;
import jdk.internal.vm.annotation.Hidden;
import jdk.internal.vm.annotation.IntrinsicCandidate;
import jdk.internal.vm.annotation.JvmtiHideEvents;
import jdk.internal.vm.annotation.JvmtiMountTransition;
import jdk.internal.vm.annotation.ReservedStackAccess;
import org.openjdk.tools.doclint.DocLint;
import sun.nio.ch.Interruptible;

public final class VirtualThread extends BaseVirtualThread {

    private static final Unsafe f92802U;
    private static final ContinuationScope VTHREAD_SCOPE;
    private static final ForkJoinPool DEFAULT_SCHEDULER;
    private static final long STATE;
    private static final long PARK_PERMIT;
    private static final long CARRIER_THREAD;
    private static final long TERMINATION;
    private static final long ON_WAITING_LIST;
    private final Executor scheduler;
    private final Continuation cont;
    private final Runnable runContinuation;
    private volatile int state;
    private static final int NEW = 0;
    private static final int STARTED = 1;
    private static final int RUNNING = 2;
    private static final int PARKING = 3;
    private static final int PARKED = 4;
    private static final int PINNED = 5;
    private static final int TIMED_PARKING = 6;
    private static final int TIMED_PARKED = 7;
    private static final int TIMED_PINNED = 8;
    private static final int UNPARKED = 9;
    private static final int YIELDING = 10;
    private static final int YIELDED = 11;
    private static final int BLOCKING = 12;
    private static final int BLOCKED = 13;
    private static final int UNBLOCKED = 14;
    private static final int WAITING = 15;
    private static final int WAIT = 16;
    private static final int TIMED_WAITING = 17;
    private static final int TIMED_WAIT = 18;
    private static final int TERMINATED = 99;
    private static final int SUSPENDED = 256;
    private volatile boolean parkPermit;
    private volatile boolean blockPermit;
    private volatile boolean onWaitingList;
    private volatile VirtualThread next;
    private volatile boolean notified;
    private byte timedWaitSeqNo;
    private long timeout;
    private Future<?> timeoutTask;
    private volatile Thread carrierThread;
    private volatile CountDownLatch termination;
    static final boolean $assertionsDisabled;

    @Hidden
    private static native void postPinnedEvent(String str);

    @IntrinsicCandidate
    @JvmtiMountTransition
    private native void notifyJvmtiStart();

    @IntrinsicCandidate
    @JvmtiMountTransition
    private native void notifyJvmtiEnd();

    @IntrinsicCandidate
    @JvmtiMountTransition
    private native void notifyJvmtiMount(boolean z10);

    @IntrinsicCandidate
    @JvmtiMountTransition
    private native void notifyJvmtiUnmount(boolean z10);

    @IntrinsicCandidate
    private static native void notifyJvmtiDisableSuspend(boolean z10);

    private static native void registerNatives();

    private static native VirtualThread takeVirtualThreadListToUnblock();

    static {
        $assertionsDisabled = !VirtualThread.class.desiredAssertionStatus();
        f92802U = Unsafe.getUnsafe();
        VTHREAD_SCOPE = new ContinuationScope("VirtualThreads");
        DEFAULT_SCHEDULER = createDefaultScheduler();
        STATE = f92802U.objectFieldOffset(VirtualThread.class, "state");
        PARK_PERMIT = f92802U.objectFieldOffset(VirtualThread.class, "parkPermit");
        CARRIER_THREAD = f92802U.objectFieldOffset(VirtualThread.class, "carrierThread");
        TERMINATION = f92802U.objectFieldOffset(VirtualThread.class, "termination");
        ON_WAITING_LIST = f92802U.objectFieldOffset(VirtualThread.class, "onWaitingList");
        registerNatives();
        Thread.virtualThreadGroup();
        Thread unblocker = InnocuousThread.newThread("VirtualThread-unblocker", VirtualThread::unblockVirtualThreads);
        unblocker.setDaemon(true);
        unblocker.start();
    }

    public static Executor defaultScheduler() {
        return DEFAULT_SCHEDULER;
    }

    public static ContinuationScope continuationScope() {
        return VTHREAD_SCOPE;
    }

    public VirtualThread(Executor scheduler, String name, int characteristics, Runnable task) {
        super(name, characteristics, false);
        Objects.requireNonNull(task);
        if (scheduler == null) {
            Thread parent = Thread.currentThread();
            if (parent instanceof VirtualThread) {
                VirtualThread vparent = (VirtualThread) parent;
                scheduler = vparent.scheduler;
            } else {
                scheduler = DEFAULT_SCHEDULER;
            }
        }
        this.scheduler = scheduler;
        this.cont = new VThreadContinuation(this, task);
        this.runContinuation = this::runContinuation;
    }

    private static class VThreadContinuation extends Continuation {
        VThreadContinuation(VirtualThread vthread, Runnable task) {
            super(VirtualThread.VTHREAD_SCOPE, wrap(vthread, task));
        }

        protected void onPinned(Continuation.Pinned reason) {
        }

        private static Runnable wrap(final VirtualThread vthread, final Runnable task) {
            return new Runnable() {
                @Override
                @Hidden
                @JvmtiHideEvents
                public void run() {
                    VirtualThread.this.notifyJvmtiStart();
                    try {
                        VirtualThread.this.run(task);
                    } finally {
                        VirtualThread.this.notifyJvmtiEnd();
                    }
                }
            };
        }
    }

    @ChangesCurrentThread
    private void runContinuation() {
        if (Thread.currentThread().isVirtual()) {
            throw new WrongThreadException();
        }
        int initialState = state();
        if ((initialState != 1 && initialState != 9 && initialState != 14 && initialState != 11) || !compareAndSetState(initialState, 2)) {
            return;
        }
        if (initialState == 9) {
            cancelTimeoutTask();
            setParkPermit(false);
        } else if (initialState == 14) {
            cancelTimeoutTask();
            this.blockPermit = false;
        }
        mount();
        try {
            this.cont.run();
            unmount();
            if (this.cont.isDone()) {
                afterDone();
            } else {
                afterYield();
            }
        } catch (Throwable th2) {
            unmount();
            if (this.cont.isDone()) {
                afterDone();
            } else {
                afterYield();
            }
            throw th2;
        }
    }

    private void cancelTimeoutTask() {
        if (this.timeoutTask != null) {
            this.timeoutTask.cancel(false);
            this.timeoutTask = null;
        }
    }

    private void submitRunContinuation(Executor scheduler, boolean retryOnOOME) {
        boolean done = false;
        while (!done) {
            try {
                if (currentThread().isVirtual()) {
                    Continuation.pin();
                    try {
                        scheduler.execute(this.runContinuation);
                        Continuation.unpin();
                    } catch (Throwable th2) {
                        Continuation.unpin();
                        throw th2;
                        break;
                    }
                } else {
                    scheduler.execute(this.runContinuation);
                }
                done = true;
            } catch (OutOfMemoryError e10) {
                if (retryOnOOME) {
                    f92802U.park(false, 100000000L);
                } else {
                    throw e10;
                }
            } catch (RejectedExecutionException ree) {
                submitFailed(ree);
                throw ree;
            }
        }
    }

    private void externalSubmitRunContinuation(ForkJoinPool pool) {
        if (!$assertionsDisabled && !(Thread.currentThread() instanceof CarrierThread)) {
            throw new AssertionError();
        }
        try {
            pool.externalSubmit(ForkJoinTask.adapt(this.runContinuation));
        } catch (OutOfMemoryError e10) {
            submitRunContinuation(pool, true);
        } catch (RejectedExecutionException ree) {
            submitFailed(ree);
            throw ree;
        }
    }

    private void submitRunContinuation() {
        submitRunContinuation(this.scheduler, true);
    }

    private void lazySubmitRunContinuation() {
        CarrierThread currentThread = currentThread();
        if (currentThread instanceof CarrierThread) {
            CarrierThread ct = currentThread;
            if (ct.getQueuedTaskCount() == 0) {
                ForkJoinPool pool = ct.getPool();
                try {
                    pool.lazySubmit(ForkJoinTask.adapt(this.runContinuation));
                    return;
                } catch (OutOfMemoryError e10) {
                    submitRunContinuation();
                    return;
                } catch (RejectedExecutionException ree) {
                    submitFailed(ree);
                    throw ree;
                }
            }
        }
        submitRunContinuation();
    }

    private void externalSubmitRunContinuationOrThrow() {
        if (this.scheduler == DEFAULT_SCHEDULER) {
            CarrierThread currentCarrierThread = currentCarrierThread();
            if (currentCarrierThread instanceof CarrierThread) {
                CarrierThread ct = currentCarrierThread;
                try {
                    ct.getPool().externalSubmit(ForkJoinTask.adapt(this.runContinuation));
                    return;
                } catch (RejectedExecutionException ree) {
                    submitFailed(ree);
                    throw ree;
                }
            }
        }
        submitRunContinuation(this.scheduler, false);
    }

    private void submitFailed(RejectedExecutionException ree) {
        VirtualThreadSubmitFailedEvent event = new VirtualThreadSubmitFailedEvent();
        if (event.isEnabled()) {
            event.javaThreadId = threadId();
            event.exceptionMessage = ree.getMessage();
            event.commit();
        }
    }

    private void run(Runnable task) {
        if (!$assertionsDisabled && (Thread.currentThread() != this || this.state != 2)) {
            throw new AssertionError();
        }
        if (VirtualThreadStartEvent.isTurnedOn()) {
            VirtualThreadStartEvent event = new VirtualThreadStartEvent();
            event.javaThreadId = threadId();
            event.commit();
        }
        Object bindings = Thread.scopedValueBindings();
        try {
            try {
                runWith(bindings, task);
                StackableScope.popAll();
                if (VirtualThreadEndEvent.isTurnedOn()) {
                    VirtualThreadEndEvent event2 = new VirtualThreadEndEvent();
                    event2.javaThreadId = threadId();
                    event2.commit();
                }
            } catch (Throwable exc) {
                dispatchUncaughtException(exc);
                StackableScope.popAll();
                if (VirtualThreadEndEvent.isTurnedOn()) {
                    VirtualThreadEndEvent event3 = new VirtualThreadEndEvent();
                    event3.javaThreadId = threadId();
                    event3.commit();
                }
            }
        } catch (Throwable th2) {
            StackableScope.popAll();
            if (VirtualThreadEndEvent.isTurnedOn()) {
                VirtualThreadEndEvent event4 = new VirtualThreadEndEvent();
                event4.javaThreadId = threadId();
                event4.commit();
            }
            throw th2;
        }
    }

    @ChangesCurrentThread
    @ReservedStackAccess
    private void mount() {
        notifyJvmtiMount(true);
        Thread carrier = Thread.currentCarrierThread();
        setCarrierThread(carrier);
        if (this.interrupted) {
            carrier.setInterrupt();
        } else if (carrier.isInterrupted()) {
            synchronized (this.interruptLock) {
                if (!this.interrupted) {
                    carrier.clearInterrupt();
                }
            }
        }
        carrier.setCurrentThread(this);
    }

    @ChangesCurrentThread
    @ReservedStackAccess
    private void unmount() {
        if (!$assertionsDisabled && Thread.holdsLock(this.interruptLock)) {
            throw new AssertionError();
        }
        Thread carrier = this.carrierThread;
        carrier.setCurrentThread(carrier);
        synchronized (this.interruptLock) {
            setCarrierThread(null);
        }
        carrier.clearInterrupt();
        notifyJvmtiUnmount(false);
    }

    @Hidden
    private boolean yieldContinuation() {
        notifyJvmtiUnmount(true);
        try {
            return Continuation.yield(VTHREAD_SCOPE);
        } finally {
            notifyJvmtiMount(false);
        }
    }

    private void afterYield() {
        int newState;
        int newState2;
        if (!$assertionsDisabled && this.carrierThread != null) {
            throw new AssertionError();
        }
        CarrierThread ct = currentThread();
        if (ct instanceof CarrierThread) {
            ct.endBlocking();
        }
        int s10 = state();
        if (s10 == 3 || s10 == 6) {
            if (s10 == 3) {
                newState = 4;
                setState(4);
            } else {
                long timeout = this.timeout;
                if (!$assertionsDisabled && timeout <= 0) {
                    throw new AssertionError();
                }
                this.timeoutTask = schedule(this::parkTimeoutExpired, timeout, TimeUnit.NANOSECONDS);
                newState = 7;
                setState(7);
            }
            if (this.parkPermit && compareAndSetState(newState, 9)) {
                lazySubmitRunContinuation();
                return;
            }
            return;
        }
        if (s10 == 10) {
            setState(11);
            CarrierThread currentThread = currentThread();
            if (currentThread instanceof CarrierThread) {
                CarrierThread ct2 = currentThread;
                if (ct2.getQueuedTaskCount() == 0) {
                    externalSubmitRunContinuation(ct2.getPool());
                    return;
                }
            }
            submitRunContinuation();
            return;
        }
        if (s10 == 12) {
            setState(13);
            if (this.blockPermit && compareAndSetState(13, 14)) {
                lazySubmitRunContinuation();
                return;
            }
            return;
        }
        if (s10 == 15 || s10 == 17) {
            if (s10 == 15) {
                newState2 = 16;
                setState(16);
            } else {
                long timeout2 = this.timeout;
                if (!$assertionsDisabled && timeout2 <= 0) {
                    throw new AssertionError();
                }
                synchronized (timedWaitLock()) {
                    byte seqNo = (byte) (this.timedWaitSeqNo + 1);
                    this.timedWaitSeqNo = seqNo;
                    this.timeoutTask = schedule(() -> {
                        waitTimeoutExpired(seqNo);
                    }, timeout2, TimeUnit.MILLISECONDS);
                    newState2 = 18;
                    setState(18);
                }
            }
            if (this.notified && compareAndSetState(newState2, 13)) {
                if (this.blockPermit && compareAndSetState(13, 14)) {
                    submitRunContinuation();
                    return;
                }
                return;
            }
            if (this.interrupted && compareAndSetState(newState2, 14)) {
                submitRunContinuation();
                return;
            }
            return;
        }
        if (!$assertionsDisabled) {
            throw new AssertionError();
        }
    }

    private void afterDone() {
        afterDone(true);
    }

    private void afterDone(boolean notifyContainer) {
        if (!$assertionsDisabled && this.carrierThread != null) {
            throw new AssertionError();
        }
        setState(99);
        CountDownLatch termination = this.termination;
        if (termination != null) {
            if (!$assertionsDisabled && termination.getCount() != 1) {
                throw new AssertionError();
            }
            termination.countDown();
        }
        if (notifyContainer) {
            threadContainer().remove(this);
        }
        clearReferences();
    }

    @Override
    public void start(ThreadContainer container) {
        if (!compareAndSetState(0, 1)) {
            throw new IllegalThreadStateException("Already started");
        }
        if (!$assertionsDisabled && threadContainer() != null) {
            throw new AssertionError();
        }
        setThreadContainer(container);
        boolean addedToContainer = false;
        boolean started = false;
        try {
            container.add(this);
            addedToContainer = true;
            inheritScopedValueBindings(container);
            externalSubmitRunContinuationOrThrow();
            started = true;
            if (1 == 0) {
                afterDone(true);
            }
        } catch (Throwable th2) {
            if (!started) {
                afterDone(addedToContainer);
            }
            throw th2;
        }
    }

    @Override
    public void start() {
        start(ThreadContainers.root());
    }

    @Override
    public void run() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004c, code lost:
    
        if (r6 != (state() == 2)) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0095, code lost:
    
        if (r6 != (state() == 2)) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00de, code lost:
    
        if (r6 != (state() == 2)) goto L65;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void park() {
        if (!$assertionsDisabled && Thread.currentThread() != this) {
            throw new AssertionError();
        }
        if (getAndSetParkPermit(false) || this.interrupted) {
            return;
        }
        boolean yielded = false;
        setState(3);
        try {
            yielded = yieldContinuation();
            if (!$assertionsDisabled) {
                if (Thread.currentThread() == this) {
                }
                throw new AssertionError();
            }
            if (!yielded) {
                if (!$assertionsDisabled && state() != 3) {
                    throw new AssertionError();
                }
                setState(2);
            }
        } catch (OutOfMemoryError e10) {
            if (!$assertionsDisabled) {
                if (Thread.currentThread() == this) {
                }
                throw new AssertionError();
            }
            if (!yielded) {
                if (!$assertionsDisabled && state() != 3) {
                    throw new AssertionError();
                }
                setState(2);
            }
        } catch (Throwable th2) {
            if (!$assertionsDisabled) {
                if (Thread.currentThread() == this) {
                }
                throw new AssertionError();
            }
            if (!yielded) {
                if (!$assertionsDisabled && state() != 3) {
                    throw new AssertionError();
                }
                setState(2);
            }
            throw th2;
        }
        if (!yielded) {
            parkOnCarrierThread(false, 0L);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005f, code lost:
    
        if (r12 != (state() == 2)) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ac, code lost:
    
        if (r12 != (state() == 2)) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00f9, code lost:
    
        if (r12 != (state() == 2)) goto L67;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void parkNanos(long nanos) {
        if (!$assertionsDisabled && Thread.currentThread() != this) {
            throw new AssertionError();
        }
        if (!getAndSetParkPermit(false) && !this.interrupted && nanos > 0) {
            long startTime = System.nanoTime();
            boolean yielded = false;
            this.timeout = nanos;
            setState(6);
            try {
                try {
                    yielded = yieldContinuation();
                    if (!$assertionsDisabled) {
                        if (Thread.currentThread() == this) {
                        }
                        throw new AssertionError();
                    }
                    if (!yielded) {
                        if (!$assertionsDisabled && state() != 6) {
                            throw new AssertionError();
                        }
                        setState(2);
                    }
                } catch (OutOfMemoryError e10) {
                    if (!$assertionsDisabled) {
                        if (Thread.currentThread() == this) {
                        }
                        throw new AssertionError();
                    }
                    if (!yielded) {
                        if (!$assertionsDisabled && state() != 6) {
                            throw new AssertionError();
                        }
                        setState(2);
                    }
                }
                if (!yielded) {
                    long remainingNanos = nanos - (System.nanoTime() - startTime);
                    parkOnCarrierThread(true, remainingNanos);
                }
            } catch (Throwable th2) {
                if (!$assertionsDisabled) {
                    if (Thread.currentThread() == this) {
                    }
                    throw new AssertionError();
                }
                if (!yielded) {
                    if (!$assertionsDisabled && state() != 6) {
                        throw new AssertionError();
                    }
                    setState(2);
                }
                throw th2;
            }
        }
    }

    private void parkOnCarrierThread(boolean timed, long nanos) {
        if (!$assertionsDisabled && state() != 2) {
            throw new AssertionError();
        }
        setState(timed ? 8 : 5);
        try {
            if (!this.parkPermit) {
                if (!timed) {
                    f92802U.park(false, 0L);
                } else if (nanos > 0) {
                    f92802U.park(false, nanos);
                }
            }
            setParkPermit(false);
            postPinnedEvent("LockSupport.park");
        } finally {
            setState(2);
        }
    }

    @Override
    void unpark() {
        int s10;
        if (!getAndSetParkPermit(true) && currentThread() != this) {
            int s11 = state();
            if ((s11 == 4 || s11 == 7) && compareAndSetState(s11, 9)) {
                submitRunContinuation();
                return;
            }
            if (s11 == 5 || s11 == 8) {
                disableSuspendAndPreempt();
                try {
                    synchronized (carrierThreadAccessLock()) {
                        Thread carrier = this.carrierThread;
                        if (carrier != null && ((s10 = state()) == 5 || s10 == 8)) {
                            f92802U.unpark(carrier);
                        }
                    }
                } finally {
                    enableSuspendAndPreempt();
                }
            }
        }
    }

    private void unblock() {
        if (!$assertionsDisabled && Thread.currentThread().isVirtual()) {
            throw new AssertionError();
        }
        this.blockPermit = true;
        if (state() == 13 && compareAndSetState(13, 14)) {
            submitRunContinuation();
        }
    }

    private void parkTimeoutExpired() {
        if (!$assertionsDisabled && currentThread().isVirtual()) {
            throw new AssertionError();
        }
        if (!getAndSetParkPermit(true) && state() == 7 && compareAndSetState(7, 9)) {
            lazySubmitRunContinuation();
        }
    }

    private void waitTimeoutExpired(byte seqNo) {
        if (!$assertionsDisabled && Thread.currentThread().isVirtual()) {
            throw new AssertionError();
        }
        while (true) {
            boolean unblocked = false;
            synchronized (timedWaitLock()) {
                if (seqNo != this.timedWaitSeqNo) {
                    return;
                }
                int s10 = state();
                if (s10 == 18) {
                    unblocked = compareAndSetState(18, 14);
                } else if (s10 != 274) {
                    return;
                }
                if (unblocked) {
                    lazySubmitRunContinuation();
                    return;
                }
                Thread.yield();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003d, code lost:
    
        if (r5 != (state() == 2)) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0087, code lost:
    
        if (r5 != (state() == 2)) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void tryYield() {
        if (!$assertionsDisabled && Thread.currentThread() != this) {
            throw new AssertionError();
        }
        setState(10);
        boolean yielded = false;
        try {
            yielded = yieldContinuation();
            if (!$assertionsDisabled) {
                if (Thread.currentThread() == this) {
                }
                throw new AssertionError();
            }
            if (!yielded) {
                if (!$assertionsDisabled && state() != 10) {
                    throw new AssertionError();
                }
                setState(2);
            }
        } catch (Throwable th2) {
            if (!$assertionsDisabled) {
                if (Thread.currentThread() == this) {
                }
                throw new AssertionError();
            }
            if (!yielded) {
                if (!$assertionsDisabled && state() != 10) {
                    throw new AssertionError();
                }
                setState(2);
            }
            throw th2;
        }
    }

    public void sleepNanos(long nanos) throws InterruptedException {
        if (!$assertionsDisabled && (Thread.currentThread() != this || nanos < 0)) {
            throw new AssertionError();
        }
        if (getAndClearInterrupt()) {
            throw new InterruptedException();
        }
        if (nanos == 0) {
            tryYield();
            return;
        }
        try {
            long remainingNanos = nanos;
            long startNanos = System.nanoTime();
            while (remainingNanos > 0) {
                parkNanos(remainingNanos);
                if (getAndClearInterrupt()) {
                    throw new InterruptedException();
                }
                remainingNanos = nanos - (System.nanoTime() - startNanos);
            }
        } finally {
            setParkPermit(true);
        }
    }

    public boolean joinNanos(long nanos) throws InterruptedException {
        if (state() == 99) {
            return true;
        }
        CountDownLatch termination = getTermination();
        if (state() == 99) {
            return true;
        }
        if (nanos == 0) {
            termination.await();
        } else {
            boolean terminated = termination.await(nanos, TimeUnit.NANOSECONDS);
            if (!terminated) {
                return false;
            }
        }
        if ($assertionsDisabled || state() == 99) {
            return true;
        }
        throw new AssertionError();
    }

    @Override
    public void blockedOn(Interruptible b10) {
        disableSuspendAndPreempt();
        try {
            super.blockedOn(b10);
        } finally {
            enableSuspendAndPreempt();
        }
    }

    @Override
    public void interrupt() {
        Interruptible blocker;
        if (Thread.currentThread() != this) {
            disableSuspendAndPreempt();
            try {
                synchronized (this.interruptLock) {
                    this.interrupted = true;
                    blocker = nioBlocker();
                    if (blocker != null) {
                        blocker.interrupt(this);
                    }
                    Thread carrier = this.carrierThread;
                    if (carrier != null) {
                        carrier.setInterrupt();
                    }
                }
                if (blocker != null) {
                    blocker.postInterrupt();
                }
                unpark();
                int s10 = state();
                if ((s10 == 16 || s10 == 18) && compareAndSetState(s10, 14)) {
                    submitRunContinuation();
                    return;
                }
                return;
            } finally {
                enableSuspendAndPreempt();
            }
        }
        this.interrupted = true;
        this.carrierThread.setInterrupt();
        setParkPermit(true);
    }

    @Override
    public boolean isInterrupted() {
        return this.interrupted;
    }

    @Override
    public boolean getAndClearInterrupt() {
        if (!$assertionsDisabled && Thread.currentThread() != this) {
            throw new AssertionError();
        }
        boolean oldValue = this.interrupted;
        if (oldValue) {
            disableSuspendAndPreempt();
            try {
                synchronized (this.interruptLock) {
                    this.interrupted = false;
                    this.carrierThread.clearInterrupt();
                }
            } finally {
                enableSuspendAndPreempt();
            }
        }
        return oldValue;
    }

    @Override
    public Thread.State threadState() {
        int s10 = state();
        switch (s10 & (-257)) {
            case 0:
                return Thread.State.NEW;
            case 1:
                if (threadContainer() == null) {
                    return Thread.State.NEW;
                }
                return Thread.State.RUNNABLE;
            case 2:
                if (Thread.currentThread() != this) {
                    disableSuspendAndPreempt();
                    try {
                        synchronized (carrierThreadAccessLock()) {
                            Thread carrierThread = this.carrierThread;
                            if (carrierThread != null) {
                                return carrierThread.threadState();
                            }
                            enableSuspendAndPreempt();
                        }
                    } finally {
                        enableSuspendAndPreempt();
                    }
                }
                return Thread.State.RUNNABLE;
            case 3:
            case 6:
            case 10:
            case 15:
            case 17:
                return Thread.State.RUNNABLE;
            case 4:
            case 5:
            case 16:
                return Thread.State.WAITING;
            case 7:
            case 8:
            case 18:
                return Thread.State.TIMED_WAITING;
            case 9:
            case 11:
            case 14:
                return Thread.State.RUNNABLE;
            case 12:
            case 13:
                return Thread.State.BLOCKED;
            case 99:
                return Thread.State.TERMINATED;
            default:
                throw new InternalError();
        }
    }

    @Override
    boolean alive() {
        int s10 = this.state;
        return (s10 == 0 || s10 == 99) ? false : true;
    }

    @Override
    boolean isTerminated() {
        return this.state == 99;
    }

    @Override
    public StackTraceElement[] asyncGetStackTrace() {
        StackTraceElement[] tryGetStackTrace;
        StackTraceElement[] stackTrace;
        do {
            if (this.carrierThread != null) {
                tryGetStackTrace = super.asyncGetStackTrace();
            } else {
                tryGetStackTrace = tryGetStackTrace();
            }
            stackTrace = tryGetStackTrace;
            if (stackTrace == null) {
                Thread.yield();
            }
        } while (stackTrace == null);
        return stackTrace;
    }

    private StackTraceElement[] tryGetStackTrace() {
        boolean z10;
        int initialState = state() & (-257);
        switch (initialState) {
            case 0:
            case 1:
            case 99:
                return new StackTraceElement[0];
            case 2:
            case 5:
            case 8:
                return null;
            case 3:
            case 6:
            case 10:
            case 12:
            case 15:
            case 17:
                return null;
            case 4:
            case 7:
            case 9:
            case 11:
            case 13:
            case 14:
            case 16:
            case 18:
                int suspendedState = initialState | 256;
                if (!compareAndSetState(initialState, suspendedState)) {
                    return null;
                }
                try {
                    StackTraceElement[] stack = this.cont.getStackTrace();
                    if (!$assertionsDisabled && this.state != suspendedState) {
                        throw new AssertionError();
                    }
                    setState(initialState);
                    switch (initialState) {
                        case 4:
                        case 7:
                            if (!this.parkPermit || !compareAndSetState(initialState, 9)) {
                                z10 = false;
                                break;
                            } else {
                                z10 = true;
                                break;
                            }
                            break;
                        case 5:
                        case 6:
                        case 8:
                        case 10:
                        case 12:
                        case 15:
                        case 17:
                        default:
                            throw new InternalError();
                        case 9:
                        case 11:
                        case 14:
                            z10 = true;
                            break;
                        case 13:
                            if (!this.blockPermit || !compareAndSetState(13, 14)) {
                                z10 = false;
                                break;
                            } else {
                                z10 = true;
                                break;
                            }
                            break;
                        case 16:
                        case 18:
                            if ((!this.notified && !this.interrupted) || !compareAndSetState(initialState, 14)) {
                                z10 = false;
                                break;
                            } else {
                                z10 = true;
                                break;
                            }
                            break;
                    }
                    boolean resubmit = z10;
                    if (resubmit) {
                        submitRunContinuation();
                    }
                    return stack;
                } catch (Throwable th2) {
                    if (!$assertionsDisabled && this.state != suspendedState) {
                        throw new AssertionError();
                    }
                    setState(initialState);
                    throw th2;
                }
            default:
                throw new InternalError("" + initialState);
        }
    }

    @Override
    public String toString() {
        boolean mounted;
        StringBuilder sb2 = new StringBuilder("VirtualThread[#");
        sb2.append(threadId());
        String name = getName();
        if (!name.isEmpty()) {
            sb2.append(DocLint.SEPARATOR);
            sb2.append(name);
        }
        sb2.append("]/");
        if (Thread.currentThread() == this) {
            mounted = appendCarrierInfo(sb2);
        } else {
            disableSuspendAndPreempt();
            try {
                synchronized (carrierThreadAccessLock()) {
                    mounted = appendCarrierInfo(sb2);
                }
            } finally {
                enableSuspendAndPreempt();
            }
        }
        if (!mounted) {
            String stateAsString = threadState().toString();
            sb2.append(stateAsString.toLowerCase(Locale.ROOT));
        }
        return sb2.toString();
    }

    private boolean appendCarrierInfo(StringBuilder sb2) {
        if (!$assertionsDisabled && Thread.currentThread() != this && !Thread.holdsLock(carrierThreadAccessLock())) {
            throw new AssertionError();
        }
        Thread carrier = this.carrierThread;
        if (carrier != null) {
            String stateAsString = carrier.threadState().toString();
            sb2.append(stateAsString.toLowerCase(Locale.ROOT));
            sb2.append('@');
            sb2.append(carrier.getName());
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (int) threadId();
    }

    public boolean equals(Object obj) {
        return obj == this;
    }

    private CountDownLatch getTermination() {
        CountDownLatch termination = this.termination;
        if (termination == null) {
            termination = new CountDownLatch(1);
            if (!f92802U.compareAndSetReference(this, TERMINATION, (Object) null, termination)) {
                termination = this.termination;
            }
        }
        return termination;
    }

    private Object carrierThreadAccessLock() {
        return this.interruptLock;
    }

    private Object timedWaitLock() {
        return this.runContinuation;
    }

    private void disableSuspendAndPreempt() {
        notifyJvmtiDisableSuspend(true);
        Continuation.pin();
    }

    private void enableSuspendAndPreempt() {
        Continuation.unpin();
        notifyJvmtiDisableSuspend(false);
    }

    private int state() {
        return this.state;
    }

    private void setState(int newValue) {
        this.state = newValue;
    }

    private boolean compareAndSetState(int expectedValue, int newValue) {
        return f92802U.compareAndSetInt(this, STATE, expectedValue, newValue);
    }

    private boolean compareAndSetOnWaitingList(boolean expectedValue, boolean newValue) {
        return f92802U.compareAndSetBoolean(this, ON_WAITING_LIST, expectedValue, newValue);
    }

    private void setParkPermit(boolean newValue) {
        if (this.parkPermit != newValue) {
            this.parkPermit = newValue;
        }
    }

    private boolean getAndSetParkPermit(boolean newValue) {
        if (this.parkPermit != newValue) {
            return f92802U.getAndSetBoolean(this, PARK_PERMIT, newValue);
        }
        return newValue;
    }

    private void setCarrierThread(Thread carrier) {
        this.carrierThread = carrier;
    }

    private static ForkJoinPool createDefaultScheduler() {
        int parallelism;
        int maxPoolSize;
        int minRunnable;
        ForkJoinPool.ForkJoinWorkerThreadFactory factory = pool -> {
            return new CarrierThread(pool);
        };
        String parallelismValue = System.getProperty("jdk.virtualThreadScheduler.parallelism");
        String maxPoolSizeValue = System.getProperty("jdk.virtualThreadScheduler.maxPoolSize");
        String minRunnableValue = System.getProperty("jdk.virtualThreadScheduler.minRunnable");
        if (parallelismValue != null) {
            parallelism = Integer.parseInt(parallelismValue);
        } else {
            parallelism = Runtime.getRuntime().availableProcessors();
        }
        if (maxPoolSizeValue != null) {
            maxPoolSize = Integer.parseInt(maxPoolSizeValue);
            parallelism = Integer.min(parallelism, maxPoolSize);
        } else {
            maxPoolSize = Integer.max(parallelism, 256);
        }
        if (minRunnableValue != null) {
            minRunnable = Integer.parseInt(minRunnableValue);
        } else {
            minRunnable = Integer.max(parallelism / 2, 1);
        }
        Thread.UncaughtExceptionHandler handler = (t10, e10) -> {
        };
        return new ForkJoinPool(parallelism, factory, handler, true, 0, maxPoolSize, minRunnable, pool2 -> {
            return true;
        }, 30L, TimeUnit.SECONDS);
    }

    private Future<?> schedule(Runnable command, long delay, TimeUnit unit) {
        Executor executor = this.scheduler;
        if (executor instanceof ForkJoinPool) {
            ForkJoinPool pool = (ForkJoinPool) executor;
            return pool.schedule(command, delay, unit);
        }
        return DelayedTaskSchedulers.schedule(command, delay, unit);
    }

    public static class DelayedTaskSchedulers {
        private static final ScheduledExecutorService[] INSTANCE = createDelayedTaskSchedulers();

        private DelayedTaskSchedulers() {
        }

        static Future<?> schedule(Runnable command, long delay, TimeUnit unit) {
            long tid = Thread.currentThread().threadId();
            int index = ((int) tid) & (INSTANCE.length - 1);
            return INSTANCE[index].schedule(command, delay, unit);
        }

        private static ScheduledExecutorService[] createDelayedTaskSchedulers() {
            int queueCount;
            String propValue = System.getProperty("jdk.virtualThreadScheduler.timerQueues");
            if (propValue != null) {
                queueCount = Integer.parseInt(propValue);
                if (queueCount != Integer.highestOneBit(queueCount)) {
                    throw new RuntimeException("Value of jdk.virtualThreadScheduler.timerQueues must be power of 2");
                }
            } else {
                int ncpus = Runtime.getRuntime().availableProcessors();
                queueCount = Math.max(Integer.highestOneBit(ncpus / 4), 1);
            }
            ScheduledExecutorService[] schedulers = new ScheduledExecutorService[queueCount];
            for (int i10 = 0; i10 < queueCount; i10++) {
                ScheduledThreadPoolExecutor stpe = (ScheduledThreadPoolExecutor) Executors.newScheduledThreadPool(1, task -> {
                    Thread t10 = InnocuousThread.newThread("VirtualThread-unparker", task);
                    t10.setDaemon(true);
                    return t10;
                });
                stpe.setRemoveOnCancelPolicy(true);
                schedulers[i10] = stpe;
            }
            return schedulers;
        }
    }

    private static void unblockVirtualThreads() {
        while (true) {
            VirtualThread takeVirtualThreadListToUnblock = takeVirtualThreadListToUnblock();
            while (true) {
                VirtualThread vthread = takeVirtualThreadListToUnblock;
                if (vthread != null) {
                    if (!$assertionsDisabled && !vthread.onWaitingList) {
                        throw new AssertionError();
                    }
                    VirtualThread nextThread = vthread.next;
                    vthread.next = null;
                    boolean changed = vthread.compareAndSetOnWaitingList(true, false);
                    if (!$assertionsDisabled && !changed) {
                        throw new AssertionError();
                    }
                    vthread.unblock();
                    takeVirtualThreadListToUnblock = nextThread;
                }
            }
        }
    }
}
