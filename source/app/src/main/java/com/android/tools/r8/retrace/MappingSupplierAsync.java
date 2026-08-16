package com.android.tools.r8.retrace;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.retrace.MappingSupplierAsync;

public interface MappingSupplierAsync<T extends MappingSupplierAsync<T>> extends MappingSupplierBase<T> {
    Retracer createRetracer(DiagnosticsHandler diagnosticsHandler, MappingPartitionFromKeySupplier mappingPartitionFromKeySupplier);

    @Override
    MappingSupplierBase mo1190registerClassUse(DiagnosticsHandler diagnosticsHandler, ClassReference classReference);

    @Override
    MappingSupplierBase registerFieldUse(DiagnosticsHandler diagnosticsHandler, FieldReference fieldReference);

    @Override
    MappingSupplierBase registerMethodUse(DiagnosticsHandler diagnosticsHandler, MethodReference methodReference);
}
