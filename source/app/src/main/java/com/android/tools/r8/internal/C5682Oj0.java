package com.android.tools.r8.internal;

import com.android.tools.r8.retrace.RetraceClassElement;
import com.android.tools.r8.retrace.RetraceFieldElement;
import com.android.tools.r8.retrace.RetraceFieldResult;
import com.android.tools.r8.retrace.RetracedClassReference;
import com.android.tools.r8.retrace.RetracedFieldReference;
import com.android.tools.r8.retrace.RetracedSourceFile;
import java.util.HashSet;

public final class C5682Oj0 implements RetraceFieldElement {

    public static final boolean f42971e = true;

    public final AbstractC8802ok0 f42972a;

    public final C5740Pj0 f42973b;

    public final C5566Mj0 f42974c;

    public final com.android.tools.r8.naming.V f42975d;

    public C5682Oj0(C5740Pj0 c5740Pj0, C5566Mj0 c5566Mj0, AbstractC8802ok0 abstractC8802ok0, com.android.tools.r8.naming.V v10) {
        this.f42974c = c5566Mj0;
        this.f42972a = abstractC8802ok0;
        this.f42973b = c5740Pj0;
        this.f42975d = v10;
    }

    @Override
    public final RetraceClassElement getClassElement() {
        return this.f42974c;
    }

    @Override
    public final RetracedFieldReference getField() {
        return this.f42972a;
    }

    @Override
    public final RetraceFieldResult getParentResult() {
        return this.f42973b;
    }

    @Override
    public final RetracedSourceFile getSourceFile() {
        RetracedClassReference holderClass = this.f42972a.getHolderClass();
        C10137wk0 c10137wk0 = this.f42973b.f43346c;
        HashSet hashSet = C8134kk0.f49747a;
        return new C9636tk0(holderClass, c10137wk0.f53594a.b(holderClass.getClassReference().getTypeName()));
    }

    @Override
    public final boolean isCompilerSynthesized() {
        com.android.tools.r8.naming.V v10 = this.f42975d;
        return v10 != null && v10.f();
    }

    @Override
    public final boolean isUnknown() {
        if (!f42971e) {
            boolean z10 = this.f42975d == null;
            this.f42972a.getClass();
            if (z10 != (!(r2 instanceof C8468mk0))) {
                throw new AssertionError();
            }
        }
        this.f42972a.getClass();
        return !(r0 instanceof C8468mk0);
    }
}
