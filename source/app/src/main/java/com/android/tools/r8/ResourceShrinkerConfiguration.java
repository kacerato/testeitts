package com.android.tools.r8;

public class ResourceShrinkerConfiguration {
    public static ResourceShrinkerConfiguration DEFAULT_CONFIGURATION = new ResourceShrinkerConfiguration(false, true, null);

    private final boolean f35514a;

    private final boolean f35515b;

    private final StringConsumer f35516c;

    public static class Builder {

        static final boolean f35517d = true;

        private boolean f35518a;

        private boolean f35519b;

        private StringConsumer f35520c;

        public ResourceShrinkerConfiguration build() {
            return new ResourceShrinkerConfiguration(this.f35518a, this.f35519b, this.f35520c);
        }

        @Deprecated
        public Builder disablePreciseShrinking() {
            if (!f35517d && this.f35518a) {
                throw new AssertionError();
            }
            this.f35519b = false;
            return this;
        }

        public Builder enableOptimizedShrinkingWithR8() {
            if (!f35517d && !this.f35519b) {
                throw new AssertionError();
            }
            this.f35518a = true;
            return this;
        }

        public Builder setDebugConsumer(StringConsumer stringConsumer) {
            this.f35520c = stringConsumer;
            return this;
        }

        private Builder() {
            this.f35518a = false;
            this.f35519b = true;
        }
    }

    public static Builder builder(DiagnosticsHandler diagnosticsHandler) {
        return new Builder();
    }

    public StringConsumer getDebugConsumer() {
        return this.f35516c;
    }

    public boolean isOptimizedShrinking() {
        return this.f35514a;
    }

    public boolean isPreciseShrinking() {
        return this.f35515b;
    }

    private ResourceShrinkerConfiguration(boolean z10, boolean z11, StringConsumer stringConsumer) {
        this.f35514a = z10;
        this.f35515b = z11;
        this.f35516c = stringConsumer;
    }
}
