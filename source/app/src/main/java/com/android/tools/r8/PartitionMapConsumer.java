package com.android.tools.r8;

import com.android.tools.r8.retrace.MappingPartition;
import com.android.tools.r8.retrace.MappingPartitionMetadata;

public interface PartitionMapConsumer extends H {
    void acceptMappingPartition(MappingPartition mappingPartition);

    void acceptMappingPartitionMetadata(MappingPartitionMetadata mappingPartitionMetadata);
}
