package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class C9784ue {

    public final List f52904a;

    public C9784ue(AbstractC9617te... abstractC9617teArr) {
        this.f52904a = Arrays.asList(abstractC9617teArr);
    }

    public final C8699o50 a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX, C5035Df c5035Df, C8659ns0 c8659ns0, String str, C8570nJ c8570nJ) {
        boolean z10 = false;
        for (AbstractC9617te abstractC9617te : this.f52904a) {
            z10 |= abstractC9617te.a(c7215fB, abstractC6931dX, c5035Df, c8659ns0).a().d();
            str = C8048kB.a(c7215fB, "IR after " + abstractC9617te.a(), str, c8570nJ);
        }
        return new C8699o50(Boolean.valueOf(z10), str);
    }

    public C9784ue(ArrayList arrayList) {
        this.f52904a = arrayList;
    }
}
