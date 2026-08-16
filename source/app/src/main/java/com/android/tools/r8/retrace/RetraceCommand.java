package com.android.tools.r8.retrace;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.internal.C7;
import com.android.tools.r8.retrace.RetraceCommand;
import java.util.List;
import java.util.function.Consumer;

public class RetraceCommand {

    static final boolean f56285d = true;

    private final StackTraceSupplier f56286a;

    private final Consumer f56287b;

    private final RetraceOptions f56288c;

    public static class Builder {

        private boolean f56289a;

        private final DiagnosticsHandler f56290b;

        private MappingSupplier f56291c;

        private String f56292d;

        private StackTraceSupplier f56293e;

        private Consumer f56294f;

        private boolean f56295g;

        public static List a(C7 c72) {
            Object obj = c72.f39449a;
            c72.f39449a = null;
            return (List) obj;
        }

        public RetraceCommand build() {
            DiagnosticsHandler diagnosticsHandler = this.f56290b;
            if (diagnosticsHandler == null) {
                throw new RuntimeException("DiagnosticsHandler not specified");
            }
            if (this.f56291c == null) {
                throw new RuntimeException("ProguardMapSupplier not specified");
            }
            if (this.f56293e == null && !this.f56295g) {
                throw new RuntimeException("StackTrace not specified");
            }
            if (this.f56294f == null) {
                throw new RuntimeException("RetracedStackConsumer not specified");
            }
            return new RetraceCommand(this.f56293e, this.f56294f, RetraceOptions.builder(diagnosticsHandler).setRegularExpression(this.f56292d).setMappingSupplier(this.f56291c).setVerbose(this.f56289a).setVerifyMappingFileHash(this.f56295g).build());
        }

        public Builder setMappingSupplier(MappingSupplier<?> mappingSupplier) {
            this.f56291c = mappingSupplier;
            return this;
        }

        public Builder setRegularExpression(String str) {
            this.f56292d = str;
            return this;
        }

        public Builder setRetracedStackTraceConsumer(Consumer<List<String>> consumer) {
            this.f56294f = consumer;
            return this;
        }

        public Builder setStackTrace(List<String> list) {
            final C7 c72 = new C7(list);
            return setStackTrace(new StackTraceSupplier() {
                @Override
                public final List get() {
                    List a10;
                    a10 = RetraceCommand.Builder.a(C7.this);
                    return a10;
                }
            });
        }

        public Builder setVerbose(boolean z10) {
            this.f56289a = z10;
            return this;
        }

        public Builder setVerifyMappingFileHash(boolean z10) {
            this.f56295g = z10;
            return this;
        }

        private Builder(DiagnosticsHandler diagnosticsHandler) {
            this.f56292d = "(?:.*?\\bat\\s+%c\\.%m\\s*\\(%S\\)\\p{Z}*(?:~\\[.*\\])?)|(?:(?:(?:%c|.*)?[:\"]\\s+)?%c(?:(:|]).*)?)";
            this.f56295g = false;
            this.f56290b = diagnosticsHandler;
        }

        public Builder setStackTrace(StackTraceSupplier stackTraceSupplier) {
            this.f56293e = stackTraceSupplier;
            return this;
        }
    }

    public static Builder builder(DiagnosticsHandler diagnosticsHandler) {
        return new Builder(diagnosticsHandler);
    }

    public RetraceOptions getOptions() {
        return this.f56288c;
    }

    public Consumer<List<String>> getRetracedStackTraceConsumer() {
        return this.f56287b;
    }

    public StackTraceSupplier getStackTraceSupplier() {
        return this.f56286a;
    }

    @Deprecated
    public StackTraceSupplier getStacktraceSupplier() {
        return getStackTraceSupplier();
    }

    public boolean printMemory() {
        return System.getProperty("com.android.tools.r8.printmemory") != null;
    }

    public boolean printTimes() {
        return System.getProperty("com.android.tools.r8.printtimes") != null;
    }

    private RetraceCommand(StackTraceSupplier stackTraceSupplier, Consumer consumer, RetraceOptions retraceOptions) {
        this.f56286a = stackTraceSupplier;
        this.f56287b = consumer;
        this.f56288c = retraceOptions;
        boolean z10 = f56285d;
        if (!z10 && stackTraceSupplier == null && !retraceOptions.isVerifyMappingFileHash()) {
            throw new AssertionError();
        }
        if (!z10 && consumer == null) {
            throw new AssertionError();
        }
    }

    public static Builder builder() {
        return new Builder(new C11099i());
    }
}
