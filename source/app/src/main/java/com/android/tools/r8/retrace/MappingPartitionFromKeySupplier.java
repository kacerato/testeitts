package com.android.tools.r8.retrace;

@FunctionalInterface
public interface MappingPartitionFromKeySupplier {
    byte[] get(String str);
}
