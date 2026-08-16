package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C7631hj extends AbstractC10561zE {

    public static final boolean f48685k = true;

    public C7631hj() {
        super(null);
    }

    @Override
    public final C7631hj N() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return abstractC10561zE instanceof C7631hj;
    }

    @Override
    public final boolean d1() {
        return true;
    }

    @Override
    public final boolean i1() {
        return true;
    }

    @Override
    public final int p2() {
        throw new C5417Jv0();
    }

    @Override
    public final int q2() {
        throw new C5417Jv0();
    }

    @Override
    public final int r2() {
        return 19;
    }

    @Override
    public final void a(NT nt) {
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0017, code lost:
    
        if ((r0 instanceof com.android.tools.r8.internal.B60.c) == false) goto L11;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(C5458Kn c5458Kn) {
        if (!f48685k) {
            if (!getPosition().o()) {
                B60 position = getPosition();
                position.getClass();
            }
            throw new AssertionError();
        }
        c5458Kn.getClass();
        c5458Kn.a(this, new C4994Cn(this, new C8154kr()));
    }

    @Override
    public final com.android.tools.r8.ir.optimize.E a(C4798y c4798y, C7215fB c7215fB) {
        return com.android.tools.r8.ir.optimize.E.f54734b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0017, code lost:
    
        if ((r0 instanceof com.android.tools.r8.internal.B60.c) == false) goto L11;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(C7543h9 c7543h9) {
        if (!f48685k) {
            if (!getPosition().o()) {
                B60 position = getPosition();
                position.getClass();
            }
            throw new AssertionError();
        }
        c7543h9.a(new C10607za(), this);
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }

    @Override
    public final void a(PS ps) {
        B60 position = getPosition();
        if (!PS.f43219u && ps.f43230k != position) {
            throw new AssertionError();
        }
        ps.c();
        ps.f43222c.a(209);
    }
}
