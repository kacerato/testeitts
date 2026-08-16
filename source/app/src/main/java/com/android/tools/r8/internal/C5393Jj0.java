package com.android.tools.r8.internal;

import com.android.tools.r8.retrace.RetraceStackTraceElementProxy;
import com.android.tools.r8.retrace.RetracedFieldReference;
import com.android.tools.r8.retrace.RetracedMethodReference;
import com.android.tools.r8.retrace.RetracedTypeReference;
import java.util.Comparator;
import java.util.List;
import java.util.function.Function;

public final class C5393Jj0 extends AbstractC7500gv {

    public static final boolean f41469b = true;

    public final boolean f41470a;

    public C5393Jj0(boolean z10) {
        this.f41470a = z10;
    }

    @Override
    public final int a(Object obj) {
        return 0;
    }

    @Override
    public final boolean a(RetraceStackTraceElementProxy retraceStackTraceElementProxy, RetraceStackTraceElementProxy retraceStackTraceElementProxy2) {
        if (retraceStackTraceElementProxy == retraceStackTraceElementProxy2) {
            return true;
        }
        if (a(retraceStackTraceElementProxy, retraceStackTraceElementProxy2, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Boolean.valueOf(((RetraceStackTraceElementProxy) obj).hasRetracedClass());
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                String typeName;
                typeName = ((RetraceStackTraceElementProxy) obj).getRetracedClass().getTypeName();
                return typeName;
            }
        }) || a(retraceStackTraceElementProxy, retraceStackTraceElementProxy2, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Boolean.valueOf(((RetraceStackTraceElementProxy) obj).hasSourceFile());
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((RetraceStackTraceElementProxy) obj).getSourceFile();
            }
        })) {
            return false;
        }
        if (!f41469b && retraceStackTraceElementProxy.getOriginalItem() != retraceStackTraceElementProxy2.getOriginalItem()) {
            throw new AssertionError();
        }
        if (((this.f41470a || (retraceStackTraceElementProxy.getOriginalItem().hasLineNumber() && retraceStackTraceElementProxy.getOriginalItem().getLineNumber() > 0)) && a(retraceStackTraceElementProxy, retraceStackTraceElementProxy2, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Boolean.valueOf(((RetraceStackTraceElementProxy) obj).hasLineNumber());
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Integer.valueOf(((RetraceStackTraceElementProxy) obj).getLineNumber());
            }
        })) || retraceStackTraceElementProxy.hasRetracedMethod() != retraceStackTraceElementProxy2.hasRetracedMethod()) {
            return false;
        }
        if (retraceStackTraceElementProxy.hasRetracedMethod()) {
            RetracedMethodReference retracedMethod = retraceStackTraceElementProxy.getRetracedMethod();
            RetracedMethodReference retracedMethod2 = retraceStackTraceElementProxy2.getRetracedMethod();
            if (retracedMethod.isKnown() != retracedMethod2.isKnown() || !retracedMethod.getMethodName().equals(retracedMethod2.getMethodName())) {
                return false;
            }
            if (this.f41470a && ((retracedMethod.isKnown() && !retracedMethod.asKnown().getMethodReference().toString().equals(retracedMethod2.asKnown().getMethodReference().toString())) || (!retracedMethod.isKnown() && !retracedMethod.getMethodName().equals(retracedMethod2.getMethodName())))) {
                return false;
            }
        }
        if (retraceStackTraceElementProxy.hasRetracedField() != retraceStackTraceElementProxy2.hasRetracedField()) {
            return false;
        }
        if (retraceStackTraceElementProxy.hasRetracedField()) {
            RetracedFieldReference retracedField = retraceStackTraceElementProxy.getRetracedField();
            RetracedFieldReference retracedField2 = retraceStackTraceElementProxy2.getRetracedField();
            if (retracedField.isKnown() != retracedField2.isKnown() || !retracedField.getFieldName().equals(retracedField2.getFieldName())) {
                return false;
            }
            if (this.f41470a && ((retracedField.isKnown() && !retracedField.asKnown().getFieldReference().toString().equals(retracedField2.asKnown().getFieldReference().toString())) || (retracedField.isUnknown() && !retracedField.getFieldName().equals(retracedField2.getFieldName())))) {
                return false;
            }
        }
        if (retraceStackTraceElementProxy.hasRetracedFieldOrReturnType() != retraceStackTraceElementProxy2.hasRetracedFieldOrReturnType()) {
            return false;
        }
        if (retraceStackTraceElementProxy.hasRetracedFieldOrReturnType()) {
            RetracedTypeReference retracedFieldOrReturnType = retraceStackTraceElementProxy.getRetracedFieldOrReturnType();
            RetracedTypeReference retracedFieldOrReturnType2 = retraceStackTraceElementProxy2.getRetracedFieldOrReturnType();
            if (retracedFieldOrReturnType.isVoid() != retracedFieldOrReturnType2.isVoid() || (!retracedFieldOrReturnType.isVoid() && !retracedFieldOrReturnType.getTypeName().equals(retracedFieldOrReturnType2.getTypeName()))) {
                return false;
            }
        }
        if (retraceStackTraceElementProxy.hasRetracedMethodArguments() != retraceStackTraceElementProxy2.hasRetracedMethodArguments()) {
            return false;
        }
        if (retraceStackTraceElementProxy.hasRetracedMethodArguments()) {
            List<RetracedTypeReference> retracedMethodArguments = retraceStackTraceElementProxy.getRetracedMethodArguments();
            List<RetracedTypeReference> retracedMethodArguments2 = retraceStackTraceElementProxy2.getRetracedMethodArguments();
            if (retracedMethodArguments.size() != retracedMethodArguments2.size()) {
                return false;
            }
            for (int i10 = 0; i10 < retracedMethodArguments.size(); i10++) {
                RetracedTypeReference retracedTypeReference = retracedMethodArguments.get(i10);
                RetracedTypeReference retracedTypeReference2 = retracedMethodArguments2.get(i10);
                if (retracedTypeReference.isVoid() == retracedTypeReference2.isVoid() && (retracedTypeReference.isVoid() || retracedTypeReference.getTypeName().equals(retracedTypeReference2.getTypeName()))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean a(RetraceStackTraceElementProxy retraceStackTraceElementProxy, RetraceStackTraceElementProxy retraceStackTraceElementProxy2, Function function, Function function2) {
        return Comparator.comparing(function).thenComparing(function2, Comparator.nullsFirst(new C6906dK0())).compare(retraceStackTraceElementProxy, retraceStackTraceElementProxy2) != 0;
    }
}
