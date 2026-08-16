package com.android.tools.r8.retrace;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.internal.AbstractC4995Cn0;
import com.android.tools.r8.internal.C5111En0;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.references.TypeReference;
import com.android.tools.r8.retrace.StackTraceElementProxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

public abstract class StackTraceElementProxy<T, ST extends StackTraceElementProxy<T, ST>> {
    public static void a(MappingSupplierBase mappingSupplierBase, DiagnosticsHandler diagnosticsHandler, TypeReference typeReference) {
        if (typeReference.isArray()) {
            typeReference = typeReference.asArray().getBaseType();
        }
        if (typeReference.isClass()) {
            mappingSupplierBase.mo1190registerClassUse(diagnosticsHandler, typeReference.asClass());
        }
    }

    public abstract ClassReference getClassReference();

    public abstract String getFieldName();

    public abstract String getFieldOrReturnType();

    public abstract int getLineNumber();

    public List<TypeReference> getMethodArgumentTypeReferences() {
        if (!hasMethodArguments()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        C5111En0 a10 = C5111En0.a(",\\s*");
        String methodArguments = getMethodArguments();
        methodArguments.getClass();
        Iterator a11 = a10.f40021c.a(a10, methodArguments);
        while (true) {
            AbstractC4995Cn0 abstractC4995Cn0 = (AbstractC4995Cn0) a11;
            if (!abstractC4995Cn0.hasNext()) {
                return arrayList;
            }
            arrayList.add(Reference.typeFromTypeName((String) abstractC4995Cn0.next()));
        }
    }

    public abstract String getMethodArguments();

    public abstract String getMethodName();

    public abstract String getSourceFile();

    public abstract boolean hasClassName();

    public abstract boolean hasFieldName();

    public abstract boolean hasFieldOrReturnType();

    public abstract boolean hasLineNumber();

    public abstract boolean hasMethodArguments();

    public abstract boolean hasMethodName();

    public abstract boolean hasSourceFile();

    public void registerUses(final MappingSupplierBase<?> mappingSupplierBase, final DiagnosticsHandler diagnosticsHandler) {
        if (hasClassName()) {
            mappingSupplierBase.mo1190registerClassUse(diagnosticsHandler, getClassReference());
        }
        if (hasMethodArguments()) {
            getMethodArgumentTypeReferences().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    StackTraceElementProxy.a(MappingSupplierBase.this, diagnosticsHandler, (TypeReference) obj);
                }
            });
        }
        if (!hasFieldOrReturnType() || getFieldOrReturnType().equals("void")) {
            return;
        }
        TypeReference typeFromTypeName = Reference.typeFromTypeName(getFieldOrReturnType());
        if (typeFromTypeName.isArray()) {
            typeFromTypeName = typeFromTypeName.asArray().getBaseType();
        }
        if (typeFromTypeName.isClass()) {
            mappingSupplierBase.mo1190registerClassUse(diagnosticsHandler, typeFromTypeName.asClass());
        }
    }

    public abstract T toRetracedItem(RetraceStackTraceElementProxy<T, ST> retraceStackTraceElementProxy, boolean z10);
}
