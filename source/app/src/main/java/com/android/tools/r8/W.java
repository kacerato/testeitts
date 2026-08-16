package com.android.tools.r8;

import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C9042q80;
import com.android.tools.r8.naming.C10912b;
import com.android.tools.r8.retrace.ProguardMapPartitioner;
import java.io.IOException;
import java.util.Objects;

public final class W implements com.android.tools.r8.naming.Q {

    public static final boolean f35549b = true;

    public final PartitionMapConsumer f35550a;

    public W(PartitionMapConsumer partitionMapConsumer) {
        if (!f35549b && partitionMapConsumer == null) {
            throw new AssertionError();
        }
        this.f35550a = partitionMapConsumer;
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [com.android.tools.r8.retrace.ProguardMapPartitionerBuilder] */
    @Override
    public final void a(DiagnosticsHandler diagnosticsHandler, C10912b c10912b) {
        try {
            PartitionMapConsumer partitionMapConsumer = this.f35550a;
            ?? proguardMapProducer = ProguardMapPartitioner.builder(diagnosticsHandler).setProguardMapProducer(new C9042q80(c10912b));
            PartitionMapConsumer partitionMapConsumer2 = this.f35550a;
            Objects.requireNonNull(partitionMapConsumer2);
            partitionMapConsumer.acceptMappingPartitionMetadata(proguardMapProducer.setPartitionConsumer(new M3(partitionMapConsumer2)).setAllowEmptyMappedRanges(false).setAllowExperimentalMapping(false).build().run());
        } catch (IOException unused) {
            throw new C5417Jv0("IOExceptions should only occur when parsing");
        }
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        this.f35550a.finished(diagnosticsHandler);
    }
}
