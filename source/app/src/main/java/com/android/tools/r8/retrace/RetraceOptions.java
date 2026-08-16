package com.android.tools.r8.retrace;

import com.android.tools.r8.DiagnosticsHandler;

public class RetraceOptions {

    static final boolean f56299f = true;

    private final boolean f56300a;

    private final boolean f56301b;

    private final String f56302c;

    private final DiagnosticsHandler f56303d;

    private final MappingSupplier f56304e;

    public static class Builder {

        private boolean f56305a;

        private boolean f56306b;

        private final DiagnosticsHandler f56307c;

        private MappingSupplier f56308d;

        private String f56309e = RetraceOptions.defaultRegularExpression();

        public Builder(DiagnosticsHandler diagnosticsHandler) {
            this.f56307c = diagnosticsHandler;
        }

        public RetraceOptions build() {
            if (this.f56307c == null) {
                throw new RuntimeException("DiagnosticsHandler not specified");
            }
            if (this.f56308d == null) {
                throw new RuntimeException("ProguardMapSupplier not specified");
            }
            if (this.f56309e != null) {
                return new RetraceOptions(this.f56309e, this.f56307c, this.f56308d, this.f56305a, this.f56306b);
            }
            throw new RuntimeException("Regular expression not specified");
        }

        public Builder setMappingSupplier(MappingSupplier<?> mappingSupplier) {
            this.f56308d = mappingSupplier;
            return this;
        }

        public Builder setProguardMapProducer(ProguardMapProducer proguardMapProducer) {
            return setMappingSupplier(ProguardMappingSupplier.builder().setProguardMapProducer(proguardMapProducer).build());
        }

        public Builder setRegularExpression(String str) {
            this.f56309e = str;
            return this;
        }

        public Builder setVerbose(boolean z10) {
            this.f56305a = z10;
            return this;
        }

        public Builder setVerifyMappingFileHash(boolean z10) {
            this.f56306b = z10;
            return this;
        }
    }

    public static Builder builder() {
        return builder(new C11100j());
    }

    public static String defaultRegularExpression() {
        return "(?:.*?\\bat\\s+%c\\.%m\\s*\\(%S\\)\\p{Z}*(?:~\\[.*\\])?)|(?:(?:(?:%c|.*)?[:\"]\\s+)?%c(?:(:|]).*)?)";
    }

    public DiagnosticsHandler getDiagnosticsHandler() {
        return this.f56303d;
    }

    public MappingSupplier<?> getMappingSupplier() {
        return this.f56304e;
    }

    public String getRegularExpression() {
        return this.f56302c;
    }

    public boolean isVerbose() {
        return this.f56300a;
    }

    public boolean isVerifyMappingFileHash() {
        return this.f56301b;
    }

    private RetraceOptions(String str, DiagnosticsHandler diagnosticsHandler, MappingSupplier mappingSupplier, boolean z10, boolean z11) {
        this.f56302c = str;
        this.f56303d = diagnosticsHandler;
        this.f56304e = mappingSupplier;
        this.f56300a = z10;
        this.f56301b = z11;
        boolean z12 = f56299f;
        if (!z12 && diagnosticsHandler == null) {
            throw new AssertionError();
        }
        if (!z12 && mappingSupplier == null) {
            throw new AssertionError();
        }
    }

    public static Builder builder(DiagnosticsHandler diagnosticsHandler) {
        return new Builder(diagnosticsHandler);
    }
}
