package java.lang;

import java.lang.ProcessHandle;
import java.time.Duration;
import java.time.Instant;
import java.util.Arrays;
import java.util.Optional;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadLocalRandom;
import java.util.stream.IntStream;
import java.util.stream.Stream;
import jdk.internal.ValueBased;
import jdk.internal.misc.InnocuousThread;
import org.eclipse.jdt.internal.core.JavaElement;

@ValueBased
final class ProcessHandleImpl implements ProcessHandle {
    private static final long REAPER_DEFAULT_STACKSIZE = 131072;
    private static final int NOT_A_CHILD = -2;
    private static final ProcessHandleImpl current;
    private static final ConcurrentMap<Long, ExitCompletion> completions = new ConcurrentHashMap();
    private static final Executor processReaperExecutor;
    private final long pid;
    private final long startTime;
    private static final long STARTTIME_ANY = 0;
    private static final long STARTTIME_PROCESS_UNKNOWN = -1;

    private static native void initNative();

    private static native int waitForProcessExit0(long j10, boolean z10);

    private static native long getCurrentPid0();

    private static native long parent0(long j10, long j11);

    private static native int getProcessPids0(long j10, long[] jArr, long[] jArr2, long[] jArr3);

    private static native boolean destroy0(long j10, long j11, boolean z10);

    private static native long isAlive0(long j10);

    static {
        initNative();
        long pid = getCurrentPid0();
        current = new ProcessHandleImpl(pid, isAlive0(pid));
        processReaperExecutor = initReaper();
    }

    private static Executor initReaper() {
        ThreadLocalRandom.current();
        int debugDelta = "release".equals(System.getProperty("jdk.debug")) ? 0 : 16384;
        long stackSize = Boolean.getBoolean("jdk.lang.processReaperUseDefaultStackSize") ? 0L : 131072 + debugDelta;
        ThreadFactory threadFactory = grimReaper -> {
            Thread t10 = InnocuousThread.newSystemThread("process reaper", grimReaper, stackSize, 10);
            t10.setDaemon(true);
            return t10;
        };
        return Executors.newCachedThreadPool(threadFactory);
    }

    public static class ExitCompletion extends CompletableFuture<Integer> {
        final boolean isReaping;

        ExitCompletion(boolean isReaping) {
            this.isReaping = isReaping;
        }
    }

    public static CompletableFuture<Integer> completion(final long pid, final boolean shouldReap) {
        ExitCompletion completion = completions.get(Long.valueOf(pid));
        while (true) {
            if (completion == null || (shouldReap && !completion.isReaping)) {
                final ExitCompletion newCompletion = new ExitCompletion(shouldReap);
                if (completion == null) {
                    completion = completions.putIfAbsent(Long.valueOf(pid), newCompletion);
                } else {
                    completion = completions.replace(Long.valueOf(pid), completion, newCompletion) ? null : completions.get(Long.valueOf(pid));
                }
                if (completion == null) {
                    completion = newCompletion;
                    processReaperExecutor.execute(new Runnable() {
                        @Override
                        public void run() {
                            Thread t10 = Thread.currentThread();
                            String threadName = t10.getName();
                            t10.setName("process reaper (pid " + pid + ")");
                            try {
                                int exitValue = ProcessHandleImpl.waitForProcessExit0(pid, shouldReap);
                                if (exitValue == -2) {
                                    long sleep = 300;
                                    long startTime = ProcessHandleImpl.isAlive0(pid);
                                    while (startTime >= 0) {
                                        try {
                                            Thread.sleep(Math.min(sleep, 5000L));
                                            sleep += 30;
                                        } catch (InterruptedException e10) {
                                        }
                                        startTime = ProcessHandleImpl.isAlive0(pid);
                                        if (startTime > 0 && startTime > 0 && startTime != startTime) {
                                            break;
                                        }
                                    }
                                    exitValue = 0;
                                }
                                newCompletion.complete(Integer.valueOf(exitValue));
                                ProcessHandleImpl.completions.remove(Long.valueOf(pid), newCompletion);
                                t10.setName(threadName);
                            } catch (Throwable th2) {
                                t10.setName(threadName);
                                throw th2;
                            }
                        }
                    });
                }
            }
        }
        return completion;
    }

    @Override
    public CompletableFuture<ProcessHandle> onExit() {
        if (equals(current)) {
            throw new IllegalStateException("onExit for current process not allowed");
        }
        return completion(pid(), false).handleAsync((exitStatus, unusedThrowable) -> {
            return this;
        });
    }

    private ProcessHandleImpl(long pid, long startTime) {
        this.pid = pid;
        this.startTime = startTime;
    }

    public static Optional<ProcessHandle> get(long pid) {
        long start = isAlive0(pid);
        if (start >= 0) {
            return Optional.of(new ProcessHandleImpl(pid, start));
        }
        return Optional.empty();
    }

    public static ProcessHandleImpl getInternal(long pid) {
        return new ProcessHandleImpl(pid, isAlive0(pid));
    }

    @Override
    public long pid() {
        return this.pid;
    }

    public static ProcessHandleImpl current() {
        return current;
    }

    @Override
    public Optional<ProcessHandle> parent() {
        long ppid = parent0(this.pid, this.startTime);
        if (ppid <= 0) {
            return Optional.empty();
        }
        return get(ppid);
    }

    public boolean destroyProcess(boolean force) {
        if (equals(current)) {
            throw new IllegalStateException("destroy of current process not allowed");
        }
        return destroy0(this.pid, this.startTime, force);
    }

    @Override
    public boolean destroy() {
        return destroyProcess(false);
    }

    @Override
    public boolean destroyForcibly() {
        return destroyProcess(true);
    }

    @Override
    public boolean supportsNormalTermination() {
        return true;
    }

    @Override
    public boolean isAlive() {
        long start = isAlive0(this.pid);
        return start >= 0 && (start == this.startTime || start == 0 || this.startTime == 0);
    }

    @Override
    public Stream<ProcessHandle> children() {
        return children(this.pid).filter(ph2 -> {
            return this.startTime <= ((ProcessHandleImpl) ph2).startTime;
        });
    }

    public static Stream<ProcessHandle> children(long pid) {
        int size = 100;
        long[] childpids = null;
        long[] starttimes = null;
        while (true) {
            if (childpids == null || size > childpids.length) {
                childpids = new long[size];
                starttimes = new long[size];
                size = getProcessPids0(pid, childpids, null, starttimes);
            } else {
                long[] cpids = childpids;
                long[] stimes = starttimes;
                return IntStream.range(0, size).mapToObj(i10 -> {
                    return new ProcessHandleImpl(cpids[i10], stimes[i10]);
                });
            }
        }
    }

    @Override
    public Stream<ProcessHandle> descendants() {
        int size = 100;
        long[] pids = null;
        long[] ppids = null;
        long[] starttimes = null;
        while (true) {
            if (pids != null && size <= pids.length) {
                break;
            }
            pids = new long[size];
            ppids = new long[size];
            starttimes = new long[size];
            size = getProcessPids0(0L, pids, ppids, starttimes);
        }
        int next = 0;
        int count = -1;
        long ppid = this.pid;
        long ppStart = 0;
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                break;
            }
            if (pids[i10] != ppid) {
                i10++;
            } else {
                ppStart = starttimes[i10];
                break;
            }
        }
        do {
            for (int i11 = next; i11 < size; i11++) {
                if (ppids[i11] == ppid && ppStart <= starttimes[i11]) {
                    swap(pids, i11, next);
                    swap(ppids, i11, next);
                    swap(starttimes, i11, next);
                    next++;
                }
            }
            count++;
            ppid = pids[count];
            ppStart = starttimes[count];
        } while (count < next);
        long[] cpids = pids;
        long[] stimes = starttimes;
        return IntStream.range(0, count).mapToObj(i12 -> {
            return new ProcessHandleImpl(cpids[i12], stimes[i12]);
        });
    }

    private static void swap(long[] array, int x10, int y10) {
        long v10 = array[x10];
        array[x10] = array[y10];
        array[y10] = v10;
    }

    @Override
    public ProcessHandle.Info info() {
        return Info.info(this.pid, this.startTime);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public int compareTo(ProcessHandle other) {
        return Long.compare(this.pid, ((ProcessHandleImpl) other).pid);
    }

    public String toString() {
        return Long.toString(this.pid);
    }

    @Override
    public int hashCode() {
        return Long.hashCode(this.pid);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ProcessHandleImpl) {
            ProcessHandleImpl other = (ProcessHandleImpl) obj;
            if (this.pid == other.pid && (this.startTime == other.startTime || this.startTime == 0 || other.startTime == 0)) {
                return true;
            }
        }
        return false;
    }

    static class Info implements ProcessHandle.Info {
        String command = null;
        String commandLine = null;
        String[] arguments = null;
        long startTime = -1;
        long totalTime = -1;
        String user = null;

        private static native void initIDs();

        private native void info0(long j10);

        static {
            initIDs();
        }

        Info() {
        }

        public static ProcessHandle.Info info(long pid, long startTime) {
            Info info = new Info();
            info.info0(pid);
            if (startTime != info.startTime) {
                info.command = null;
                info.arguments = null;
                info.startTime = -1L;
                info.totalTime = -1L;
                info.user = null;
            }
            return info;
        }

        @Override
        public Optional<String> command() {
            return Optional.ofNullable(this.command);
        }

        @Override
        public Optional<String> commandLine() {
            if (this.command != null && this.arguments != null) {
                return Optional.of(this.command + " " + String.join(" ", this.arguments));
            }
            return Optional.ofNullable(this.commandLine);
        }

        @Override
        public Optional<String[]> arguments() {
            return Optional.ofNullable(this.arguments);
        }

        @Override
        public Optional<Instant> startInstant() {
            if (this.startTime > 0) {
                return Optional.of(Instant.ofEpochMilli(this.startTime));
            }
            return Optional.empty();
        }

        @Override
        public Optional<Duration> totalCpuDuration() {
            if (this.totalTime != -1) {
                return Optional.of(Duration.ofNanos(this.totalTime));
            }
            return Optional.empty();
        }

        @Override
        public Optional<String> user() {
            return Optional.ofNullable(this.user);
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder(60);
            sb2.append('[');
            if (this.user != null) {
                sb2.append("user: ");
                sb2.append((Object) user());
            }
            if (this.command != null) {
                if (sb2.length() > 1) {
                    sb2.append(", ");
                }
                sb2.append("cmd: ");
                sb2.append(this.command);
            }
            if (this.arguments != null && this.arguments.length > 0) {
                if (sb2.length() > 1) {
                    sb2.append(", ");
                }
                sb2.append("args: ");
                sb2.append(Arrays.toString(this.arguments));
            }
            if (this.commandLine != null) {
                if (sb2.length() > 1) {
                    sb2.append(", ");
                }
                sb2.append("cmdLine: ");
                sb2.append(this.commandLine);
            }
            if (this.startTime > 0) {
                if (sb2.length() > 1) {
                    sb2.append(", ");
                }
                sb2.append("startTime: ");
                sb2.append((Object) startInstant());
            }
            if (this.totalTime != -1) {
                if (sb2.length() > 1) {
                    sb2.append(", ");
                }
                sb2.append("totalTime: ");
                sb2.append(totalCpuDuration().toString());
            }
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
            return sb2.toString();
        }
    }
}
