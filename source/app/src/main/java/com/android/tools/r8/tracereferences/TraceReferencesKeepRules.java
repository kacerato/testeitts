package com.android.tools.r8.tracereferences;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.internal.C5295Hs0;
import com.android.tools.r8.tracereferences.TraceReferencesConsumer;
import java.nio.file.Path;

public class TraceReferencesKeepRules extends TraceReferencesConsumer.ForwardingConsumer {

    private final C5295Hs0 f58424c;

    private final StringConsumer f58425d;

    private final boolean f58426e;

    public static class Builder {

        private StringConsumer f58427a;

        private boolean f58428b;

        public TraceReferencesKeepRules build() {
            return new TraceReferencesKeepRules(new C5295Hs0(), this.f58427a, this.f58428b);
        }

        public Builder setAllowObfuscation(boolean z10) {
            this.f58428b = z10;
            return this;
        }

        public Builder setOutputConsumer(StringConsumer stringConsumer) {
            this.f58427a = stringConsumer;
            return this;
        }

        public Builder setOutputPath(Path path) {
            this.f58427a = new StringConsumer.FileConsumer(path);
            return this;
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    public boolean allowObfuscation() {
        return this.f58426e;
    }

    @Override
    public void finished(DiagnosticsHandler diagnosticsHandler) {
        super.finished(diagnosticsHandler);
        C11625b c11625b = new C11625b(this.f58426e);
        C5295Hs0 c5295Hs0 = this.f58424c;
        c11625b.a(c5295Hs0.f40894a, c5295Hs0.f40897d, c5295Hs0.f40895b, c5295Hs0.f40896c);
        this.f58425d.accept(c11625b.f58443a.toString(), diagnosticsHandler);
        this.f58425d.finished(diagnosticsHandler);
    }

    private TraceReferencesKeepRules(C5295Hs0 c5295Hs0, StringConsumer stringConsumer, boolean z10) {
        super(c5295Hs0);
        this.f58424c = c5295Hs0;
        this.f58425d = stringConsumer;
        this.f58426e = z10;
    }
}
