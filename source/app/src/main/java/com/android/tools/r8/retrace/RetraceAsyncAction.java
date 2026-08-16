package com.android.tools.r8.retrace;

public interface RetraceAsyncAction {
    void execute(MappingPartitionFromKeySupplier mappingPartitionFromKeySupplier);
}
