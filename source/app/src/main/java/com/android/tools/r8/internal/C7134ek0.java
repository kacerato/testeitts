package com.android.tools.r8.internal;

import com.android.tools.r8.naming.C10957k;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.retrace.RetraceStackTraceContext;
import com.android.tools.r8.retrace.RetraceThrownExceptionElement;
import com.android.tools.r8.retrace.RetraceThrownExceptionResult;
import com.android.tools.r8.retrace.RetracedClassReference;
import com.android.tools.r8.retrace.RetracedSourceFile;

public final class C7134ek0 implements RetraceThrownExceptionElement {

    public final C7301fk0 f47768a;

    public final C8301lk0 f47769b;

    public final C10957k f47770c;

    public final ClassReference f47771d;

    public C7134ek0(C7301fk0 c7301fk0, C8301lk0 c8301lk0, C10957k c10957k, ClassReference classReference) {
        this.f47768a = c7301fk0;
        this.f47769b = c8301lk0;
        this.f47770c = c10957k;
        this.f47771d = classReference;
    }

    @Override
    public final RetraceStackTraceContext getContext() {
        C6258Yj0 c6258Yj0 = new C6258Yj0();
        ClassReference classReference = this.f47771d;
        c6258Yj0.f46073a = classReference;
        return new C6315Zj0(classReference, c6258Yj0.f46074b);
    }

    @Override
    public final RetraceThrownExceptionResult getParentResult() {
        return this.f47768a;
    }

    @Override
    public final RetracedClassReference getRetracedClass() {
        return this.f47769b;
    }

    @Override
    public final RetracedSourceFile getSourceFile() {
        String str;
        C10957k c10957k = this.f47770c;
        if (c10957k != null) {
            for (com.android.tools.r8.naming.mappinginformation.e eVar : c10957k.c()) {
                eVar.getClass();
                if (eVar instanceof com.android.tools.r8.naming.mappinginformation.a) {
                    str = eVar.a().f56009a;
                    break;
                }
            }
        }
        str = null;
        return new C9636tk0(this.f47769b, str);
    }

    @Override
    public final boolean isCompilerSynthesized() {
        return false;
    }
}
