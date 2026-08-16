package com.android.tools.r8.retrace;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.internal.M50;
import com.android.tools.r8.naming.MapVersion;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.MethodReference;

public class PartitionMappingSupplierAsync extends M50<PartitionMappingSupplierAsync> implements MappingSupplierAsync<PartitionMappingSupplierAsync> {

    public static class Builder extends PartitionMappingSupplierBuilderBase<Builder> {

        private byte[] f56276a;

        public PartitionMappingSupplierAsync build() {
            byte[] bArr = this.f56276a;
            if (bArr != null) {
                return new PartitionMappingSupplierAsync(this.registerCallback, this.prepareCallback, this.finishedCallback, this.allowExperimental, bArr, this.fallbackMapVersion);
            }
            throw new RuntimeException("Cannot build without providing metadata.");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Builder self() {
            return this;
        }

        public Builder setMetadata(byte[] bArr) {
            this.f56276a = bArr;
            return self();
        }

        private Builder() {
            super(MapVersion.MAP_VERSION_NONE);
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    @Override
    public Retracer createRetracer(DiagnosticsHandler diagnosticsHandler, MappingPartitionFromKeySupplier mappingPartitionFromKeySupplier) {
        return createRetracerFromPartitionSupplier(diagnosticsHandler, mappingPartitionFromKeySupplier);
    }

    @Override
    public PartitionMappingSupplierAsync self() {
        return this;
    }

    private PartitionMappingSupplierAsync(RegisterMappingPartitionCallback registerMappingPartitionCallback, PrepareMappingPartitionsCallback prepareMappingPartitionsCallback, FinishedPartitionMappingCallback finishedPartitionMappingCallback, boolean z10, byte[] bArr, MapVersion mapVersion) {
        super(registerMappingPartitionCallback, prepareMappingPartitionsCallback, finishedPartitionMappingCallback, z10, bArr, mapVersion);
    }

    @Override
    public PartitionMappingSupplierAsync mo1190registerClassUse(DiagnosticsHandler diagnosticsHandler, ClassReference classReference) {
        return (PartitionMappingSupplierAsync) super.mo1190registerClassUse(diagnosticsHandler, classReference);
    }

    @Override
    public PartitionMappingSupplierAsync registerFieldUse(DiagnosticsHandler diagnosticsHandler, FieldReference fieldReference) {
        return (PartitionMappingSupplierAsync) mo1190registerClassUse(diagnosticsHandler, fieldReference.getHolderClass());
    }

    @Override
    public PartitionMappingSupplierAsync registerMethodUse(DiagnosticsHandler diagnosticsHandler, MethodReference methodReference) {
        return (PartitionMappingSupplierAsync) mo1190registerClassUse(diagnosticsHandler, methodReference.getHolderClass());
    }
}
