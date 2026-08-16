package com.android.tools.r8.internal;

import com.android.tools.r8.retrace.ProguardMapProducer;
import com.android.tools.r8.retrace.ProguardMappingSupplier;

public final class C9876v80 extends ProguardMappingSupplier.Builder {

    public ProguardMapProducer f53021a;

    public boolean f53022b = false;

    public boolean f53023c = true;

    @Override
    public final ProguardMappingSupplier build() {
        return new C10043w80(this.f53021a, this.f53022b, this.f53023c);
    }

    @Override
    public final ProguardMappingSupplier.Builder self() {
        return this;
    }

    @Override
    public final ProguardMappingSupplier.Builder setAllowExperimental(boolean z10) {
        this.f53022b = z10;
        return this;
    }

    @Override
    public final ProguardMappingSupplier.Builder setLoadAllDefinitions(boolean z10) {
        this.f53023c = z10;
        return this;
    }

    @Override
    public final ProguardMappingSupplier.Builder setProguardMapProducer(ProguardMapProducer proguardMapProducer) {
        this.f53021a = proguardMapProducer;
        return this;
    }
}
