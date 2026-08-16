package com.android.tools.r8.internal;

import java.util.BitSet;
import java.util.Set;
import java.util.function.Consumer;

public final class C8097kX extends TW {

    public static final int f49650j = 0;

    public final F1 f49651b;

    public final AbstractC10330xt f49652c;

    public final boolean f49653d;

    public final boolean f49654e;

    public final BitSet f49655f;

    public final BitSet f49656g;

    public final int f49657h;

    public final boolean f49658i;

    public C8097kX(F1 f12, AbstractC10330xt abstractC10330xt, boolean z10, boolean z11, BitSet bitSet, BitSet bitSet2, int i10, boolean z12) {
        this.f49651b = f12;
        this.f49652c = abstractC10330xt;
        this.f49653d = z10;
        this.f49654e = z11;
        this.f49655f = bitSet;
        this.f49656g = bitSet2;
        this.f49657h = i10;
        this.f49658i = z12;
    }

    public static TW a(final WY wy) {
        C7930jX c7930jX = new C7930jX();
        c7930jX.f49257a = wy.f45451f;
        c7930jX.f49258b = wy.f45455j;
        c7930jX.f49259c = wy.a(8);
        c7930jX.f49260d = wy.a(32);
        c7930jX.f49261e = wy.f45460o;
        c7930jX.f49262f = wy.f45459n;
        C7930jX a10 = c7930jX.a(wy.G(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8097kX.a(TW.this, (C7930jX) obj);
            }
        });
        a10.f49264h = wy.a(16);
        if (a10.f49258b.l() && a10.f49257a.isUnknown() && a10.f49263g < 0 && a10.f49261e == null && a10.f49262f == null && a10.f49259c && !a10.f49260d && !a10.f49264h) {
            return C5160Fj.f40293b;
        }
        return new C8097kX(a10.f49257a, a10.f49258b, a10.f49259c, a10.f49260d, a10.f49261e, a10.f49262f, a10.f49263g, a10.f49264h);
    }

    @Override
    public final boolean A() {
        throw new C5417Jv0();
    }

    @Override
    public final AbstractC9530t40 B() {
        throw new C5417Jv0();
    }

    @Override
    public final boolean C() {
        return this.f49653d;
    }

    @Override
    public final boolean D() {
        return this.f49654e;
    }

    @Override
    public final boolean E() {
        throw new C5417Jv0();
    }

    @Override
    public final boolean F() {
        return this.f49658i;
    }

    @Override
    public final boolean G() {
        return this.f49657h >= 0;
    }

    @Override
    public final boolean H() {
        throw new C5417Jv0();
    }

    @Override
    public final boolean e() {
        throw new C5417Jv0();
    }

    @Override
    public final boolean f() {
        throw new C5417Jv0();
    }

    @Override
    public final boolean g() {
        throw new C5417Jv0();
    }

    @Override
    public final r h() {
        int i10 = F1.f40064a;
        return C10504yv0.f54195b;
    }

    @Override
    public final F1 i() {
        return this.f49651b;
    }

    @Override
    public final F8 j() {
        throw new C5417Jv0();
    }

    @Override
    public final S7 k() {
        throw new C5417Jv0();
    }

    @Override
    public final InterfaceC6297Zc l() {
        throw new C5417Jv0();
    }

    @Override
    public final AbstractC7224fE m() {
        throw new C5417Jv0();
    }

    @Override
    public final AbstractC10330xt n() {
        return this.f49652c;
    }

    @Override
    public final AbstractC4892Au o() {
        throw new C5417Jv0();
    }

    @Override
    public final Set p() {
        throw new C5417Jv0();
    }

    @Override
    public final int q() {
        throw new C5417Jv0();
    }

    @Override
    public final BitSet r() {
        return this.f49655f;
    }

    @Override
    public final BitSet s() {
        return this.f49656g;
    }

    @Override
    public final int t() {
        return this.f49657h;
    }

    @Override
    public final AbstractC6205Xl0 u() {
        throw new C5417Jv0();
    }

    @Override
    public final BitSet v() {
        throw new C5417Jv0();
    }

    @Override
    public final boolean w() {
        throw new C5417Jv0();
    }

    @Override
    public final boolean y() {
        throw new C5417Jv0();
    }

    @Override
    public final boolean z() {
        throw new C5417Jv0();
    }

    public static void a(TW tw, C7930jX c7930jX) {
        c7930jX.f49263g = tw.t();
    }

    @Override
    public final boolean a(VJ vj2) {
        return this.f49653d;
    }

    @Override
    public final KV a() {
        throw new C5417Jv0();
    }

    @Override
    public final AbstractC7224fE a(QJ qj2) {
        throw new C5417Jv0();
    }
}
