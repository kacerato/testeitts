package com.android.tools.r8.retrace;

import com.android.tools.r8.naming.MapVersion;
import com.android.tools.r8.retrace.PartitionMappingSupplierBuilderBase;

public abstract class PartitionMappingSupplierBuilderBase<T extends PartitionMappingSupplierBuilderBase<T>> {
    protected final MapVersion fallbackMapVersion;
    protected RegisterMappingPartitionCallback registerCallback = RegisterMappingPartitionCallback.empty();
    protected PrepareMappingPartitionsCallback prepareCallback = PrepareMappingPartitionsCallback.empty();
    protected FinishedPartitionMappingCallback finishedCallback = FinishedPartitionMappingCallback.empty();
    protected boolean allowExperimental = false;

    public PartitionMappingSupplierBuilderBase(MapVersion mapVersion) {
        this.fallbackMapVersion = mapVersion;
    }

    public abstract T self();

    public T setAllowExperimental(boolean z10) {
        this.allowExperimental = z10;
        return self();
    }

    public T setFinishedPartitionMappingCallback(FinishedPartitionMappingCallback finishedPartitionMappingCallback) {
        this.finishedCallback = finishedPartitionMappingCallback;
        return self();
    }

    public T setPrepareMappingPartitionsCallback(PrepareMappingPartitionsCallback prepareMappingPartitionsCallback) {
        this.prepareCallback = prepareMappingPartitionsCallback;
        return self();
    }

    public T setRegisterMappingPartitionCallback(RegisterMappingPartitionCallback registerMappingPartitionCallback) {
        this.registerCallback = registerMappingPartitionCallback;
        return self();
    }
}
