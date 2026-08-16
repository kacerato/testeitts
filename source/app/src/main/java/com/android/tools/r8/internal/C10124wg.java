package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Objects;
import java.util.Set;
import java.util.function.Supplier;

public final class C10124wg extends AbstractC10291xg {

    public static final boolean f53553g = true;

    public AbstractC10330xt f53554f;

    public C10124wg(AbstractC10330xt abstractC10330xt, Set set) {
        super(set);
        boolean z10 = f53553g;
        if (!z10 && abstractC10330xt.l()) {
            throw new AssertionError();
        }
        this.f53554f = abstractC10330xt;
        if (!z10 && u()) {
            throw new AssertionError((Object) "Must use BottomReceiverParameterState instead");
        }
        if (!z10 && w()) {
            throw new AssertionError((Object) "Must use UnknownParameterState instead");
        }
    }

    @Override
    public final C8854p10 A() {
        return C8854p10.b();
    }

    @Override
    public final AbstractC5361Iw0 a(C4798y c4798y, com.android.tools.r8.graph.M2 m22) {
        AbstractC10330xt a10 = AbstractC10291xg.a(c4798y, m22, this.f53554f);
        if (a10.equals(this.f53554f)) {
            return this;
        }
        if (a10.g()) {
            return C10373y7.f53943b;
        }
        if (f53553g || a10.h()) {
            return new C10124wg(a10, p());
        }
        throw new AssertionError();
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10124wg)) {
            return false;
        }
        C10124wg c10124wg = (C10124wg) obj;
        return this.f53554f.equals(c10124wg.f53554f) && s().equals(c10124wg.s());
    }

    @Override
    public final C10124wg f() {
        return this;
    }

    public final int hashCode() {
        return Objects.hash(C10124wg.class, this.f53554f, s());
    }

    @Override
    public final B7 q() {
        return C10373y7.f53943b;
    }

    @Override
    public final AbstractC7836iw0 r() {
        throw new C5417Jv0();
    }

    public final String toString() {
        if (!f53553g && t()) {
            throw new AssertionError();
        }
        return "ReceiverState(" + ((Object) this.f53554f) + ")";
    }

    @Override
    public final boolean v() {
        return this.f53554f.g();
    }

    @Override
    public final boolean w() {
        if (f53553g || !this.f53554f.l()) {
            return this.f53554f.j();
        }
        throw new AssertionError();
    }

    @Override
    public final AbstractC10330xt z() {
        if (f53553g || !this.f53554f.l()) {
            return this.f53554f;
        }
        throw new AssertionError();
    }

    @Override
    public final F1 a(C4798y c4798y) {
        int i10 = F1.f40064a;
        return C10504yv0.f54195b;
    }

    @Override
    public final AbstractC10458yg a(Supplier supplier) {
        return new C10124wg(this.f53554f, (Set) supplier.get());
    }

    @Override
    public final Q00 a(C4798y c4798y, AbstractC10291xg abstractC10291xg, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, InterfaceC6522b2 interfaceC6522b2) {
        boolean z10;
        boolean z11 = f53553g;
        if (!z11 && m23 != null && !m23.I0()) {
            throw new AssertionError();
        }
        AbstractC10330xt z12 = abstractC10291xg.z();
        AbstractC10330xt abstractC10330xt = this.f53554f;
        AbstractC10330xt a10 = abstractC10330xt.a(c4798y, z12, m22, m23);
        if (m23 != null) {
            AbstractC10330xt a11 = AbstractC5363Ix0.a(c4798y, a10, m23, C8854p10.h());
            if (!z11 && a11.l()) {
                throw new AssertionError();
            }
            this.f53554f = a11;
        } else {
            if (!z11 && a10.l()) {
                throw new AssertionError();
            }
            this.f53554f = a10;
        }
        boolean equals = this.f53554f.equals(abstractC10330xt);
        if (w()) {
            return C10671zv0.f54579b;
        }
        boolean a12 = a((AbstractC10458yg) abstractC10291xg);
        if (b(c4798y)) {
            return C10671zv0.f54579b;
        }
        if (this.f54103c || !abstractC10291xg.f54103c) {
            z10 = false;
        } else {
            z10 = true;
            this.f54103c = true;
        }
        if (equals && !a12 && !z10) {
            return this;
        }
        interfaceC6522b2.a();
        return this;
    }
}
