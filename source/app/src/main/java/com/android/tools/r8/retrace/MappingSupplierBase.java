package com.android.tools.r8.retrace;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.retrace.MappingSupplierBase;

public interface MappingSupplierBase<T extends MappingSupplierBase<T>> extends com.android.tools.r8.H {
    T mo1190registerClassUse(DiagnosticsHandler diagnosticsHandler, ClassReference classReference);

    T registerFieldUse(DiagnosticsHandler diagnosticsHandler, FieldReference fieldReference);

    T registerMethodUse(DiagnosticsHandler diagnosticsHandler, MethodReference methodReference);
}
