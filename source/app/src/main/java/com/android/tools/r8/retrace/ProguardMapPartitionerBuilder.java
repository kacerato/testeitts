package com.android.tools.r8.retrace;

import com.android.tools.r8.retrace.ProguardMapPartitioner;
import com.android.tools.r8.retrace.ProguardMapPartitionerBuilder;
import java.util.function.Consumer;

public interface ProguardMapPartitionerBuilder<B extends ProguardMapPartitionerBuilder<B, P>, P extends ProguardMapPartitioner> {
    P build();

    B setAllowEmptyMappedRanges(boolean z10);

    B setAllowExperimentalMapping(boolean z10);

    B setPartitionConsumer(Consumer<MappingPartition> consumer);

    B setProguardMapProducer(ProguardMapProducer proguardMapProducer);
}
