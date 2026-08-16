package com.android.tools.r8.retrace;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.internal.M50;
import com.android.tools.r8.naming.MapVersion;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.MethodReference;

public class PartitionMappingSupplier extends M50<PartitionMappingSupplier> implements MappingSupplier<PartitionMappingSupplier> {

    private final MappingPartitionFromKeySupplier f56274l;

    public static class Builder extends NoMetadataBuilderBase<Builder> {

        private byte[] f56275a;

        public PartitionMappingSupplier build() {
            MappingPartitionFromKeySupplier mappingPartitionFromKeySupplier = this.partitionSupplier;
            if (mappingPartitionFromKeySupplier == null) {
                throw new RuntimeException("Cannot build without providing a partition supplier");
            }
            byte[] bArr = this.f56275a;
            if (bArr != null) {
                return new PartitionMappingSupplier(this.registerCallback, this.prepareCallback, mappingPartitionFromKeySupplier, this.finishedCallback, this.allowExperimental, bArr, this.fallbackMapVersion);
            }
            throw new RuntimeException("Cannot build without providing metadata.");
        }

        @Override
        public Builder self() {
            return this;
        }

        public Builder setMetadata(byte[] bArr) {
            this.f56275a = bArr;
            return self();
        }

        private Builder() {
            super(MapVersion.MAP_VERSION_NONE);
        }
    }

    public static class NoMetadataBuilder extends NoMetadataBuilderBase<NoMetadataBuilder> {
        public PartitionMappingSupplier build() {
            MappingPartitionFromKeySupplier mappingPartitionFromKeySupplier = this.partitionSupplier;
            if (mappingPartitionFromKeySupplier == null) {
                throw new RuntimeException("Cannot build without providing a partition supplier.");
            }
            return new PartitionMappingSupplier(this.registerCallback, this.prepareCallback, mappingPartitionFromKeySupplier, this.finishedCallback, this.allowExperimental, null, this.fallbackMapVersion);
        }

        @Override
        public NoMetadataBuilder self() {
            return this;
        }

        private NoMetadataBuilder(MapVersion mapVersion) {
            super(mapVersion);
        }
    }

    public static abstract class NoMetadataBuilderBase<B extends NoMetadataBuilderBase<B>> extends PartitionMappingSupplierBuilderBase<B> {
        protected MappingPartitionFromKeySupplier partitionSupplier;

        public B setMappingPartitionFromKeySupplier(MappingPartitionFromKeySupplier mappingPartitionFromKeySupplier) {
            this.partitionSupplier = mappingPartitionFromKeySupplier;
            return (B) self();
        }

        private NoMetadataBuilderBase(MapVersion mapVersion) {
            super(mapVersion);
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    public static NoMetadataBuilder noMetadataBuilder(MapVersion mapVersion) {
        return new NoMetadataBuilder(mapVersion);
    }

    @Override
    public Retracer createRetracer(DiagnosticsHandler diagnosticsHandler) {
        return createRetracerFromPartitionSupplier(diagnosticsHandler, this.f56274l);
    }

    public MappingPartitionFromKeySupplier getMappingPartitionFromKeySupplier() {
        return this.f56274l;
    }

    @Override
    public PartitionMappingSupplier getPartitionMappingSupplier() {
        return this;
    }

    @Override
    public PartitionMappingSupplier self() {
        return this;
    }

    private PartitionMappingSupplier(RegisterMappingPartitionCallback registerMappingPartitionCallback, PrepareMappingPartitionsCallback prepareMappingPartitionsCallback, MappingPartitionFromKeySupplier mappingPartitionFromKeySupplier, FinishedPartitionMappingCallback finishedPartitionMappingCallback, boolean z10, byte[] bArr, MapVersion mapVersion) {
        super(registerMappingPartitionCallback, prepareMappingPartitionsCallback, finishedPartitionMappingCallback, z10, bArr, mapVersion);
        this.f56274l = mappingPartitionFromKeySupplier;
    }

    @Override
    public PartitionMappingSupplier mo1190registerClassUse(DiagnosticsHandler diagnosticsHandler, ClassReference classReference) {
        return (PartitionMappingSupplier) super.mo1190registerClassUse(diagnosticsHandler, classReference);
    }

    @Override
    public PartitionMappingSupplier registerFieldUse(DiagnosticsHandler diagnosticsHandler, FieldReference fieldReference) {
        return (PartitionMappingSupplier) mo1190registerClassUse(diagnosticsHandler, fieldReference.getHolderClass());
    }

    @Override
    public PartitionMappingSupplier registerMethodUse(DiagnosticsHandler diagnosticsHandler, MethodReference methodReference) {
        return (PartitionMappingSupplier) mo1190registerClassUse(diagnosticsHandler, methodReference.getHolderClass());
    }
}
