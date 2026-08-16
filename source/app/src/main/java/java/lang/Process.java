package java.lang;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.lang.ProcessHandle;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.time.Duration;
import java.util.Objects;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import java.util.stream.Stream;
import jdk.internal.misc.Blocker;
import jdk.internal.util.StaticProperty;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Process.class
 */
public abstract class Process {
    private BufferedWriter outputWriter;
    private Charset outputCharset;
    private BufferedReader inputReader;
    private Charset inputCharset;
    private BufferedReader errorReader;
    private Charset errorCharset;

    public abstract OutputStream getOutputStream();

    public abstract InputStream getInputStream();

    public abstract InputStream getErrorStream();

    public abstract int waitFor() throws InterruptedException;

    public abstract int exitValue();

    public abstract void destroy();

    public final BufferedReader inputReader() {
        return inputReader(CharsetHolder.nativeCharset());
    }

    public final BufferedReader inputReader(Charset charset) {
        BufferedReader bufferedReader;
        Objects.requireNonNull(charset, "charset");
        synchronized (this) {
            if (this.inputReader == null) {
                this.inputCharset = charset;
                this.inputReader = new BufferedReader(new InputStreamReader(getInputStream(), charset));
            } else if (!this.inputCharset.equals(charset)) {
                throw new IllegalStateException("BufferedReader was created with charset: " + ((Object) this.inputCharset));
            }
            bufferedReader = this.inputReader;
        }
        return bufferedReader;
    }

    public final BufferedReader errorReader() {
        return errorReader(CharsetHolder.nativeCharset());
    }

    public final BufferedReader errorReader(Charset charset) {
        BufferedReader bufferedReader;
        Objects.requireNonNull(charset, "charset");
        synchronized (this) {
            if (this.errorReader == null) {
                this.errorCharset = charset;
                this.errorReader = new BufferedReader(new InputStreamReader(getErrorStream(), charset));
            } else if (!this.errorCharset.equals(charset)) {
                throw new IllegalStateException("BufferedReader was created with charset: " + ((Object) this.errorCharset));
            }
            bufferedReader = this.errorReader;
        }
        return bufferedReader;
    }

    public final BufferedWriter outputWriter() {
        return outputWriter(CharsetHolder.nativeCharset());
    }

    public final BufferedWriter outputWriter(Charset charset) {
        BufferedWriter bufferedWriter;
        Objects.requireNonNull(charset, "charset");
        synchronized (this) {
            if (this.outputWriter == null) {
                this.outputCharset = charset;
                this.outputWriter = new BufferedWriter(new OutputStreamWriter(getOutputStream(), charset));
            } else if (!this.outputCharset.equals(charset)) {
                throw new IllegalStateException("BufferedWriter was created with charset: " + ((Object) this.outputCharset));
            }
            bufferedWriter = this.outputWriter;
        }
        return bufferedWriter;
    }

    public boolean waitFor(long timeout, TimeUnit unit) throws InterruptedException {
        long remainingNanos = unit.toNanos(timeout);
        if (hasExited()) {
            return true;
        }
        if (timeout <= 0) {
            return false;
        }
        long deadline = System.nanoTime() + remainingNanos;
        do {
            Thread.sleep(Math.min(TimeUnit.NANOSECONDS.toMillis(remainingNanos) + 1, 100L));
            if (hasExited()) {
                return true;
            }
            remainingNanos = deadline - System.nanoTime();
        } while (remainingNanos > 0);
        return false;
    }

    public boolean waitFor(Duration duration) throws InterruptedException {
        Objects.requireNonNull(duration, "duration");
        return waitFor(TimeUnit.NANOSECONDS.convert(duration), TimeUnit.NANOSECONDS);
    }

    public Process destroyForcibly() {
        destroy();
        return this;
    }

    public boolean supportsNormalTermination() {
        throw new UnsupportedOperationException(((Object) getClass()) + ".supportsNormalTermination() not supported");
    }

    public boolean isAlive() {
        return !hasExited();
    }

    private boolean hasExited() {
        try {
            exitValue();
            return true;
        } catch (IllegalThreadStateException e10) {
            return false;
        }
    }

    public long pid() {
        return toHandle().pid();
    }

    public CompletableFuture<Process> onExit() {
        return CompletableFuture.supplyAsync(this::waitForInternal);
    }

    private Process waitForInternal() {
        boolean interrupted;
        boolean z10 = false;
        while (true) {
            try {
                interrupted = z10;
                ForkJoinPool.managedBlock(new ForkJoinPool.ManagedBlocker(this) {
                    final Process this$0;

                    {
                        Objects.requireNonNull(this);
                        this.this$0 = this;
                    }

                    @Override
                    public boolean block() throws InterruptedException {
                        this.this$0.waitFor();
                        return true;
                    }

                    @Override
                    public boolean isReleasable() {
                        return !this.this$0.isAlive();
                    }
                });
                break;
            } catch (InterruptedException e10) {
                z10 = true;
            }
        }
        if (interrupted) {
            Thread.currentThread().interrupt();
        }
        return this;
    }

    public ProcessHandle toHandle() {
        throw new UnsupportedOperationException(((Object) getClass()) + ".toHandle() not supported");
    }

    public ProcessHandle.Info info() {
        return toHandle().info();
    }

    public Stream<ProcessHandle> children() {
        return toHandle().children();
    }

    public Stream<ProcessHandle> descendants() {
        return toHandle().descendants();
    }

    static class PipeInputStream extends FileInputStream {
        public PipeInputStream(FileDescriptor fd2) {
            super(fd2);
        }

        @Override
        public long skip(long n10) throws IOException {
            int nr;
            long remaining = n10;
            if (n10 <= 0) {
                return 0L;
            }
            int size = (int) Math.min(2048L, remaining);
            byte[] skipBuffer = new byte[size];
            while (remaining > 0 && (nr = read(skipBuffer, 0, (int) Math.min(size, remaining))) >= 0) {
                remaining -= nr;
            }
            return n10 - remaining;
        }

        @Override
        public int read() throws IOException {
            boolean attempted = Blocker.begin();
            try {
                return super.read();
            } finally {
                Blocker.end(attempted);
            }
        }

        @Override
        public int read(byte[] b10) throws IOException {
            boolean attempted = Blocker.begin();
            try {
                int read = super.read(b10);
                Blocker.end(attempted);
                return read;
            } catch (Throwable th2) {
                Blocker.end(attempted);
                throw th2;
            }
        }

        @Override
        public int read(byte[] b10, int off, int len) throws IOException {
            boolean attempted = Blocker.begin();
            try {
                int read = super.read(b10, off, len);
                Blocker.end(attempted);
                return read;
            } catch (Throwable th2) {
                Blocker.end(attempted);
                throw th2;
            }
        }
    }

    static class PipeOutputStream extends FileOutputStream {
        public PipeOutputStream(FileDescriptor fd2) {
            super(fd2);
        }

        @Override
        public void write(int b10) throws IOException {
            boolean attempted = Blocker.begin();
            try {
                super.write(b10);
            } finally {
                Blocker.end(attempted);
            }
        }

        @Override
        public void write(byte[] b10) throws IOException {
            boolean attempted = Blocker.begin();
            try {
                super.write(b10);
            } finally {
                Blocker.end(attempted);
            }
        }

        @Override
        public void write(byte[] b10, int off, int len) throws IOException {
            boolean attempted = Blocker.begin();
            try {
                super.write(b10, off, len);
                Blocker.end(attempted);
            } catch (Throwable th2) {
                Blocker.end(attempted);
                throw th2;
            }
        }
    }

    private static class CharsetHolder {
        private static final Charset nativeCharset;

        private CharsetHolder() {
        }

        static {
            Charset cs;
            try {
                cs = Charset.forName(StaticProperty.nativeEncoding());
            } catch (UnsupportedCharsetException e10) {
                cs = Charset.defaultCharset();
            }
            nativeCharset = cs;
        }

        static Charset nativeCharset() {
            return nativeCharset;
        }
    }
}
