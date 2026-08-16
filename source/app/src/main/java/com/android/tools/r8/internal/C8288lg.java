package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.function.Supplier;

public final class C8288lg extends AbstractC10291xg {

    public static final boolean f50029h = true;

    public F1 f50030f;

    public AbstractC10330xt f50031g;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C8288lg(HashSet hashSet) {
        this(r0, C10664zt.f54560c, hashSet);
        int i10 = F1.f40064a;
        A7 a72 = A7.f38535b;
        boolean z10 = AbstractC10330xt.f53865a;
    }

    public static Q00 a(F1 f12, AbstractC10330xt abstractC10330xt, Set set) {
        if (f12.isUnknown() && abstractC10330xt.l()) {
            return C10671zv0.f54579b;
        }
        return new C8288lg(f12, abstractC10330xt, set);
    }

    @Override
    public final C8854p10 A() {
        return this.f50031g.d();
    }

    @Override
    public final C8288lg b() {
        return this;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8288lg)) {
            return false;
        }
        C8288lg c8288lg = (C8288lg) obj;
        return this.f50030f.equals(c8288lg.f50030f) && this.f50031g.equals(c8288lg.f50031g) && s().equals(c8288lg.s());
    }

    public final int hashCode() {
        return Objects.hash(C8288lg.class, this.f50030f, this.f50031g, s());
    }

    @Override
    public final B7 q() {
        return C9204r7.f51970b;
    }

    @Override
    public final AbstractC7836iw0 r() {
        return C7504gw0.f48390b;
    }

    public final String toString() {
        if (!f50029h && t()) {
            throw new AssertionError();
        }
        return "ClassState(type: " + ((Object) this.f50031g) + ", value: " + ((Object) this.f50030f) + ")";
    }

    @Override
    public final boolean v() {
        F1 f12 = this.f50030f;
        f12.getClass();
        return (f12 instanceof A7) && this.f50031g.g();
    }

    @Override
    public final boolean w() {
        return this.f50030f.isUnknown() && this.f50031g.l();
    }

    @Override
    public final AbstractC10330xt z() {
        return this.f50031g;
    }

    public C8288lg(F1 f12, AbstractC10330xt abstractC10330xt, Set set) {
        super(set);
        this.f50030f = f12;
        this.f50031g = abstractC10330xt;
        boolean z10 = f50029h;
        if (!z10 && u()) {
            throw new AssertionError((Object) "Must use BottomClassTypeParameterState instead");
        }
        if (!z10 && w()) {
            throw new AssertionError((Object) "Must use UnknownParameterState instead");
        }
    }

    @Override
    public final AbstractC5361Iw0 a(C4798y c4798y, com.android.tools.r8.graph.M2 m22) {
        AbstractC10330xt a10 = AbstractC10291xg.a(c4798y, m22, this.f50031g);
        if (a10.equals(this.f50031g)) {
            return this;
        }
        if (a10.g()) {
            return C9204r7.f51970b;
        }
        if (f50029h || a10.h()) {
            return new C8288lg(this.f50030f, a10, p());
        }
        throw new AssertionError();
    }

    @Override
    public final F1 a(C4798y c4798y) {
        if (this.f50031g.d().e()) {
            if (!f50029h) {
                F1 f12 = this.f50030f;
                f12.getClass();
                if (!(f12 instanceof C5283Hm0)) {
                    F1 f13 = this.f50030f;
                    f13.getClass();
                    if (!(f13 instanceof C8520n10) && !this.f50030f.isUnknown()) {
                        throw new AssertionError();
                    }
                }
            }
            c4798y.f38427t.getClass();
            return C5283Hm0.f40867c;
        }
        return this.f50030f;
    }

    @Override
    public final AbstractC10458yg a(Supplier supplier) {
        return new C8288lg(this.f50030f, this.f50031g, (Set) supplier.get());
    }

    @Override
    public final Q00 a(C4798y c4798y, AbstractC10291xg abstractC10291xg, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, InterfaceC6522b2 interfaceC6522b2) {
        boolean z10;
        if (!f50029h && !m23.I0()) {
            throw new AssertionError();
        }
        F1 a10 = abstractC10291xg.a(c4798y);
        F1 f12 = this.f50030f;
        J1 j12 = c4798y.f38430w;
        AbstractC8999pu0 b10 = m23.b(j12.f41551a);
        F1 a11 = j12.a(f12, a10, b10);
        if (!J1.f41268c && !a11.equals(j12.a(a10, f12, b10))) {
            throw new AssertionError();
        }
        this.f50030f = a11;
        boolean equals = a11.equals(f12);
        AbstractC10330xt z11 = abstractC10291xg.z();
        AbstractC10330xt abstractC10330xt = this.f50031g;
        AbstractC10330xt a12 = AbstractC5363Ix0.a(c4798y, abstractC10330xt.a(c4798y, z11, m22, m23), m23, C8854p10.h());
        this.f50031g = a12;
        boolean equals2 = a12.equals(abstractC10330xt);
        if (w()) {
            return C10671zv0.f54579b;
        }
        boolean a13 = a((AbstractC10458yg) abstractC10291xg);
        if (b(c4798y)) {
            return C10671zv0.f54579b;
        }
        if (this.f54103c || !abstractC10291xg.f54103c) {
            z10 = false;
        } else {
            z10 = true;
            this.f54103c = true;
        }
        if (equals && equals2 && !a13 && !z10) {
            return this;
        }
        interfaceC6522b2.a();
        return this;
    }
}
