package com.android.tools.r8.retrace;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.PartitionMapConsumer;

public class PartitionCommand {

    private final C11092b f56268a;

    private final ProguardMapProducer f56269b;

    private final PartitionMapConsumer f56270c;

    public static class Builder {

        private final C11092b f56271a;

        private ProguardMapProducer f56272b;

        private PartitionMapConsumer f56273c;

        public PartitionCommand build() {
            ProguardMapProducer proguardMapProducer = this.f56272b;
            if (proguardMapProducer == null) {
                throw new RetracePartitionException("ProguardMapSupplier not specified");
            }
            PartitionMapConsumer partitionMapConsumer = this.f56273c;
            if (partitionMapConsumer != null) {
                return new PartitionCommand(this.f56271a, proguardMapProducer, partitionMapConsumer);
            }
            throw new RetracePartitionException("PartitionMapConsumer not specified");
        }

        public Builder setPartitionMapConsumer(PartitionMapConsumer partitionMapConsumer) {
            this.f56273c = partitionMapConsumer;
            return this;
        }

        public Builder setProguardMapProducer(ProguardMapProducer proguardMapProducer) {
            this.f56272b = proguardMapProducer;
            return this;
        }

        private Builder(C11092b c11092b) {
            this.f56271a = c11092b;
        }
    }

    public static Builder builder() {
        return new Builder(new C11092b());
    }

    public DiagnosticsHandler getDiagnosticsHandler() {
        return this.f56268a;
    }

    public PartitionMapConsumer getPartitionMapConsumer() {
        return this.f56270c;
    }

    public ProguardMapProducer getProguardMapProducer() {
        return this.f56269b;
    }

    private PartitionCommand(C11092b c11092b, ProguardMapProducer proguardMapProducer, PartitionMapConsumer partitionMapConsumer) {
        this.f56268a = c11092b;
        this.f56269b = proguardMapProducer;
        this.f56270c = partitionMapConsumer;
    }
}
