package com.android.tools.r8.retrace;

public interface MappingPartition {
    String getKey();

    byte[] getPayload();
}
