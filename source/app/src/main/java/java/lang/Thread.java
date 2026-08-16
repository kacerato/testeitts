package java.lang;

import java.lang.ThreadBuilders;
import java.lang.ThreadLocal;
import java.lang.ref.Reference;
import java.lang.reflect.Field;
import java.time.Duration;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.StructureViolationException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import jdk.internal.event.ThreadSleepEvent;
import jdk.internal.misc.TerminatingThreadLocal;
import jdk.internal.misc.Unsafe;
import jdk.internal.misc.VM;
import jdk.internal.vm.Continuation;
import jdk.internal.vm.ScopedValueContainer;
import jdk.internal.vm.StackableScope;
import jdk.internal.vm.ThreadContainer;
import jdk.internal.vm.annotation.ForceInline;
import jdk.internal.vm.annotation.Hidden;
import jdk.internal.vm.annotation.IntrinsicCandidate;
import jdk.internal.vm.annotation.Stable;
import org.openjdk.tools.doclint.DocLint;
import sun.nio.ch.Interruptible;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Thread.class
 */
public class Thread implements Runnable {
    private volatile long eetop;
    private final long tid;
    private volatile String name;
    volatile boolean interrupted;
    private volatile ClassLoader contextClassLoader;
    private final FieldHolder holder;
    private ThreadLocal.ThreadLocalMap threadLocals;
    private ThreadLocal.ThreadLocalMap inheritableThreadLocals;
    private Object scopedValueBindings;
    private static final Object NEW_THREAD_BINDINGS;
    final Object interruptLock;
    private volatile Object parkBlocker;
    private Interruptible nioBlocker;
    public static final int MIN_PRIORITY = 1;
    public static final int NORM_PRIORITY = 5;
    public static final int MAX_PRIORITY = 10;
    private Continuation cont;
    static final int NO_INHERIT_THREAD_LOCALS = 4;
    static final long PRIMORDIAL_TID = 3;
    private static final StackTraceElement[] EMPTY_STACK_TRACE;
    private volatile UncaughtExceptionHandler uncaughtExceptionHandler;
    private static volatile UncaughtExceptionHandler defaultUncaughtExceptionHandler;
    long threadLocalRandomSeed;
    int threadLocalRandomProbe;
    int threadLocalRandomSecondarySeed;

    @Stable
    private ThreadContainer container;
    private volatile StackableScope headStackableScopes;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Thread$State.class
 */
    public enum State {
        NEW,
        RUNNABLE,
        BLOCKED,
        WAITING,
        TIMED_WAITING,
        TERMINATED
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Thread$UncaughtExceptionHandler.class
 */
    @FunctionalInterface
    public interface UncaughtExceptionHandler {
        void uncaughtException(Thread thread, Throwable th2);
    }

    private static native void registerNatives();

    @IntrinsicCandidate
    public static native Object findScopedValueBindings();

    @IntrinsicCandidate
    public static native Thread currentCarrierThread();

    @IntrinsicCandidate
    public static native Thread currentThread();

    @IntrinsicCandidate
    public native void setCurrentThread(Thread thread);

    @IntrinsicCandidate
    public static native Object[] scopedValueCache();

    @IntrinsicCandidate
    public static native void setScopedValueCache(Object[] objArr);

    @IntrinsicCandidate
    public static native void ensureMaterializedForStackWalk(Object obj);

    private static native void yield0();

    private static native void sleepNanos0(long j10) throws InterruptedException;

    private native void start0();

    public static native boolean holdsLock(Object obj);

    private native Object getStackTrace0();

    private static native StackTraceElement[][] dumpThreads(Thread[] threadArr);

    private static native Thread[] getThreads();

    private native void setPriority0(int i10);

    private native void interrupt0();

    private static native void clearInterruptEvent();

    private native void setNativeName(String str);

    private static native long getNextThreadIdOffset();

    static {
        registerNatives();
        NEW_THREAD_BINDINGS = Thread.class;
        EMPTY_STACK_TRACE = new StackTraceElement[0];
    }

    public static class FieldHolder {
        final ThreadGroup group;
        final Runnable task;
        final long stackSize;
        volatile int priority;
        volatile boolean daemon;
        volatile int threadStatus;
        ThreadLocal.ThreadLocalMap terminatingThreadLocals;

        FieldHolder(ThreadGroup group, Runnable task, long stackSize, int priority, boolean daemon) {
            this.group = group;
            this.task = task;
            this.stackSize = stackSize;
            this.priority = priority;
            if (daemon) {
                this.daemon = true;
            }
        }
    }

    public ThreadLocal.ThreadLocalMap terminatingThreadLocals() {
        return this.holder.terminatingThreadLocals;
    }

    public void setTerminatingThreadLocals(ThreadLocal.ThreadLocalMap map) {
        this.holder.terminatingThreadLocals = map;
    }

    public ThreadLocal.ThreadLocalMap threadLocals() {
        return this.threadLocals;
    }

    public void setThreadLocals(ThreadLocal.ThreadLocalMap map) {
        this.threadLocals = map;
    }

    public ThreadLocal.ThreadLocalMap inheritableThreadLocals() {
        return this.inheritableThreadLocals;
    }

    public void setInheritableThreadLocals(ThreadLocal.ThreadLocalMap map) {
        this.inheritableThreadLocals = map;
    }

    public static Object scopedValueBindings() {
        return currentThread().scopedValueBindings;
    }

    public static void setScopedValueBindings(Object bindings) {
        currentThread().scopedValueBindings = bindings;
    }

    public void inheritScopedValueBindings(ThreadContainer container) {
        ScopedValueContainer.BindingsSnapshot snapshot;
        if (container.owner() != null && (snapshot = container.scopedValueBindings()) != null) {
            Object bindings = snapshot.scopedValueBindings();
            if (currentThread().scopedValueBindings != bindings) {
                throw new StructureViolationException("Scoped value bindings have changed");
            }
            this.scopedValueBindings = bindings;
        }
    }

    public Interruptible nioBlocker() {
        return this.nioBlocker;
    }

    public void blockedOn(Interruptible b10) {
        synchronized (this.interruptLock) {
            this.nioBlocker = b10;
        }
    }

    public Continuation getContinuation() {
        return this.cont;
    }

    public void setContinuation(Continuation cont) {
        this.cont = cont;
    }

    public static void yield() {
        Thread currentThread = currentThread();
        if (currentThread instanceof VirtualThread) {
            VirtualThread vthread = (VirtualThread) currentThread;
            vthread.tryYield();
        } else {
            yield0();
        }
    }

    private static ThreadSleepEvent beforeSleep(long nanos) {
        try {
            ThreadSleepEvent event = new ThreadSleepEvent();
            if (event.isEnabled()) {
                event.time = nanos;
                event.begin();
                return event;
            }
            return null;
        } catch (OutOfMemoryError e10) {
            return null;
        }
    }

    private static void afterSleep(ThreadSleepEvent event) {
        if (event != null) {
            try {
                event.commit();
            } catch (OutOfMemoryError e10) {
            }
        }
    }

    private static void sleepNanos(long nanos) throws InterruptedException {
        ThreadSleepEvent event = beforeSleep(nanos);
        try {
            Thread currentThread = currentThread();
            if (currentThread instanceof VirtualThread) {
                VirtualThread vthread = (VirtualThread) currentThread;
                vthread.sleepNanos(nanos);
            } else {
                sleepNanos0(nanos);
            }
        } finally {
            afterSleep(event);
        }
    }

    public static void sleep(long millis) throws InterruptedException {
        if (millis < 0) {
            throw new IllegalArgumentException("timeout value is negative");
        }
        long nanos = TimeUnit.MILLISECONDS.toNanos(millis);
        sleepNanos(nanos);
    }

    public static void sleep(long millis, int nanos) throws InterruptedException {
        if (millis < 0) {
            throw new IllegalArgumentException("timeout value is negative");
        }
        if (nanos < 0 || nanos > 999999) {
            throw new IllegalArgumentException("nanosecond timeout value out of range");
        }
        long totalNanos = TimeUnit.MILLISECONDS.toNanos(millis);
        sleepNanos(totalNanos + Math.min(Long.MAX_VALUE - totalNanos, nanos));
    }

    public static void sleep(Duration duration) throws InterruptedException {
        long nanos = TimeUnit.NANOSECONDS.convert(duration);
        if (nanos < 0) {
            return;
        }
        sleepNanos(nanos);
    }

    @IntrinsicCandidate
    public static void onSpinWait() {
    }

    private static class ThreadIdentifiers {

        private static final Unsafe f92799U = Unsafe.getUnsafe();
        private static final long NEXT_TID_OFFSET = Thread.getNextThreadIdOffset();

        private ThreadIdentifiers() {
        }

        static long next() {
            return f92799U.getAndAddLong((Object) null, NEXT_TID_OFFSET, 1L);
        }
    }

    public Thread(ThreadGroup g10, String name, int characteristics, Runnable task, long stackSize) {
        this.interruptLock = new Object();
        Thread parent = currentThread();
        boolean attached = parent == this;
        if (attached) {
            if (g10 == null) {
                throw new InternalError("group cannot be null when attaching");
            }
            this.holder = new FieldHolder(g10, task, stackSize, 5, false);
        } else {
            g10 = g10 == null ? parent.getThreadGroup() : g10;
            int priority = Math.min(parent.getPriority(), g10.getMaxPriority());
            this.holder = new FieldHolder(g10, task, stackSize, priority, parent.isDaemon());
        }
        if (attached && VM.initLevel() < 1) {
            this.tid = 3L;
        } else {
            this.tid = ThreadIdentifiers.next();
        }
        this.name = name != null ? name : genThreadName();
        if (!attached) {
            if ((characteristics & 4) == 0) {
                ThreadLocal.ThreadLocalMap parentMap = parent.inheritableThreadLocals;
                if (parentMap != null && parentMap.size() > 0) {
                    this.inheritableThreadLocals = ThreadLocal.createInheritedMap(parentMap);
                }
                if (VM.isBooted()) {
                    this.contextClassLoader = parent.getContextClassLoader();
                }
            } else if (VM.isBooted()) {
                this.contextClassLoader = ClassLoader.getSystemClassLoader();
            }
        }
        this.scopedValueBindings = NEW_THREAD_BINDINGS;
    }

    public Thread(String name, int characteristics, boolean bound) {
        this.interruptLock = new Object();
        this.tid = ThreadIdentifiers.next();
        this.name = name != null ? name : "";
        if ((characteristics & 4) == 0) {
            Thread parent = currentThread();
            ThreadLocal.ThreadLocalMap parentMap = parent.inheritableThreadLocals;
            if (parentMap != null && parentMap.size() > 0) {
                this.inheritableThreadLocals = ThreadLocal.createInheritedMap(parentMap);
            }
            this.contextClassLoader = parent.getContextClassLoader();
        } else {
            this.contextClassLoader = ClassLoader.getSystemClassLoader();
        }
        this.scopedValueBindings = NEW_THREAD_BINDINGS;
        if (bound) {
            ThreadGroup g10 = Constants.VTHREAD_GROUP;
            this.holder = new FieldHolder(g10, null, -1L, 5, true);
        } else {
            this.holder = null;
        }
    }

    public static Builder.OfPlatform ofPlatform() {
        return new ThreadBuilders.PlatformThreadBuilder();
    }

    public static Builder.OfVirtual ofVirtual() {
        return new ThreadBuilders.VirtualThreadBuilder();
    }

    public interface Builder {

        public interface OfVirtual extends Builder {
            @Override
            OfVirtual name(String str);

            @Override
            OfVirtual name(String str, long j10);

            @Override
            OfVirtual inheritInheritableThreadLocals(boolean z10);

            @Override
            OfVirtual uncaughtExceptionHandler(UncaughtExceptionHandler uncaughtExceptionHandler);
        }

        Builder name(String str);

        Builder name(String str, long j10);

        Builder inheritInheritableThreadLocals(boolean z10);

        Builder uncaughtExceptionHandler(UncaughtExceptionHandler uncaughtExceptionHandler);

        Thread unstarted(Runnable runnable);

        Thread start(Runnable runnable);

        ThreadFactory factory();

        public interface OfPlatform extends Builder {
            @Override
            OfPlatform name(String str);

            @Override
            OfPlatform name(String str, long j10);

            @Override
            OfPlatform inheritInheritableThreadLocals(boolean z10);

            @Override
            OfPlatform uncaughtExceptionHandler(UncaughtExceptionHandler uncaughtExceptionHandler);

            OfPlatform group(ThreadGroup threadGroup);

            OfPlatform daemon(boolean z10);

            OfPlatform priority(int i10);

            OfPlatform stackSize(long j10);

            default OfPlatform daemon() {
                return daemon(true);
            }
        }
    }

    protected Object clone() throws CloneNotSupportedException {
        throw new CloneNotSupportedException();
    }

    public static class ThreadNumbering {

        private static final Unsafe f92800U = Unsafe.getUnsafe();
        private static final Object NEXT_BASE;
        private static final long NEXT_OFFSET;
        private static volatile int next;

        private ThreadNumbering() {
        }

        static {
            try {
                Field nextField = ThreadNumbering.class.getDeclaredField("next");
                NEXT_BASE = f92800U.staticFieldBase(nextField);
                NEXT_OFFSET = f92800U.staticFieldOffset(nextField);
            } catch (NoSuchFieldException e10) {
                throw new ExceptionInInitializerError(e10);
            }
        }

        static int next() {
            return f92800U.getAndAddInt(NEXT_BASE, NEXT_OFFSET, 1);
        }
    }

    public static String genThreadName() {
        return "Thread-" + ThreadNumbering.next();
    }

    private static String checkName(String name) {
        if (name == null) {
            throw new NullPointerException("'name' is null");
        }
        return name;
    }

    public Thread() {
        this((ThreadGroup) null, (String) null, 0, (Runnable) null, 0L);
    }

    public Thread(Runnable task) {
        this((ThreadGroup) null, (String) null, 0, task, 0L);
    }

    public Thread(ThreadGroup group, Runnable task) {
        this(group, (String) null, 0, task, 0L);
    }

    public Thread(String name) {
        this((ThreadGroup) null, checkName(name), 0, (Runnable) null, 0L);
    }

    public Thread(ThreadGroup group, String name) {
        this(group, checkName(name), 0, (Runnable) null, 0L);
    }

    public Thread(Runnable task, String name) {
        this((ThreadGroup) null, checkName(name), 0, task, 0L);
    }

    public Thread(ThreadGroup group, Runnable task, String name) {
        this(group, checkName(name), 0, task, 0L);
    }

    public Thread(ThreadGroup group, Runnable task, String name, long stackSize) {
        this(group, checkName(name), 0, task, stackSize);
    }

    public Thread(ThreadGroup group, Runnable task, String name, long stackSize, boolean inheritInheritableThreadLocals) {
        this(group, checkName(name), inheritInheritableThreadLocals ? 0 : 4, task, stackSize);
    }

    public static Thread startVirtualThread(Runnable task) {
        Objects.requireNonNull(task);
        Thread thread = ThreadBuilders.newVirtualThread(null, null, 0, task);
        thread.start();
        return thread;
    }

    public final boolean isVirtual() {
        return this instanceof BaseVirtualThread;
    }

    public void start() {
        synchronized (this) {
            if (this.holder.threadStatus != 0) {
                throw new IllegalThreadStateException();
            }
            start0();
        }
    }

    public void start(ThreadContainer container) {
        synchronized (this) {
            if (this.holder.threadStatus != 0) {
                throw new IllegalThreadStateException();
            }
            if (this.container != null) {
                throw new IllegalThreadStateException();
            }
            setThreadContainer(container);
            boolean started = false;
            container.add(this);
            try {
                inheritScopedValueBindings(container);
                start0();
                started = true;
                if (1 == 0) {
                    container.remove(this);
                }
            } catch (Throwable th2) {
                if (!started) {
                    container.remove(this);
                }
                throw th2;
            }
        }
    }

    @Override
    public void run() {
        Runnable task = this.holder.task;
        if (task != null) {
            Object bindings = scopedValueBindings();
            runWith(bindings, task);
        }
    }

    @Hidden
    @ForceInline
    public final void runWith(Object bindings, Runnable op) {
        ensureMaterializedForStackWalk(bindings);
        op.run();
        Reference.reachabilityFence(bindings);
    }

    public void clearReferences() {
        this.threadLocals = null;
        this.inheritableThreadLocals = null;
        if (this.uncaughtExceptionHandler != null) {
            this.uncaughtExceptionHandler = null;
        }
        if (this.nioBlocker != null) {
            this.nioBlocker = null;
        }
    }

    private void exit() {
        try {
            if (this.headStackableScopes != null) {
                StackableScope.popAll();
            }
            try {
                if (terminatingThreadLocals() != null) {
                    TerminatingThreadLocal.threadTerminated();
                }
            } finally {
                clearReferences();
            }
        } finally {
            ThreadContainer container = threadContainer();
            if (container != null) {
                container.remove(this);
            }
        }
    }

    @Deprecated(since = "1.2", forRemoval = true)
    public final void stop() {
        throw new UnsupportedOperationException();
    }

    public void interrupt() {
        Interruptible blocker;
        this.interrupted = true;
        interrupt0();
        if (this != currentThread()) {
            synchronized (this.interruptLock) {
                blocker = this.nioBlocker;
                if (blocker != null) {
                    blocker.interrupt(this);
                }
            }
            if (blocker != null) {
                blocker.postInterrupt();
            }
        }
    }

    public static boolean interrupted() {
        return currentThread().getAndClearInterrupt();
    }

    public boolean isInterrupted() {
        return this.interrupted;
    }

    public final void setInterrupt() {
        if (!this.interrupted) {
            this.interrupted = true;
            interrupt0();
        }
    }

    public final void clearInterrupt() {
        if (this.interrupted) {
            this.interrupted = false;
            clearInterruptEvent();
        }
    }

    boolean getAndClearInterrupt() {
        boolean oldValue = this.interrupted;
        if (oldValue) {
            this.interrupted = false;
            clearInterruptEvent();
        }
        return oldValue;
    }

    public final boolean isAlive() {
        return alive();
    }

    boolean alive() {
        return this.eetop != 0;
    }

    public final void setPriority(int newPriority) {
        if (newPriority > 10 || newPriority < 1) {
            throw new IllegalArgumentException();
        }
        if (!isVirtual()) {
            priority(newPriority);
        }
    }

    public void priority(int newPriority) {
        ThreadGroup g10 = this.holder.group;
        if (g10 != null) {
            int maxPriority = g10.getMaxPriority();
            if (newPriority > maxPriority) {
                newPriority = maxPriority;
            }
            int i10 = newPriority;
            this.holder.priority = i10;
            setPriority0(i10);
        }
    }

    public final int getPriority() {
        if (isVirtual()) {
            return 5;
        }
        return this.holder.priority;
    }

    public final synchronized void setName(String name) {
        if (name == null) {
            throw new NullPointerException("name cannot be null");
        }
        this.name = name;
        if (!isVirtual() && currentThread() == this) {
            setNativeName(name);
        }
    }

    public final String getName() {
        return this.name;
    }

    public final ThreadGroup getThreadGroup() {
        if (isTerminated()) {
            return null;
        }
        return isVirtual() ? virtualThreadGroup() : this.holder.group;
    }

    public static int activeCount() {
        return currentThread().getThreadGroup().activeCount();
    }

    public static int enumerate(Thread[] tarray) {
        return currentThread().getThreadGroup().enumerate(tarray);
    }

    public final void join(long millis) throws InterruptedException {
        long millis2;
        if (millis < 0) {
            throw new IllegalArgumentException("timeout value is negative");
        }
        if (this instanceof VirtualThread) {
            VirtualThread vthread = (VirtualThread) this;
            if (isAlive()) {
                long nanos = TimeUnit.MILLISECONDS.toNanos(millis);
                vthread.joinNanos(nanos);
                return;
            }
            return;
        }
        synchronized (this) {
            if (millis > 0) {
                if (isAlive()) {
                    long startTime = System.nanoTime();
                    long delay = millis;
                    do {
                        wait(delay);
                        if (!isAlive()) {
                            break;
                        }
                        millis2 = millis - TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - startTime);
                        delay = millis2;
                    } while (millis2 > 0);
                }
            } else {
                while (isAlive()) {
                    wait(0L);
                }
            }
        }
    }

    public final void join(long millis, int nanos) throws InterruptedException {
        if (millis < 0) {
            throw new IllegalArgumentException("timeout value is negative");
        }
        if (nanos < 0 || nanos > 999999) {
            throw new IllegalArgumentException("nanosecond timeout value out of range");
        }
        if (this instanceof VirtualThread) {
            VirtualThread vthread = (VirtualThread) this;
            if (isAlive()) {
                long totalNanos = TimeUnit.MILLISECONDS.toNanos(millis);
                vthread.joinNanos(totalNanos + Math.min(Long.MAX_VALUE - totalNanos, nanos));
                return;
            }
            return;
        }
        if (nanos > 0 && millis < Long.MAX_VALUE) {
            millis++;
        }
        join(millis);
    }

    public final void join() throws InterruptedException {
        join(0L);
    }

    public final boolean join(Duration duration) throws InterruptedException {
        long nanos = TimeUnit.NANOSECONDS.convert(duration);
        State state = threadState();
        if (state == State.NEW) {
            throw new IllegalThreadStateException("Thread not started");
        }
        if (state == State.TERMINATED) {
            return true;
        }
        if (nanos <= 0) {
            return false;
        }
        if (this instanceof VirtualThread) {
            VirtualThread vthread = (VirtualThread) this;
            return vthread.joinNanos(nanos);
        }
        long millis = TimeUnit.MILLISECONDS.convert(nanos, TimeUnit.NANOSECONDS);
        if (nanos > TimeUnit.NANOSECONDS.convert(millis, TimeUnit.MILLISECONDS)) {
            millis++;
        }
        join(millis);
        return isTerminated();
    }

    public static void dumpStack() {
        new Exception("Stack trace").printStackTrace();
    }

    public final void setDaemon(boolean on2) {
        if (isVirtual() && !on2) {
            throw new IllegalArgumentException("'false' not legal for virtual threads");
        }
        if (isAlive()) {
            throw new IllegalThreadStateException();
        }
        if (!isVirtual()) {
            daemon(on2);
        }
    }

    public void daemon(boolean on2) {
        this.holder.daemon = on2;
    }

    public final boolean isDaemon() {
        if (isVirtual()) {
            return true;
        }
        return this.holder.daemon;
    }

    @Deprecated(since = "17", forRemoval = true)
    public final void checkAccess() {
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("Thread[#");
        sb2.append(threadId());
        sb2.append(DocLint.SEPARATOR);
        sb2.append(getName());
        sb2.append(DocLint.SEPARATOR);
        sb2.append(getPriority());
        sb2.append(DocLint.SEPARATOR);
        ThreadGroup group = getThreadGroup();
        if (group != null) {
            sb2.append(group.getName());
        }
        sb2.append("]");
        return sb2.toString();
    }

    public ClassLoader getContextClassLoader() {
        return this.contextClassLoader;
    }

    public void setContextClassLoader(ClassLoader cl2) {
        this.contextClassLoader = cl2;
    }

    public StackTraceElement[] getStackTrace() {
        if (this != currentThread()) {
            if (!isAlive()) {
                return EMPTY_STACK_TRACE;
            }
            StackTraceElement[] stackTrace = asyncGetStackTrace();
            return stackTrace != null ? stackTrace : EMPTY_STACK_TRACE;
        }
        return new Exception().getStackTrace();
    }

    public StackTraceElement[] asyncGetStackTrace() {
        Object stackTrace = getStackTrace0();
        if (stackTrace == null) {
            return null;
        }
        StackTraceElement[] stes = (StackTraceElement[]) stackTrace;
        if (stes.length == 0) {
            return null;
        }
        return StackTraceElement.of(stes);
    }

    public static Map<Thread, StackTraceElement[]> getAllStackTraces() {
        Thread[] threads = getThreads();
        StackTraceElement[][] traces = dumpThreads(threads);
        Map<Thread, StackTraceElement[]> m10 = HashMap.newHashMap(threads.length);
        for (int i10 = 0; i10 < threads.length; i10++) {
            StackTraceElement[] stackTrace = traces[i10];
            if (stackTrace != null) {
                m10.put(threads[i10], stackTrace);
            }
        }
        return m10;
    }

    public static Thread[] getAllThreads() {
        return getThreads();
    }

    @Deprecated(since = "19")
    public long getId() {
        return threadId();
    }

    public final long threadId() {
        return this.tid;
    }

    public State getState() {
        return threadState();
    }

    public State threadState() {
        return VM.toThreadState(this.holder.threadStatus);
    }

    boolean isTerminated() {
        return threadState() == State.TERMINATED;
    }

    public static void setDefaultUncaughtExceptionHandler(UncaughtExceptionHandler ueh) {
        defaultUncaughtExceptionHandler = ueh;
    }

    public static UncaughtExceptionHandler getDefaultUncaughtExceptionHandler() {
        return defaultUncaughtExceptionHandler;
    }

    public UncaughtExceptionHandler getUncaughtExceptionHandler() {
        if (isTerminated()) {
            return null;
        }
        UncaughtExceptionHandler ueh = this.uncaughtExceptionHandler;
        return ueh != null ? ueh : getThreadGroup();
    }

    public void setUncaughtExceptionHandler(UncaughtExceptionHandler ueh) {
        uncaughtExceptionHandler(ueh);
    }

    public void uncaughtExceptionHandler(UncaughtExceptionHandler ueh) {
        this.uncaughtExceptionHandler = ueh;
    }

    public void dispatchUncaughtException(Throwable e10) {
        getUncaughtExceptionHandler().uncaughtException(this, e10);
    }

    public static class Constants {
        static final ThreadGroup VTHREAD_GROUP;

        private Constants() {
        }

        static {
            ThreadGroup threadGroup = Thread.currentCarrierThread().getThreadGroup();
            while (true) {
                ThreadGroup root = threadGroup;
                ThreadGroup p10 = root.getParent();
                if (p10 != null) {
                    threadGroup = p10;
                } else {
                    VTHREAD_GROUP = new ThreadGroup(root, "VirtualThreads", 10, false);
                    return;
                }
            }
        }
    }

    public static ThreadGroup virtualThreadGroup() {
        return Constants.VTHREAD_GROUP;
    }

    public ThreadContainer threadContainer() {
        return this.container;
    }

    public void setThreadContainer(ThreadContainer container) {
        this.container = container;
    }

    public StackableScope headStackableScopes() {
        return this.headStackableScopes;
    }

    public static void setHeadStackableScope(StackableScope scope) {
        currentThread().headStackableScopes = scope;
    }
}
