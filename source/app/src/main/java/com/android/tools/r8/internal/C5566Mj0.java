package com.android.tools.r8.internal;

import com.android.tools.r8.naming.C10957k;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.references.TypeReference;
import com.android.tools.r8.retrace.RetraceClassElement;
import com.android.tools.r8.retrace.RetraceClassResult;
import com.android.tools.r8.retrace.RetraceFieldResult;
import com.android.tools.r8.retrace.RetraceFrameResult;
import com.android.tools.r8.retrace.RetraceMethodResult;
import com.android.tools.r8.retrace.RetraceStackTraceContext;
import com.android.tools.r8.retrace.RetraceUnknownJsonMappingInformationResult;
import com.android.tools.r8.retrace.RetracedClassReference;
import com.android.tools.r8.retrace.RetracedSourceFile;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.OptionalInt;
import java.util.function.BiFunction;

public final class C5566Mj0 implements RetraceClassElement {

    public final C5624Nj0 f42355a;

    public final C8301lk0 f42356b;

    public final C10957k f42357c;

    public C5566Mj0(C5624Nj0 c5624Nj0, C8301lk0 c8301lk0, C10957k c10957k) {
        this.f42355a = c5624Nj0;
        this.f42356b = c8301lk0;
        this.f42357c = c10957k;
    }

    public final C5740Pj0 a(C6503aw c6503aw) {
        BiFunction biFunction = new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                List a10;
                a10 = C5624Nj0.a((C10957k) obj, (AbstractC6836cw) obj2);
                return a10;
            }
        };
        QM0 qm0 = new QM0();
        ArrayList arrayList = new ArrayList();
        C5624Nj0.b(c6503aw, arrayList, biFunction, this);
        C5624Nj0 c5624Nj0 = this.f42355a;
        return (C5740Pj0) qm0.a(c5624Nj0, arrayList, c6503aw, c5624Nj0.f42678c);
    }

    @Override
    public final RetraceClassResult getParentResult() {
        return this.f42355a;
    }

    @Override
    public final RetracedClassReference getRetracedClass() {
        return this.f42356b;
    }

    @Override
    public final RetracedSourceFile getSourceFile() {
        C8301lk0 c8301lk0 = this.f42356b;
        C10137wk0 c10137wk0 = this.f42355a.f42678c;
        HashSet hashSet = C8134kk0.f49747a;
        return new C9636tk0(c8301lk0, c10137wk0.f53594a.b(c8301lk0.getClassReference().getTypeName()));
    }

    @Override
    public final RetraceUnknownJsonMappingInformationResult getUnknownJsonMappingInformation() {
        return C7801ik0.a(this.f42357c.c());
    }

    @Override
    public final boolean isCompilerSynthesized() {
        C10957k c10957k = this.f42355a.f42677b;
        if (c10957k == null) {
            return false;
        }
        Iterator<com.android.tools.r8.naming.mappinginformation.e> it = c10957k.c().iterator();
        while (it.hasNext()) {
            if (it.next().l()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final RetraceFieldResult lookupField(String str) {
        return a(new C6503aw(this.f42356b.f50088a, str));
    }

    @Override
    public final RetraceFrameResult lookupFrame(RetraceStackTraceContext retraceStackTraceContext, OptionalInt optionalInt, MethodReference methodReference) {
        return this.f42355a.a(new IW(methodReference)).narrowByPosition(retraceStackTraceContext, optionalInt);
    }

    @Override
    public final RetraceMethodResult lookupMethod(String str) {
        return a(new HW(this.f42356b.f50088a, str));
    }

    @Override
    public final RetraceFrameResult lookupFrame(RetraceStackTraceContext retraceStackTraceContext, OptionalInt optionalInt, String str) {
        return this.f42355a.a(new HW(this.f42356b.f50088a, str)).narrowByPosition(retraceStackTraceContext, optionalInt);
    }

    public final C6087Vj0 a(HW hw) {
        BiFunction biFunction = new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                List a10;
                a10 = C5624Nj0.a((C10957k) obj, (JW) obj2);
                return a10;
            }
        };
        SM0 sm0 = new SM0();
        ArrayList arrayList = new ArrayList();
        C5624Nj0.b(hw, arrayList, biFunction, this);
        C5624Nj0 c5624Nj0 = this.f42355a;
        return (C6087Vj0) sm0.a(c5624Nj0, arrayList, hw, c5624Nj0.f42678c);
    }

    @Override
    public final RetraceFrameResult lookupFrame(RetraceStackTraceContext retraceStackTraceContext, OptionalInt optionalInt, String str, List list, TypeReference typeReference) {
        return this.f42355a.a(new IW(Reference.method(this.f42356b.f50088a, str, list, typeReference))).narrowByPosition(retraceStackTraceContext, optionalInt);
    }
}
