package java.lang;

import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.Process;
import java.lang.System;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import jdk.internal.event.ProcessStartEvent;
import jdk.internal.util.OperatingSystem;
import org.eclipse.jdt.internal.core.JavadocConstants;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/ProcessBuilder.class
 */
public final class ProcessBuilder {
    private static System.Logger LOGGER;
    private List<String> command;
    private File directory;
    private Map<String, String> environment;
    private boolean redirectErrorStream;
    private Redirect[] redirects;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !ProcessBuilder.class.desiredAssertionStatus();
    }

    public ProcessBuilder(List<String> command) {
        if (command == null) {
            throw new NullPointerException();
        }
        this.command = command;
    }

    public ProcessBuilder(String... command) {
        this.command = new ArrayList(command.length);
        for (String arg : command) {
            this.command.add(arg);
        }
    }

    public ProcessBuilder command(List<String> command) {
        if (command == null) {
            throw new NullPointerException();
        }
        this.command = command;
        return this;
    }

    public ProcessBuilder command(String... command) {
        this.command = new ArrayList(command.length);
        for (String arg : command) {
            this.command.add(arg);
        }
        return this;
    }

    public List<String> command() {
        return this.command;
    }

    public Map<String, String> environment() {
        if (this.environment == null) {
            this.environment = ProcessEnvironment.environment();
        }
        if ($assertionsDisabled || this.environment != null) {
            return this.environment;
        }
        throw new AssertionError();
    }

    public ProcessBuilder environment(String[] envp) {
        if (!$assertionsDisabled && this.environment != null) {
            throw new AssertionError();
        }
        if (envp != null) {
            this.environment = ProcessEnvironment.emptyEnvironment(envp.length);
            if (!$assertionsDisabled && this.environment == null) {
                throw new AssertionError();
            }
            for (String envstring : envp) {
                if (envstring.indexOf(0) != -1) {
                    envstring = envstring.replaceFirst("\ufffd\ufffd.*", "");
                }
                int eqlsign = envstring.indexOf(61, 0);
                if (eqlsign != -1) {
                    this.environment.put(envstring.substring(0, eqlsign), envstring.substring(eqlsign + 1));
                }
            }
        }
        return this;
    }

    public File directory() {
        return this.directory;
    }

    public ProcessBuilder directory(File directory) {
        this.directory = directory;
        return this;
    }

    static class NullInputStream extends InputStream {
        static final NullInputStream INSTANCE = new NullInputStream();

        private NullInputStream() {
        }

        @Override
        public int read() {
            return -1;
        }

        @Override
        public int available() {
            return 0;
        }
    }

    static class NullOutputStream extends OutputStream {
        static final NullOutputStream INSTANCE = new NullOutputStream();

        private NullOutputStream() {
        }

        @Override
        public void write(int b10) throws IOException {
            throw new IOException("Stream closed");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/ProcessBuilder$Redirect.class
 */
    public static abstract class Redirect {
        private static final File NULL_FILE;
        public static final Redirect PIPE;
        public static final Redirect INHERIT;
        public static final Redirect DISCARD;
        static final boolean $assertionsDisabled;

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/ProcessBuilder$Redirect$Type.class
 */
        public enum Type {
            PIPE,
            INHERIT,
            READ,
            WRITE,
            APPEND
        }

        public abstract Type type();

        static {
            $assertionsDisabled = !ProcessBuilder.class.desiredAssertionStatus();
            NULL_FILE = new File(OperatingSystem.isWindows() ? "NUL" : "/dev/null");
            PIPE = new Redirect() {
                @Override
                public Type type() {
                    return Type.PIPE;
                }

                public String toString() {
                    return type().toString();
                }
            };
            INHERIT = new Redirect() {
                @Override
                public Type type() {
                    return Type.INHERIT;
                }

                public String toString() {
                    return type().toString();
                }
            };
            DISCARD = new Redirect() {
                @Override
                public Type type() {
                    return Type.WRITE;
                }

                public String toString() {
                    return type().toString();
                }

                @Override
                public File file() {
                    return Redirect.NULL_FILE;
                }

                @Override
                boolean append() {
                    return false;
                }
            };
        }

        public File file() {
            return null;
        }

        public boolean append() {
            throw new UnsupportedOperationException();
        }

        public static Redirect from(final File file) {
            if (file == null) {
                throw new NullPointerException();
            }
            return new Redirect() {
                @Override
                public Type type() {
                    return Type.READ;
                }

                @Override
                public File file() {
                    return File.this;
                }

                public String toString() {
                    return "redirect to read from file \"" + ((Object) File.this) + JavadocConstants.ANCHOR_PREFIX_END;
                }
            };
        }

        public static Redirect to(final File file) {
            if (file == null) {
                throw new NullPointerException();
            }
            return new Redirect() {
                @Override
                public Type type() {
                    return Type.WRITE;
                }

                @Override
                public File file() {
                    return File.this;
                }

                public String toString() {
                    return "redirect to write to file \"" + ((Object) File.this) + JavadocConstants.ANCHOR_PREFIX_END;
                }

                @Override
                boolean append() {
                    return false;
                }
            };
        }

        public static Redirect appendTo(final File file) {
            if (file == null) {
                throw new NullPointerException();
            }
            return new Redirect() {
                @Override
                public Type type() {
                    return Type.APPEND;
                }

                @Override
                public File file() {
                    return File.this;
                }

                public String toString() {
                    return "redirect to append to file \"" + ((Object) File.this) + JavadocConstants.ANCHOR_PREFIX_END;
                }

                @Override
                boolean append() {
                    return true;
                }
            };
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Redirect)) {
                return false;
            }
            Redirect r10 = (Redirect) obj;
            if (r10.type() != type()) {
                return false;
            }
            if ($assertionsDisabled || file() != null) {
                return file().equals(r10.file());
            }
            throw new AssertionError();
        }

        public int hashCode() {
            File file = file();
            if (file == null) {
                return super.hashCode();
            }
            return file.hashCode();
        }

        private Redirect() {
        }
    }

    public static class RedirectPipeImpl extends Redirect {

        final FileDescriptor f92788fd = new FileDescriptor();

        RedirectPipeImpl() {
        }

        @Override
        public Redirect.Type type() {
            return Redirect.Type.PIPE;
        }

        public String toString() {
            return type().toString();
        }

        public FileDescriptor getFd() {
            return this.f92788fd;
        }
    }

    private Redirect[] redirects() {
        if (this.redirects == null) {
            this.redirects = new Redirect[]{Redirect.PIPE, Redirect.PIPE, Redirect.PIPE};
        }
        return this.redirects;
    }

    public ProcessBuilder redirectInput(Redirect source) {
        if (source.type() == Redirect.Type.WRITE || source.type() == Redirect.Type.APPEND) {
            throw new IllegalArgumentException("Redirect invalid for reading: " + ((Object) source));
        }
        redirects()[0] = source;
        return this;
    }

    public ProcessBuilder redirectOutput(Redirect destination) {
        if (destination.type() == Redirect.Type.READ) {
            throw new IllegalArgumentException("Redirect invalid for writing: " + ((Object) destination));
        }
        redirects()[1] = destination;
        return this;
    }

    public ProcessBuilder redirectError(Redirect destination) {
        if (destination.type() == Redirect.Type.READ) {
            throw new IllegalArgumentException("Redirect invalid for writing: " + ((Object) destination));
        }
        redirects()[2] = destination;
        return this;
    }

    public ProcessBuilder redirectInput(File file) {
        return redirectInput(Redirect.from(file));
    }

    public ProcessBuilder redirectOutput(File file) {
        return redirectOutput(Redirect.to(file));
    }

    public ProcessBuilder redirectError(File file) {
        return redirectError(Redirect.to(file));
    }

    public Redirect redirectInput() {
        return this.redirects == null ? Redirect.PIPE : this.redirects[0];
    }

    public Redirect redirectOutput() {
        return this.redirects == null ? Redirect.PIPE : this.redirects[1];
    }

    public Redirect redirectError() {
        return this.redirects == null ? Redirect.PIPE : this.redirects[2];
    }

    public ProcessBuilder inheritIO() {
        Arrays.fill(redirects(), Redirect.INHERIT);
        return this;
    }

    public boolean redirectErrorStream() {
        return this.redirectErrorStream;
    }

    public ProcessBuilder redirectErrorStream(boolean redirectErrorStream) {
        this.redirectErrorStream = redirectErrorStream;
        return this;
    }

    public Process start() throws IOException {
        return start(this.redirects);
    }

    private Process start(Redirect[] redirects) throws IOException {
        String[] cmdarray = (String[]) ((String[]) this.command.toArray(new String[this.command.size()])).clone();
        for (String arg : cmdarray) {
            if (arg == null) {
                throw new NullPointerException();
            }
        }
        String prog = cmdarray[0];
        String dir = this.directory == null ? null : this.directory.toString();
        for (String s10 : cmdarray) {
            if (s10.indexOf(0) >= 0) {
                throw new IOException("invalid null character in command");
            }
        }
        try {
            Process process = ProcessImpl.start(cmdarray, this.environment, dir, redirects, this.redirectErrorStream);
            ProcessStartEvent event = new ProcessStartEvent();
            if (event.isEnabled()) {
                event.directory = dir;
                event.command = String.join(" ", cmdarray);
                event.pid = process.pid();
                event.commit();
            }
            System.Logger logger = LOGGER;
            if (logger == null) {
                System.Logger logger2 = System.getLogger("java.lang.ProcessBuilder");
                logger = logger2;
                LOGGER = logger2;
            }
            if (logger.isLoggable(System.Logger.Level.DEBUG)) {
                boolean detail = logger.isLoggable(System.Logger.Level.TRACE);
                System.Logger.Level level = detail ? System.Logger.Level.TRACE : System.Logger.Level.DEBUG;
                String cmdargs = detail ? String.join("\" \"", cmdarray) : cmdarray[0];
                RuntimeException stackTraceEx = new RuntimeException("ProcessBuilder.start() debug");
                LOGGER.log(level, "ProcessBuilder.start(): pid: " + process.pid() + ", dir: " + dir + ", cmd: \"" + cmdargs + JavadocConstants.ANCHOR_PREFIX_END, stackTraceEx);
            }
            return process;
        } catch (IOException | IllegalArgumentException e10) {
            throw new IOException("Cannot run program \"" + prog + JavadocConstants.ANCHOR_PREFIX_END + (dir == null ? "" : " (in directory \"" + dir + "\")") + ": " + e10.getMessage(), e10);
        }
    }

    public static List<Process> startPipeline(List<ProcessBuilder> builders) throws IOException {
        int numBuilders = builders.size();
        List<Process> processes = new ArrayList<>(numBuilders);
        Redirect prevOutput = null;
        for (int index = 0; index < builders.size(); index++) {
            try {
                ProcessBuilder builder = builders.get(index);
                Redirect[] redirects = builder.redirects();
                if (index > 0) {
                    if (builder.redirectInput() != Redirect.PIPE) {
                        throw new IllegalArgumentException("builder redirectInput() must be PIPE except for the first builder: " + ((Object) builder.redirectInput()));
                    }
                    redirects[0] = prevOutput;
                }
                if (index < numBuilders - 1) {
                    if (builder.redirectOutput() != Redirect.PIPE) {
                        throw new IllegalArgumentException("builder redirectOutput() must be PIPE except for the last builder: " + ((Object) builder.redirectOutput()));
                    }
                    redirects[1] = new RedirectPipeImpl();
                }
                processes.add(builder.start(redirects));
                if (prevOutput instanceof RedirectPipeImpl) {
                    RedirectPipeImpl redir = (RedirectPipeImpl) prevOutput;
                    new Process.PipeInputStream(redir.getFd()).close();
                }
                prevOutput = redirects[1];
            } catch (Exception ex) {
                processes.forEach((v0) -> {
                    v0.destroyForcibly();
                });
                processes.forEach(p10 -> {
                    try {
                        p10.waitFor();
                    } catch (InterruptedException e10) {
                        Thread.currentThread().interrupt();
                    }
                });
                throw ex;
            }
        }
        return processes;
    }
}
