package com.android.tools.r8.retrace;

import com.android.tools.r8.internal.C9876v80;

public abstract class ProguardMappingSupplier implements MappingSupplier<ProguardMappingSupplier> {

    public static abstract class Builder extends MappingSupplierBuilder<ProguardMappingSupplier, Builder> {
        public abstract Builder setLoadAllDefinitions(boolean z10);

        public abstract Builder setProguardMapProducer(ProguardMapProducer proguardMapProducer);
    }

    public static Builder builder() {
        return new C9876v80();
    }
}
