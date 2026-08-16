package java.lang;

import java.lang.Thread;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.VarHandle;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadFactory;
import jdk.internal.invoke.MhUtil;
import jdk.internal.misc.Unsafe;
import jdk.internal.vm.ContinuationSupport;
import oc.c;
import org.openjdk.tools.doclint.DocLint;

public class ThreadBuilders {
    private ThreadBuilders() {
    }

    public static class BaseThreadBuilder {
        private String name;
        private long counter;
        private int characteristics;
        private Thread.UncaughtExceptionHandler uhe;

        private BaseThreadBuilder() {
        }

        String name() {
            return this.name;
        }

        long counter() {
            return this.counter;
        }

        int characteristics() {
            return this.characteristics;
        }

        Thread.UncaughtExceptionHandler uncaughtExceptionHandler() {
            return this.uhe;
        }

        String nextThreadName() {
            if (this.name != null && this.counter >= 0) {
                StringBuilder append = new StringBuilder().append(this.name);
                long j10 = this.counter;
                this.counter = j10 + 1;
                return append.append(j10).toString();
            }
            return this.name;
        }

        void setName(String name) {
            this.name = (String) Objects.requireNonNull(name);
            this.counter = -1L;
        }

        void setName(String prefix, long start) {
            Objects.requireNonNull(prefix);
            if (start < 0) {
                throw new IllegalArgumentException("'start' is negative");
            }
            this.name = prefix;
            this.counter = start;
        }

        void setInheritInheritableThreadLocals(boolean inherit) {
            if (inherit) {
                this.characteristics &= -5;
            } else {
                this.characteristics |= 4;
            }
        }

        void setUncaughtExceptionHandler(Thread.UncaughtExceptionHandler ueh) {
            this.uhe = (Thread.UncaughtExceptionHandler) Objects.requireNonNull(ueh);
        }
    }

    static final class PlatformThreadBuilder extends BaseThreadBuilder implements Thread.Builder.OfPlatform {
        private ThreadGroup group;
        private boolean daemon;
        private boolean daemonChanged;
        private int priority;
        private long stackSize;

        @Override
        String nextThreadName() {
            String name = super.nextThreadName();
            return name != null ? name : Thread.genThreadName();
        }

        @Override
        public Thread.Builder.OfPlatform name(String name) {
            setName(name);
            return this;
        }

        @Override
        public Thread.Builder.OfPlatform name(String prefix, long start) {
            setName(prefix, start);
            return this;
        }

        @Override
        public Thread.Builder.OfPlatform inheritInheritableThreadLocals(boolean inherit) {
            setInheritInheritableThreadLocals(inherit);
            return this;
        }

        @Override
        public Thread.Builder.OfPlatform uncaughtExceptionHandler(Thread.UncaughtExceptionHandler ueh) {
            setUncaughtExceptionHandler(ueh);
            return this;
        }

        @Override
        public Thread.Builder.OfPlatform group(ThreadGroup group) {
            this.group = (ThreadGroup) Objects.requireNonNull(group);
            return this;
        }

        @Override
        public Thread.Builder.OfPlatform daemon(boolean on2) {
            this.daemon = on2;
            this.daemonChanged = true;
            return this;
        }

        @Override
        public Thread.Builder.OfPlatform priority(int priority) {
            if (priority < 1 || priority > 10) {
                throw new IllegalArgumentException();
            }
            this.priority = priority;
            return this;
        }

        @Override
        public Thread.Builder.OfPlatform stackSize(long stackSize) {
            if (stackSize < 0) {
                throw new IllegalArgumentException();
            }
            this.stackSize = stackSize;
            return this;
        }

        @Override
        public Thread unstarted(Runnable task) {
            Objects.requireNonNull(task);
            String name = nextThreadName();
            Thread thread = new Thread(this.group, name, characteristics(), task, this.stackSize);
            if (this.daemonChanged) {
                thread.daemon(this.daemon);
            }
            if (this.priority != 0) {
                thread.priority(this.priority);
            }
            Thread.UncaughtExceptionHandler uhe = uncaughtExceptionHandler();
            if (uhe != null) {
                thread.uncaughtExceptionHandler(uhe);
            }
            return thread;
        }

        @Override
        public Thread start(Runnable task) {
            Thread thread = unstarted(task);
            thread.start();
            return thread;
        }

        @Override
        public ThreadFactory factory() {
            return new PlatformThreadFactory(this.group, name(), counter(), characteristics(), this.daemonChanged, this.daemon, this.priority, this.stackSize, uncaughtExceptionHandler());
        }
    }

    static final class VirtualThreadBuilder extends BaseThreadBuilder implements Thread.Builder.OfVirtual {
        private Executor scheduler;

        public VirtualThreadBuilder() {
        }

        VirtualThreadBuilder(Executor scheduler) {
            if (!ContinuationSupport.isSupported()) {
                throw new UnsupportedOperationException();
            }
            this.scheduler = (Executor) Objects.requireNonNull(scheduler);
        }

        @Override
        public Thread.Builder.OfVirtual name(String name) {
            setName(name);
            return this;
        }

        @Override
        public Thread.Builder.OfVirtual name(String prefix, long start) {
            setName(prefix, start);
            return this;
        }

        @Override
        public Thread.Builder.OfVirtual inheritInheritableThreadLocals(boolean inherit) {
            setInheritInheritableThreadLocals(inherit);
            return this;
        }

        @Override
        public Thread.Builder.OfVirtual uncaughtExceptionHandler(Thread.UncaughtExceptionHandler ueh) {
            setUncaughtExceptionHandler(ueh);
            return this;
        }

        @Override
        public Thread unstarted(Runnable task) {
            Objects.requireNonNull(task);
            Thread thread = ThreadBuilders.newVirtualThread(this.scheduler, nextThreadName(), characteristics(), task);
            Thread.UncaughtExceptionHandler uhe = uncaughtExceptionHandler();
            if (uhe != null) {
                thread.uncaughtExceptionHandler(uhe);
            }
            return thread;
        }

        @Override
        public Thread start(Runnable task) {
            Thread thread = unstarted(task);
            thread.start();
            return thread;
        }

        @Override
        public ThreadFactory factory() {
            return new VirtualThreadFactory(this.scheduler, name(), counter(), characteristics(), uncaughtExceptionHandler());
        }
    }

    public static abstract class BaseThreadFactory implements ThreadFactory {
        private static final VarHandle COUNT = MhUtil.findVarHandle(MethodHandles.lookup(), c.f98682m, Long.TYPE);
        private final String name;
        private final int characteristics;
        private final Thread.UncaughtExceptionHandler uhe;
        private final boolean hasCounter;
        private volatile long count;

        BaseThreadFactory(String name, long start, int characteristics, Thread.UncaughtExceptionHandler uhe) {
            this.name = name;
            if (name != null && start >= 0) {
                this.hasCounter = true;
                this.count = start;
            } else {
                this.hasCounter = false;
            }
            this.characteristics = characteristics;
            this.uhe = uhe;
        }

        int characteristics() {
            return this.characteristics;
        }

        Thread.UncaughtExceptionHandler uncaughtExceptionHandler() {
            return this.uhe;
        }

        String nextThreadName() {
            if (this.hasCounter) {
                return this.name + COUNT.getAndAdd(this, 1);
            }
            return this.name;
        }
    }

    private static class PlatformThreadFactory extends BaseThreadFactory {
        private final ThreadGroup group;
        private final boolean daemonChanged;
        private final boolean daemon;
        private final int priority;
        private final long stackSize;

        PlatformThreadFactory(ThreadGroup group, String name, long start, int characteristics, boolean daemonChanged, boolean daemon, int priority, long stackSize, Thread.UncaughtExceptionHandler uhe) {
            super(name, start, characteristics, uhe);
            this.group = group;
            this.daemonChanged = daemonChanged;
            this.daemon = daemon;
            this.priority = priority;
            this.stackSize = stackSize;
        }

        @Override
        String nextThreadName() {
            String name = super.nextThreadName();
            return name != null ? name : Thread.genThreadName();
        }

        @Override
        public Thread newThread(Runnable task) {
            Objects.requireNonNull(task);
            String name = nextThreadName();
            Thread thread = new Thread(this.group, name, characteristics(), task, this.stackSize);
            if (this.daemonChanged) {
                thread.daemon(this.daemon);
            }
            if (this.priority != 0) {
                thread.priority(this.priority);
            }
            Thread.UncaughtExceptionHandler uhe = uncaughtExceptionHandler();
            if (uhe != null) {
                thread.uncaughtExceptionHandler(uhe);
            }
            return thread;
        }
    }

    private static class VirtualThreadFactory extends BaseThreadFactory {
        private final Executor scheduler;

        VirtualThreadFactory(Executor scheduler, String name, long start, int characteristics, Thread.UncaughtExceptionHandler uhe) {
            super(name, start, characteristics, uhe);
            this.scheduler = scheduler;
        }

        @Override
        public Thread newThread(Runnable task) {
            Objects.requireNonNull(task);
            String name = nextThreadName();
            Thread thread = ThreadBuilders.newVirtualThread(this.scheduler, name, characteristics(), task);
            Thread.UncaughtExceptionHandler uhe = uncaughtExceptionHandler();
            if (uhe != null) {
                thread.uncaughtExceptionHandler(uhe);
            }
            return thread;
        }
    }

    public static Thread newVirtualThread(Executor scheduler, String name, int characteristics, Runnable task) {
        if (ContinuationSupport.isSupported()) {
            return new VirtualThread(scheduler, name, characteristics, task);
        }
        if (scheduler != null) {
            throw new UnsupportedOperationException();
        }
        return new BoundVirtualThread(name, characteristics, task);
    }

    public static final class BoundVirtualThread extends BaseVirtualThread {

        private static final Unsafe f92801U = Unsafe.getUnsafe();
        private final Runnable task;
        private boolean runInvoked;

        BoundVirtualThread(String name, int characteristics, Runnable task) {
            super(name, characteristics, true);
            this.task = task;
        }

        @Override
        public void run() {
            if (Thread.currentThread() == this && !this.runInvoked) {
                this.runInvoked = true;
                Object bindings = Thread.scopedValueBindings();
                runWith(bindings, this.task);
            }
        }

        @Override
        public void park() {
            f92801U.park(false, 0L);
        }

        @Override
        public void parkNanos(long nanos) {
            f92801U.park(false, nanos);
        }

        @Override
        public void unpark() {
            f92801U.unpark(this);
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder("VirtualThread[#");
            sb2.append(threadId());
            String name = getName();
            if (!name.isEmpty()) {
                sb2.append(DocLint.SEPARATOR);
                sb2.append(name);
            }
            sb2.append("]/");
            String stateAsString = threadState().toString();
            sb2.append(stateAsString.toLowerCase(Locale.ROOT));
            return sb2.toString();
        }
    }
}
