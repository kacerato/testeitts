package com.android.tools.r8.retrace;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.X;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.retrace.MappingSupplier;
import java.util.Set;

public interface MappingSupplier<T extends MappingSupplier<T>> extends MappingSupplierBase<T>, X {
    Retracer createRetracer(DiagnosticsHandler diagnosticsHandler);

    Set getMapVersions(DiagnosticsHandler diagnosticsHandler);

    @Override
    MappingSupplierBase mo1190registerClassUse(DiagnosticsHandler diagnosticsHandler, ClassReference classReference);

    @Override
    MappingSupplierBase registerFieldUse(DiagnosticsHandler diagnosticsHandler, FieldReference fieldReference);

    @Override
    MappingSupplierBase registerMethodUse(DiagnosticsHandler diagnosticsHandler, MethodReference methodReference);

    void verifyMappingFileHash(DiagnosticsHandler diagnosticsHandler);
}
