package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Collections;

public final class C5998Tw0 extends AbstractC10102wY {

    public static final boolean f44623c = true;

    public final AbstractC10102wY f44624b;

    public C5998Tw0(AbstractC10102wY abstractC10102wY) {
        this.f44624b = abstractC10102wY;
    }

    @Override
    public final Collection a(AA aa2) {
        boolean z10 = f44623c;
        if (!z10) {
            Collection a10 = this.f44624b.a(aa2);
            if (!z10 && a10.size() != 1) {
                throw new AssertionError();
            }
            AA aa3 = (AA) a10.iterator().next();
            if (!z10 && (aa3.f38553b.size() != aa2.f38553b.size() || !aa2.f38553b.containsAll(aa3))) {
                throw new AssertionError();
            }
        }
        return Collections.singletonList(aa2);
    }

    @Override
    public final String f() {
        return "VerifyMultiClassPolicyAlwaysSatisfied(" + this.f44624b.f() + ")";
    }

    @Override
    public final boolean l() {
        return !C8570nJ.b() || this.f44624b.l();
    }
}
