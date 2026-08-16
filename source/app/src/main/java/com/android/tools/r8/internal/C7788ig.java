package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import java.util.function.Supplier;

public final class C7788ig extends AbstractC10291xg {

    public static final boolean f49009g = true;

    public C8854p10 f49010f;

    public C7788ig(C8854p10 c8854p10, Set set) {
        super(set);
        this.f49010f = c8854p10;
        boolean z10 = f49009g;
        if (!z10 && u()) {
            throw new AssertionError((Object) "Must use BottomArrayTypeParameterState instead");
        }
        if (!z10 && this.f49010f.f()) {
            throw new AssertionError((Object) "Must use UnknownParameterState instead");
        }
    }

    @Override
    public final C8854p10 A() {
        return this.f49010f;
    }

    @Override
    public final AbstractC5361Iw0 a(C4798y c4798y, com.android.tools.r8.graph.M2 m22) {
        return this;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7788ig)) {
            return false;
        }
        C7788ig c7788ig = (C7788ig) obj;
        return this.f49010f.equals(c7788ig.f49010f) && s().equals(c7788ig.s());
    }

    public final int hashCode() {
        return Objects.hash(C7788ig.class, this.f49010f, s());
    }

    @Override
    public final B7 q() {
        return C8871p7.f51443b;
    }

    @Override
    public final AbstractC7836iw0 r() {
        return C7337fw0.f48140b;
    }

    public final String toString() {
        if (!f49009g && t()) {
            throw new AssertionError();
        }
        return "ArrayState(" + ((Object) this.f49010f) + ")";
    }

    @Override
    public final boolean v() {
        C8854p10 c8854p10 = this.f49010f;
        c8854p10.getClass();
        return c8854p10 == C8854p10.f51412d;
    }

    @Override
    public final boolean w() {
        return this.f49010f.f();
    }

    @Override
    public final AbstractC10330xt z() {
        return AbstractC10330xt.m();
    }

    @Override
    public final C7788ig a() {
        return this;
    }

    public static Q00 a(C8854p10 c8854p10) {
        if (c8854p10.f()) {
            return C10671zv0.f54579b;
        }
        return new C7788ig(c8854p10, Collections.EMPTY_SET);
    }

    @Override
    public final F1 a(C4798y c4798y) {
        if (this.f49010f.e()) {
            c4798y.f38427t.getClass();
            return C5283Hm0.f40867c;
        }
        int i10 = F1.f40064a;
        return C10504yv0.f54195b;
    }

    @Override
    public final AbstractC10458yg a(Supplier supplier) {
        return new C7788ig(this.f49010f, (Set) supplier.get());
    }

    @Override
    public final Q00 a(C4798y c4798y, AbstractC10291xg abstractC10291xg, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, InterfaceC6522b2 interfaceC6522b2) {
        if (!f49009g && !m23.E0()) {
            throw new AssertionError();
        }
        C8854p10 A10 = abstractC10291xg.A();
        C8854p10 c8854p10 = this.f49010f;
        C8854p10 a10 = c8854p10.a(A10);
        this.f49010f = a10;
        boolean z10 = false;
        boolean z11 = a10 != c8854p10;
        if (a10.f()) {
            return C10671zv0.f54579b;
        }
        boolean a11 = a((AbstractC10458yg) abstractC10291xg);
        if (b(c4798y)) {
            return C10671zv0.f54579b;
        }
        if (!this.f54103c && abstractC10291xg.f54103c) {
            this.f54103c = true;
            z10 = true;
        }
        if (!z11 && !a11 && !z10) {
            return this;
        }
        interfaceC6522b2.a();
        return this;
    }
}
