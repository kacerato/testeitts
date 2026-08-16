package com.android.tools.r8.retrace;

public interface RetraceAsyncResult<T> {
    T getResult(MappingPartitionFromKeySupplier mappingPartitionFromKeySupplier);
}
