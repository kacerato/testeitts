package com.android.tools.r8.internal;

import com.android.tools.r8.naming.C10957k;
import com.android.tools.r8.retrace.RetraceClassElement;
import com.android.tools.r8.retrace.RetraceMethodElement;
import com.android.tools.r8.retrace.RetraceMethodResult;
import com.android.tools.r8.retrace.RetracedClassReference;
import com.android.tools.r8.retrace.RetracedMethodReference;
import com.android.tools.r8.retrace.RetracedSourceFile;
import java.util.HashSet;
import java.util.List;

public final class C6030Uj0 implements RetraceMethodElement {

    public final AbstractC9302rk0 f44849a;

    public final C6087Vj0 f44850b;

    public final C5566Mj0 f44851c;

    public final JV f44852d;

    public C6030Uj0(C6087Vj0 c6087Vj0, C5566Mj0 c5566Mj0, AbstractC9302rk0 abstractC9302rk0, JV jv) {
        this.f44851c = c5566Mj0;
        this.f44850b = c6087Vj0;
        this.f44849a = abstractC9302rk0;
        this.f44852d = jv;
    }

    @Override
    public final RetraceClassElement getClassElement() {
        return this.f44851c;
    }

    @Override
    public final RetraceMethodResult getParentResult() {
        return this.f44850b;
    }

    @Override
    public final RetracedMethodReference getRetracedMethod() {
        return this.f44849a;
    }

    @Override
    public final RetracedSourceFile getSourceFile() {
        RetracedClassReference holderClass = this.f44849a.getHolderClass();
        C10137wk0 c10137wk0 = this.f44850b.f45141c;
        HashSet hashSet = C8134kk0.f49747a;
        return new C9636tk0(holderClass, c10137wk0.f53594a.b(holderClass.getClassReference().getTypeName()));
    }

    @Override
    public final boolean isCompilerSynthesized() {
        JV jv = this.f44852d;
        if (jv == null) {
            return false;
        }
        if (jv.f41410b != null && !this.f44850b.isAmbiguous()) {
            return this.f44852d.f41410b.f();
        }
        List<C10957k.b> a10 = this.f44852d.f41409a.a();
        if (!a10.isEmpty()) {
            for (com.android.tools.r8.naming.mappinginformation.e eVar : ((C10957k.b) AT.b(a10)).f55976i) {
                if (eVar.l() || (eVar instanceof O40)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public final boolean isUnknown() {
        this.f44849a.getClass();
        return !(r0 instanceof C8969pk0);
    }
}
