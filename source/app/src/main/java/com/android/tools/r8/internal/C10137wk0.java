package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.references.TypeReference;
import com.android.tools.r8.retrace.RetraceFieldResult;
import com.android.tools.r8.retrace.RetraceFrameResult;
import com.android.tools.r8.retrace.RetraceMethodResult;
import com.android.tools.r8.retrace.RetraceStackTraceContext;
import com.android.tools.r8.retrace.RetraceThrownExceptionResult;
import com.android.tools.r8.retrace.RetraceTypeResult;
import com.android.tools.r8.retrace.Retracer;
import java.util.OptionalInt;

public class C10137wk0 implements Retracer {

    public static final boolean f53593c = true;

    public final AbstractC6927dV f53594a;

    public final DiagnosticsHandler f53595b;

    public C10137wk0(AbstractC6927dV abstractC6927dV, DiagnosticsHandler diagnosticsHandler) {
        this.f53594a = abstractC6927dV;
        this.f53595b = diagnosticsHandler;
        if (!f53593c && abstractC6927dV == null) {
            throw new AssertionError();
        }
    }

    public static C10137wk0 a(AbstractC6927dV abstractC6927dV, DiagnosticsHandler diagnosticsHandler) {
        return new C10137wk0(abstractC6927dV, diagnosticsHandler);
    }

    @Override
    public final RetraceFieldResult retraceField(FieldReference fieldReference) {
        return retraceClass(fieldReference.getHolderClass()).a(new C6670bw(fieldReference));
    }

    @Override
    public final RetraceFrameResult retraceFrame(RetraceStackTraceContext retraceStackTraceContext, OptionalInt optionalInt, ClassReference classReference, String str) {
        C5624Nj0 retraceClass = retraceClass(classReference);
        return retraceClass.a(new HW(retraceClass.f42676a, str)).narrowByPosition(retraceStackTraceContext, optionalInt);
    }

    @Override
    public final RetraceMethodResult retraceMethod(MethodReference methodReference) {
        return retraceClass(methodReference.getHolderClass()).a(new IW(methodReference));
    }

    @Override
    public final RetraceThrownExceptionResult retraceThrownException(ClassReference classReference) {
        C5624Nj0 retraceClass = retraceClass(classReference);
        return new C7301fk0(retraceClass.f42676a, retraceClass.f42677b);
    }

    @Override
    public final RetraceTypeResult retraceType(TypeReference typeReference) {
        return new C7635hk0(typeReference, C7635hk0.a(typeReference, this), this);
    }

    @Override
    public final C5624Nj0 retraceClass(ClassReference classReference) {
        return new C5624Nj0(classReference, this.f53594a.a(classReference.getTypeName()), this);
    }

    @Override
    public final RetraceFrameResult retraceFrame(RetraceStackTraceContext retraceStackTraceContext, OptionalInt optionalInt, MethodReference methodReference) {
        C5624Nj0 retraceClass = retraceClass(methodReference.getHolderClass());
        return retraceClass.a(new IW(Reference.method(retraceClass.f42676a, methodReference.getMethodName(), methodReference.getFormalTypes(), methodReference.getReturnType()))).narrowByPosition(retraceStackTraceContext, optionalInt);
    }
}
