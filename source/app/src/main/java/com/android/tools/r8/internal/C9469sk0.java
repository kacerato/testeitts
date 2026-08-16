package com.android.tools.r8.internal;

import com.android.tools.r8.retrace.RetracedClassReference;
import com.android.tools.r8.retrace.RetracedMethodReference;
import com.android.tools.r8.retrace.RetracedSingleFrame;
import com.android.tools.r8.retrace.RetracedSourceFile;
import java.util.HashSet;

public final class C9469sk0 implements RetracedSingleFrame {

    public final C5856Rj0 f52442a;

    public final RetracedMethodReference f52443b;

    public final int f52444c;

    public C9469sk0(C5856Rj0 c5856Rj0, RetracedMethodReference retracedMethodReference, int i10) {
        this.f52442a = c5856Rj0;
        this.f52443b = retracedMethodReference;
        this.f52444c = i10;
    }

    @Override
    public final int getIndex() {
        return this.f52444c;
    }

    @Override
    public final RetracedMethodReference getMethodReference() {
        return this.f52443b;
    }

    @Override
    public final RetracedSourceFile getSourceFile() {
        C5856Rj0 c5856Rj0 = this.f52442a;
        RetracedClassReference holderClass = this.f52443b.getHolderClass();
        C10137wk0 c10137wk0 = c5856Rj0.f43975b.f44559c;
        HashSet hashSet = C8134kk0.f49747a;
        return new C9636tk0(holderClass, c10137wk0.f53594a.b(holderClass.getClassReference().getTypeName()));
    }
}
