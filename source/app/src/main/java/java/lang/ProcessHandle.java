package java.lang;

import java.time.Duration;
import java.time.Instant;
import java.util.Optional;
import java.util.concurrent.CompletableFuture;
import java.util.stream.Stream;

public interface ProcessHandle extends Comparable<ProcessHandle> {

    public interface Info {
        Optional<String> command();

        Optional<String> commandLine();

        Optional<String[]> arguments();

        Optional<Instant> startInstant();

        Optional<Duration> totalCpuDuration();

        Optional<String> user();
    }

    long pid();

    Optional<ProcessHandle> parent();

    Stream<ProcessHandle> children();

    Stream<ProcessHandle> descendants();

    Info info();

    CompletableFuture<ProcessHandle> onExit();

    boolean supportsNormalTermination();

    boolean destroy();

    boolean destroyForcibly();

    boolean isAlive();

    int hashCode();

    boolean equals(Object obj);

    @Override
    int compareTo(ProcessHandle processHandle);

    static Optional<ProcessHandle> of(long pid) {
        return ProcessHandleImpl.get(pid);
    }

    static ProcessHandle current() {
        return ProcessHandleImpl.current();
    }

    static Stream<ProcessHandle> allProcesses() {
        return ProcessHandleImpl.children(0L);
    }
}
