package com.android.tools.r8;

import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5879Rv;
import java.util.ArrayList;
import java.util.List;

public class FeatureSplit {
    public static final FeatureSplit BASE = new G();

    private ProgramConsumer f35301a;

    private List f35302b;

    private final AndroidResourceProvider f35303c;

    private AndroidResourceConsumer f35304d;

    public static class Builder {

        private ProgramConsumer f35305a;

        private final ArrayList f35306b;

        private AndroidResourceProvider f35307c;

        private AndroidResourceConsumer f35308d;

        public Builder addProgramResourceProvider(ProgramResourceProvider programResourceProvider) {
            this.f35306b.add(programResourceProvider);
            return this;
        }

        public FeatureSplit build() {
            return new FeatureSplit(this.f35305a, this.f35306b, this.f35307c, this.f35308d);
        }

        public Builder setAndroidResourceConsumer(AndroidResourceConsumer androidResourceConsumer) {
            this.f35308d = androidResourceConsumer;
            return this;
        }

        public Builder setAndroidResourceProvider(AndroidResourceProvider androidResourceProvider) {
            this.f35307c = androidResourceProvider;
            return this;
        }

        public Builder setProgramConsumer(ProgramConsumer programConsumer) {
            this.f35305a = programConsumer;
            return this;
        }

        private Builder(C5094Ef0 c5094Ef0) {
            this.f35306b = new ArrayList();
        }
    }

    public final void a(C5879Rv c5879Rv) {
        this.f35301a = c5879Rv.f44020a;
        this.f35304d = c5879Rv.f44021b;
    }

    public AndroidResourceConsumer getAndroidResourceConsumer() {
        return this.f35304d;
    }

    public AndroidResourceProvider getAndroidResourceProvider() {
        return this.f35303c;
    }

    public ProgramConsumer getProgramConsumer() {
        return this.f35301a;
    }

    public List<ProgramResourceProvider> getProgramResourceProviders() {
        return this.f35302b;
    }

    public boolean isBase() {
        return false;
    }

    private FeatureSplit(ProgramConsumer programConsumer, ArrayList arrayList, AndroidResourceProvider androidResourceProvider, AndroidResourceConsumer androidResourceConsumer) {
        this.f35301a = programConsumer;
        this.f35302b = arrayList;
        this.f35303c = androidResourceProvider;
        this.f35304d = androidResourceConsumer;
    }

    public final void a(Z z10) {
        this.f35301a = z10;
    }

    public final void a(List list) {
        this.f35302b = list;
    }

    public final C5879Rv a() {
        C5879Rv c5879Rv = new C5879Rv(this.f35301a, this.f35304d);
        this.f35301a = null;
        this.f35304d = null;
        return c5879Rv;
    }

    public static Builder a(C5094Ef0 c5094Ef0) {
        return new Builder(c5094Ef0);
    }
}
