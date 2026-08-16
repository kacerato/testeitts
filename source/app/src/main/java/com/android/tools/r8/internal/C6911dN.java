package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.Set;

public final class C6911dN extends AbstractC9245rN {

    public static final C6911dN f47384c = new C6911dN(IM.f41061c);

    public static final C6911dN f47385d = new C6911dN(IM.f41062d);

    public static final C6911dN f47386e = new C6911dN(IM.f41063e);

    public static final boolean f47387f = true;

    public final IM f47388b;

    public C6911dN(IM im2) {
        if (!f47387f && im2 == null) {
            throw new AssertionError();
        }
        this.f47388b = im2;
    }

    @Override
    public final KeepSpecProtos.ConstraintElement a() {
        throw new FN("Unexpected attempt to build element for annotation constraint");
    }

    @Override
    public final KeepSpecProtos.Constraint.Builder b() {
        return KeepSpecProtos.Constraint.newBuilder().setAnnotation(this.f47388b.a());
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C6911dN) {
            return this.f47388b.equals(((C6911dN) obj).f47388b);
        }
        return false;
    }

    @Override
    public final int hashCode() {
        return this.f47388b.hashCode();
    }

    @Override
    public final void a(AbstractC9579tN abstractC9579tN) {
        abstractC9579tN.a(this);
    }

    @Override
    public final void a(C6415aP c6415aP) {
        c6415aP.f46512b.add(EnumC6582bP.f46759f);
    }

    @Override
    public final void a(Set set) {
        if ((this.f47388b.f41066b & 1) > 0) {
            set.add(KM.f41649d);
            set.add(KM.f41650e);
            set.add(KM.f41651f);
        }
        if ((this.f47388b.f41066b & 2) > 0) {
            set.add(KM.f41652g);
            set.add(KM.f41653h);
            set.add(KM.f41654i);
        }
    }
}
