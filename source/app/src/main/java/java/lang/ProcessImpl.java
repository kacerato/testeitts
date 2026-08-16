package java.lang;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.Process;
import java.lang.ProcessBuilder;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import jdk.internal.access.JavaIOFileDescriptorAccess;
import jdk.internal.access.SharedSecrets;
import jdk.internal.util.OperatingSystem;
import jdk.internal.util.StaticProperty;

public final class ProcessImpl extends Process {
    private static final JavaIOFileDescriptorAccess fdAccess;
    static final boolean SUPPORTS_NORMAL_TERMINATION = true;
    static final Charset JNU_CHARSET;
    private final int pid;
    private final ProcessHandleImpl processHandle;
    private int exitcode;
    private boolean hasExited;
    private final ReentrantLock lock = new ReentrantLock();
    private final Condition condition = this.lock.newCondition();
    private OutputStream stdin;
    private InputStream stdout;
    private InputStream stderr;
    private static final LaunchMechanism launchMechanism;
    private static final byte[] helperpath;
    static final boolean $assertionsDisabled;

    public enum LaunchMechanism {
        FORK,
        POSIX_SPAWN,
        VFORK
    }

    private native int forkAndExec(int i10, byte[] bArr, byte[] bArr2, byte[] bArr3, int i11, byte[] bArr4, int i12, byte[] bArr5, int[] iArr, boolean z10) throws IOException;

    private static native void init();

    static {
        $assertionsDisabled = !ProcessImpl.class.desiredAssertionStatus();
        fdAccess = SharedSecrets.getJavaIOFileDescriptorAccess();
        JNU_CHARSET = Charset.forName(StaticProperty.jnuEncoding());
        launchMechanism = launchMechanism();
        helperpath = toCString(StaticProperty.javaHome() + "/lib/jspawnhelper");
        init();
    }

    private static LaunchMechanism launchMechanism() {
        String s10 = System.getProperty("jdk.lang.Process.launchMechanism");
        if (s10 == null) {
            return LaunchMechanism.POSIX_SPAWN;
        }
        try {
            LaunchMechanism lm2 = LaunchMechanism.valueOf(s10.toUpperCase(Locale.ROOT));
            switch (AnonymousClass1.$SwitchMap$jdk$internal$util$OperatingSystem[OperatingSystem.current().ordinal()]) {
                case 1:
                    if (lm2 == LaunchMechanism.VFORK) {
                        System.err.println("VFORK MODE DEPRECATED");
                        System.err.println("The VFORK launch mechanism has been deprecated for being dangerous.\nIt will be removed in a future java version. Either remove the\njdk.lang.Process.launchMechanism property (preferred) or use FORK mode\ninstead (-Djdk.lang.Process.launchMechanism=FORK).\n");
                    }
                    return lm2;
                case 2:
                case 3:
                    if (lm2 != LaunchMechanism.VFORK) {
                        return lm2;
                    }
                    break;
            }
        } catch (IllegalArgumentException e10) {
        }
        throw new Error(s10 + " is not a supported process launch mechanism on this platform: " + ((Object) OperatingSystem.current()));
    }

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$jdk$internal$util$OperatingSystem = new int[OperatingSystem.values().length];

        static {
            try {
                $SwitchMap$jdk$internal$util$OperatingSystem[OperatingSystem.LINUX.ordinal()] = 1;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$jdk$internal$util$OperatingSystem[OperatingSystem.AIX.ordinal()] = 2;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$jdk$internal$util$OperatingSystem[OperatingSystem.MACOS.ordinal()] = 3;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    private static byte[] toCString(String s10) {
        if (s10 == null) {
            return null;
        }
        byte[] bytes = s10.getBytes(JNU_CHARSET);
        byte[] result = new byte[bytes.length + 1];
        System.arraycopy(bytes, 0, result, 0, bytes.length);
        result[result.length - 1] = 0;
        return result;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Process start(String[] cmdarray, Map<String, String> environment, String dir, ProcessBuilder.Redirect[] redirects, boolean redirectErrorStream) throws IOException {
        int[] std_fds;
        if (!$assertionsDisabled && (cmdarray == null || cmdarray.length <= 0)) {
            throw new AssertionError();
        }
        byte[] bArr = new byte[cmdarray.length - 1];
        int size = bArr.length;
        for (int i10 = 0; i10 < bArr.length; i10++) {
            bArr[i10] = cmdarray[i10 + 1].getBytes(JNU_CHARSET);
            size += bArr[i10].length;
        }
        byte[] argBlock = new byte[size];
        int i11 = 0;
        for (Object[] objArr : bArr) {
            System.arraycopy(objArr, 0, argBlock, i11, objArr.length);
            i11 += objArr.length + 1;
        }
        int[] envc = new int[1];
        byte[] envBlock = ProcessEnvironment.toEnvironmentBlock(environment, envc);
        FileInputStream f02 = null;
        FileOutputStream f12 = null;
        FileOutputStream f22 = null;
        boolean forceNullOutputStream = false;
        try {
            if (redirects == null) {
                std_fds = new int[]{-1, -1, -1};
            } else {
                std_fds = new int[3];
                if (redirects[0] == ProcessBuilder.Redirect.PIPE) {
                    std_fds[0] = -1;
                } else if (redirects[0] == ProcessBuilder.Redirect.INHERIT) {
                    std_fds[0] = 0;
                } else if (redirects[0] instanceof ProcessBuilder.RedirectPipeImpl) {
                    std_fds[0] = fdAccess.get(((ProcessBuilder.RedirectPipeImpl) redirects[0]).getFd());
                } else {
                    f02 = new FileInputStream(redirects[0].file());
                    std_fds[0] = fdAccess.get(f02.getFD());
                }
                if (redirects[1] == ProcessBuilder.Redirect.PIPE) {
                    std_fds[1] = -1;
                } else if (redirects[1] == ProcessBuilder.Redirect.INHERIT) {
                    std_fds[1] = 1;
                } else if (redirects[1] instanceof ProcessBuilder.RedirectPipeImpl) {
                    std_fds[1] = fdAccess.get(((ProcessBuilder.RedirectPipeImpl) redirects[1]).getFd());
                    forceNullOutputStream = true;
                } else {
                    f12 = new FileOutputStream(redirects[1].file(), redirects[1].append());
                    std_fds[1] = fdAccess.get(f12.getFD());
                }
                if (redirects[2] == ProcessBuilder.Redirect.PIPE) {
                    std_fds[2] = -1;
                } else if (redirects[2] == ProcessBuilder.Redirect.INHERIT) {
                    std_fds[2] = 2;
                } else if (redirects[2] instanceof ProcessBuilder.RedirectPipeImpl) {
                    std_fds[2] = fdAccess.get(((ProcessBuilder.RedirectPipeImpl) redirects[2]).getFd());
                } else {
                    f22 = new FileOutputStream(redirects[2].file(), redirects[2].append());
                    std_fds[2] = fdAccess.get(f22.getFD());
                }
            }
            Process p10 = new ProcessImpl(toCString(cmdarray[0]), argBlock, bArr.length, envBlock, envc[0], toCString(dir), std_fds, forceNullOutputStream, redirectErrorStream);
            if (redirects != null) {
                if (std_fds[0] >= 0 && (redirects[0] instanceof ProcessBuilder.RedirectPipeImpl)) {
                    fdAccess.set(((ProcessBuilder.RedirectPipeImpl) redirects[0]).getFd(), std_fds[0]);
                }
                if (std_fds[1] >= 0 && (redirects[1] instanceof ProcessBuilder.RedirectPipeImpl)) {
                    fdAccess.set(((ProcessBuilder.RedirectPipeImpl) redirects[1]).getFd(), std_fds[1]);
                }
                if (std_fds[2] >= 0 && (redirects[2] instanceof ProcessBuilder.RedirectPipeImpl)) {
                    fdAccess.set(((ProcessBuilder.RedirectPipeImpl) redirects[2]).getFd(), std_fds[2]);
                }
            }
            if (f02 != null) {
                try {
                    f02.close();
                } catch (Throwable th2) {
                    if (f12 != null) {
                        try {
                            f12.close();
                        } finally {
                        }
                    }
                    if (f22 != null) {
                        f22.close();
                    }
                    throw th2;
                }
            }
            if (f12 != null) {
                try {
                    f12.close();
                } finally {
                }
            }
            if (f22 != null) {
                f22.close();
            }
            return p10;
        } catch (Throwable th3) {
            if (f02 != null) {
                try {
                    f02.close();
                } catch (Throwable th4) {
                    if (f12 != null) {
                        try {
                            f12.close();
                        } finally {
                            if (f22 != null) {
                                f22.close();
                            }
                        }
                    }
                    if (f22 != null) {
                        f22.close();
                    }
                    throw th4;
                }
            }
            if (f12 != null) {
                try {
                    f12.close();
                } finally {
                    if (f22 != null) {
                        f22.close();
                    }
                }
            }
            if (f22 != null) {
                f22.close();
            }
            throw th3;
        }
    }

    private ProcessImpl(byte[] prog, byte[] argBlock, int argc, byte[] envBlock, int envc, byte[] dir, int[] fds, boolean forceNullOutputStream, boolean redirectErrorStream) throws IOException {
        this.pid = forkAndExec(launchMechanism.ordinal() + 1, helperpath, prog, argBlock, argc, envBlock, envc, dir, fds, redirectErrorStream);
        this.processHandle = ProcessHandleImpl.getInternal(this.pid);
        initStreams(fds, forceNullOutputStream);
    }

    static FileDescriptor newFileDescriptor(int fd2) {
        FileDescriptor fileDescriptor = new FileDescriptor();
        fdAccess.set(fileDescriptor, fd2);
        return fileDescriptor;
    }

    void initStreams(int[] fds, boolean forceNullOutputStream) throws IOException {
        OutputStream processPipeOutputStream;
        InputStream inputStream;
        InputStream deferredCloseProcessPipeInputStream;
        OutputStream processPipeOutputStream2;
        InputStream inputStream2;
        InputStream processPipeInputStream;
        switch (AnonymousClass1.$SwitchMap$jdk$internal$util$OperatingSystem[OperatingSystem.current().ordinal()]) {
            case 1:
            case 3:
                if (fds[0] == -1) {
                    processPipeOutputStream2 = ProcessBuilder.NullOutputStream.INSTANCE;
                } else {
                    processPipeOutputStream2 = new ProcessPipeOutputStream(fds[0]);
                }
                this.stdin = processPipeOutputStream2;
                if (fds[1] == -1 || forceNullOutputStream) {
                    inputStream2 = ProcessBuilder.NullInputStream.INSTANCE;
                } else {
                    inputStream2 = new ProcessPipeInputStream(fds[1]);
                }
                this.stdout = inputStream2;
                if (fds[2] == -1) {
                    processPipeInputStream = ProcessBuilder.NullInputStream.INSTANCE;
                } else {
                    processPipeInputStream = new ProcessPipeInputStream(fds[2]);
                }
                this.stderr = processPipeInputStream;
                ProcessHandleImpl.completion(this.pid, true).handle((exitcode, throwable) -> {
                    int intValue;
                    this.lock.lock();
                    if (exitcode == null) {
                        intValue = -1;
                    } else {
                        try {
                            intValue = exitcode.intValue();
                        } finally {
                            this.lock.unlock();
                        }
                    }
                    this.exitcode = intValue;
                    this.hasExited = true;
                    this.condition.signalAll();
                    if (this.stdout instanceof ProcessPipeInputStream) {
                        ((ProcessPipeInputStream) this.stdout).processExited();
                    }
                    if (this.stderr instanceof ProcessPipeInputStream) {
                        ((ProcessPipeInputStream) this.stderr).processExited();
                    }
                    if (this.stdin instanceof ProcessPipeOutputStream) {
                        ((ProcessPipeOutputStream) this.stdin).processExited();
                        return null;
                    }
                    return null;
                });
                return;
            case 2:
                if (fds[0] == -1) {
                    processPipeOutputStream = ProcessBuilder.NullOutputStream.INSTANCE;
                } else {
                    processPipeOutputStream = new ProcessPipeOutputStream(fds[0]);
                }
                this.stdin = processPipeOutputStream;
                if (fds[1] == -1 || forceNullOutputStream) {
                    inputStream = ProcessBuilder.NullInputStream.INSTANCE;
                } else {
                    inputStream = new DeferredCloseProcessPipeInputStream(fds[1]);
                }
                this.stdout = inputStream;
                if (fds[2] == -1) {
                    deferredCloseProcessPipeInputStream = ProcessBuilder.NullInputStream.INSTANCE;
                } else {
                    deferredCloseProcessPipeInputStream = new DeferredCloseProcessPipeInputStream(fds[2]);
                }
                this.stderr = deferredCloseProcessPipeInputStream;
                ProcessHandleImpl.completion(this.pid, true).handle((exitcode2, throwable2) -> {
                    int intValue;
                    this.lock.lock();
                    if (exitcode2 == null) {
                        intValue = -1;
                    } else {
                        try {
                            intValue = exitcode2.intValue();
                        } finally {
                            this.lock.unlock();
                        }
                    }
                    this.exitcode = intValue;
                    this.hasExited = true;
                    this.condition.signalAll();
                    if (this.stdout instanceof DeferredCloseProcessPipeInputStream) {
                        ((DeferredCloseProcessPipeInputStream) this.stdout).processExited();
                    }
                    if (this.stderr instanceof DeferredCloseProcessPipeInputStream) {
                        ((DeferredCloseProcessPipeInputStream) this.stderr).processExited();
                    }
                    if (this.stdin instanceof ProcessPipeOutputStream) {
                        ((ProcessPipeOutputStream) this.stdin).processExited();
                        return null;
                    }
                    return null;
                });
                return;
            default:
                throw new AssertionError((Object) ("Unsupported platform: " + ((Object) OperatingSystem.current())));
        }
    }

    @Override
    public OutputStream getOutputStream() {
        return this.stdin;
    }

    @Override
    public InputStream getInputStream() {
        return this.stdout;
    }

    @Override
    public InputStream getErrorStream() {
        return this.stderr;
    }

    @Override
    public int waitFor() throws InterruptedException {
        this.lock.lock();
        while (!this.hasExited) {
            try {
                this.condition.await();
            } finally {
                this.lock.unlock();
            }
        }
        return this.exitcode;
    }

    @Override
    public boolean waitFor(long timeout, TimeUnit unit) throws InterruptedException {
        this.lock.lock();
        try {
            long remainingNanos = unit.toNanos(timeout);
            while (remainingNanos > 0 && !this.hasExited) {
                remainingNanos = this.condition.awaitNanos(remainingNanos);
            }
            boolean z10 = this.hasExited;
            this.lock.unlock();
            return z10;
        } catch (Throwable th2) {
            this.lock.unlock();
            throw th2;
        }
    }

    @Override
    public int exitValue() {
        this.lock.lock();
        try {
            if (!this.hasExited) {
                throw new IllegalThreadStateException("process hasn't exited");
            }
            return this.exitcode;
        } finally {
            this.lock.unlock();
        }
    }

    private void destroy(boolean force) {
        switch (AnonymousClass1.$SwitchMap$jdk$internal$util$OperatingSystem[OperatingSystem.current().ordinal()]) {
            case 1:
            case 2:
            case 3:
                this.lock.lock();
                try {
                    if (!this.hasExited) {
                        this.processHandle.destroyProcess(force);
                    }
                    try {
                        this.stdin.close();
                    } catch (IOException e10) {
                    }
                    try {
                        this.stdout.close();
                    } catch (IOException e11) {
                    }
                    try {
                        this.stderr.close();
                        return;
                    } catch (IOException e12) {
                        return;
                    }
                } finally {
                    this.lock.unlock();
                }
            default:
                throw new AssertionError((Object) ("Unsupported platform: " + ((Object) OperatingSystem.current())));
        }
    }

    @Override
    public CompletableFuture<Process> onExit() {
        return ProcessHandleImpl.completion(this.pid, false).handleAsync((unusedExitStatus, unusedThrowable) -> {
            boolean interrupted;
            boolean z10 = false;
            while (true) {
                try {
                    interrupted = z10;
                    waitFor();
                    break;
                } catch (InterruptedException e10) {
                    z10 = true;
                }
            }
            if (interrupted) {
                Thread.currentThread().interrupt();
            }
            return this;
        });
    }

    @Override
    public ProcessHandle toHandle() {
        return this.processHandle;
    }

    @Override
    public boolean supportsNormalTermination() {
        return true;
    }

    @Override
    public void destroy() {
        destroy(false);
    }

    @Override
    public Process destroyForcibly() {
        destroy(true);
        return this;
    }

    @Override
    public long pid() {
        return this.pid;
    }

    @Override
    public boolean isAlive() {
        this.lock.lock();
        try {
            return !this.hasExited;
        } finally {
            this.lock.unlock();
        }
    }

    public String toString() {
        return "Process[pid=" + this.pid + ", exitValue=" + (this.hasExited ? Integer.valueOf(this.exitcode) : "\"not exited\"") + "]";
    }

    public static class ProcessPipeInputStream extends BufferedInputStream {
        private final Object closeLock;

        ProcessPipeInputStream(int fd2) {
            super(new Process.PipeInputStream(ProcessImpl.newFileDescriptor(fd2)));
            this.closeLock = new Object();
        }

        private static byte[] drainInputStream(InputStream in2) throws IOException {
            int n10 = 0;
            byte[] a10 = null;
            while (true) {
                int j10 = in2.available();
                if (j10 <= 0) {
                    break;
                }
                a10 = a10 == null ? new byte[j10] : Arrays.copyOf(a10, n10 + j10);
                n10 += in2.read(a10, n10, j10);
            }
            return (a10 == null || n10 == a10.length) ? a10 : Arrays.copyOf(a10, n10);
        }

        synchronized void processExited() {
            InputStream byteArrayInputStream;
            synchronized (this.closeLock) {
                try {
                    InputStream in2 = this.f92730in;
                    if (in2 != null) {
                        byte[] stragglers = drainInputStream(in2);
                        in2.close();
                        if (stragglers == null) {
                            byteArrayInputStream = ProcessBuilder.NullInputStream.INSTANCE;
                        } else {
                            byteArrayInputStream = new ByteArrayInputStream(stragglers);
                        }
                        this.f92730in = byteArrayInputStream;
                    }
                } catch (IOException e10) {
                }
            }
        }

        @Override
        public void close() throws IOException {
            synchronized (this.closeLock) {
                super.close();
            }
        }
    }

    public static class ProcessPipeOutputStream extends BufferedOutputStream {
        ProcessPipeOutputStream(int fd2) {
            super(new Process.PipeOutputStream(ProcessImpl.newFileDescriptor(fd2)));
        }

        synchronized void processExited() {
            OutputStream out = this.out;
            if (out != null) {
                try {
                    out.close();
                } catch (IOException e10) {
                }
                this.out = ProcessBuilder.NullOutputStream.INSTANCE;
            }
        }
    }

    public static class DeferredCloseProcessPipeInputStream extends BufferedInputStream {
        private final Object closeLock;
        private int useCount;
        private boolean closePending;

        DeferredCloseProcessPipeInputStream(int fd2) {
            super(new Process.PipeInputStream(ProcessImpl.newFileDescriptor(fd2)));
            this.closeLock = new Object();
            this.useCount = 0;
            this.closePending = false;
        }

        private InputStream drainInputStream(InputStream in2) throws IOException {
            int n10 = 0;
            byte[] a10 = null;
            synchronized (this.closeLock) {
                if (this.buf == null) {
                    return null;
                }
                int j10 = in2.available();
                while (j10 > 0) {
                    a10 = a10 == null ? new byte[j10] : Arrays.copyOf(a10, n10 + j10);
                    synchronized (this.closeLock) {
                        if (this.buf == null) {
                            return null;
                        }
                        n10 += in2.read(a10, n10, j10);
                        j10 = in2.available();
                    }
                }
                if (a10 == null) {
                    return ProcessBuilder.NullInputStream.INSTANCE;
                }
                return new ByteArrayInputStream(n10 == a10.length ? a10 : Arrays.copyOf(a10, n10));
            }
        }

        synchronized void processExited() {
            try {
                InputStream in2 = this.f92730in;
                if (in2 != null) {
                    InputStream stragglers = drainInputStream(in2);
                    in2.close();
                    this.f92730in = stragglers;
                }
            } catch (IOException e10) {
            }
        }

        private void raise() {
            synchronized (this.closeLock) {
                this.useCount++;
            }
        }

        private void lower() throws IOException {
            synchronized (this.closeLock) {
                this.useCount--;
                if (this.useCount == 0 && this.closePending) {
                    this.closePending = false;
                    super.close();
                }
            }
        }

        @Override
        public int read() throws IOException {
            raise();
            try {
                return super.read();
            } finally {
                lower();
            }
        }

        @Override
        public int read(byte[] b10) throws IOException {
            raise();
            try {
                return super.read(b10);
            } finally {
                lower();
            }
        }

        @Override
        public int read(byte[] b10, int off, int len) throws IOException {
            raise();
            try {
                int read = super.read(b10, off, len);
                lower();
                return read;
            } catch (Throwable th2) {
                lower();
                throw th2;
            }
        }

        @Override
        public long skip(long n10) throws IOException {
            raise();
            try {
                long skip = super.skip(n10);
                lower();
                return skip;
            } catch (Throwable th2) {
                lower();
                throw th2;
            }
        }

        @Override
        public int available() throws IOException {
            raise();
            try {
                return super.available();
            } finally {
                lower();
            }
        }

        @Override
        public void close() throws IOException {
            synchronized (this.closeLock) {
                if (this.useCount == 0) {
                    super.close();
                } else {
                    this.closePending = true;
                }
            }
        }
    }
}
