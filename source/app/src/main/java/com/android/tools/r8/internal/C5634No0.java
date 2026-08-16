package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4594n3;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.AbstractC11516y1;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11447u;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;

public final class C5634No0 extends AbstractC7670hw implements InterfaceC10172ww {

    public static final boolean f42701m = true;

    public C5634No0(C4554l1 c4554l1, C10340xw0 c10340xw0) {
        super(c4554l1, null, Collections.singletonList(c10340xw0));
    }

    @Override
    public final boolean F1() {
        return true;
    }

    @Override
    public final C5634No0 L0() {
        return this;
    }

    @Override
    public final InterfaceC10172ww T() {
        return this;
    }

    @Override
    public final void a(C10340xw0 c10340xw0) {
        a(0, c10340xw0);
    }

    @Override
    public final boolean b(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        if (c4798y.f().i()) {
            C4798y<C11245i> M10 = c4798y.M();
            C11245i f10 = M10.f();
            com.android.tools.r8.graph.D3 c10 = f10.c(getField());
            if (a(c4798y, h52, c10394yE, c10)) {
                return true;
            }
            final com.android.tools.r8.graph.F0 p10 = c10.p();
            if (!f42701m && p10 == null) {
                throw new AssertionError((Object) "NoSuchFieldError (resolution failure) should be caught.");
            }
            if (((Boolean) c4798y.a(Boolean.FALSE, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C5634No0.a(com.android.tools.r8.graph.F0.this, (C5711Oy) obj);
                }
            })).booleanValue() || p10.getReference().getType().a(M10) || c4798y.f38412e.a(M10, p10)) {
                return false;
            }
            if (!f10.a(p10) && !a(M10, p10)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final boolean e() {
        return true;
    }

    @Override
    public final int g() {
        return 0;
    }

    @Override
    public final boolean h2() {
        return true;
    }

    @Override
    public final boolean o() {
        return true;
    }

    @Override
    public final int p2() {
        return 255;
    }

    @Override
    public final int q2() {
        if (f42701m) {
            return 0;
        }
        throw new AssertionError((Object) "StaticPut instructions define no values.");
    }

    @Override
    public final int r2() {
        return 60;
    }

    @Override
    public final String toString() {
        return super.toString() + "; field: " + getField().j0();
    }

    @Override
    public final C10340xw0 value() {
        if (f42701m || this.f54321f.size() == 1) {
            return (C10340xw0) this.f54321f.get(0);
        }
        throw new AssertionError();
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        AbstractC5635Np c9325rs;
        int b10 = c5458Kn.f41765d.b(value(), this.f54322g);
        C4554l1 field = getField();
        switch (u2().ordinal()) {
            case 0:
                c9325rs = new C9325rs(b10, field);
                break;
            case 1:
                c9325rs = new C8825os(b10, field);
                break;
            case 2:
                c9325rs = new C8992ps(b10, field);
                break;
            case 3:
                c9325rs = new C9159qs(b10, field);
                break;
            case 4:
                c9325rs = new C9492ss(b10, field);
                break;
            case 5:
            case 6:
                c9325rs = new C8658ns(b10, field);
                break;
            case 7:
            case 8:
                c9325rs = new C9659ts(b10, field);
                break;
            default:
                throw new C5417Jv0("Unexpected type: " + ((Object) u2()));
        }
        c5458Kn.a(this, c9325rs);
    }

    public static Boolean a(com.android.tools.r8.graph.F0 f02, C5711Oy c5711Oy) {
        C4554l1 reference = f02.getReference();
        C11245i c11245i = (C11245i) c5711Oy.f43084a.f();
        com.android.tools.r8.graph.D3 c10 = c11245i.c(reference);
        C4594n3 c4594n3 = c11245i.f57404s;
        AbstractC11516y1 abstractC11516y1 = c11245i.f57407v;
        com.android.tools.r8.graph.F5 r10 = c10.r();
        return Boolean.valueOf(r10 != null && c5711Oy.a(r10, c4594n3, abstractC11516y1));
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        if (!abstractC10561zE.e()) {
            return false;
        }
        C5634No0 L02 = abstractC10561zE.L0();
        return L02.getField() == getField() && L02.u2() == u2();
    }

    @Override
    public final boolean a(AbstractC10561zE abstractC10561zE, InterfaceC5381Je0 interfaceC5381Je0, EW ew) {
        if (!super.a(abstractC10561zE, interfaceC5381Je0, ew)) {
            return false;
        }
        interfaceC5381Je0.e().getClass();
        return !value().u().r() || value() == abstractC10561zE.L0().value();
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return x10.a(getField(), h52);
    }

    @Override
    public final void a(NT nt) {
        nt.a(this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C10109wb(getField()), this);
    }

    @Override
    public final void a(PS ps) {
        C4554l1 field = getField();
        C10340xw0 value = value();
        ps.getClass();
        List singletonList = Collections.singletonList(field);
        int i10 = AbstractC7552hC.f48487c;
        ps.a(179, singletonList, new C5920Sm0(value));
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.M2 m22 = getField().f38297f;
        if (c4798y.m()) {
            return m22.a(c4798y, h52);
        }
        return m22 != h52.p();
    }

    @Override
    public final void a(C11447u c11447u) {
        c11447u.a((com.android.tools.r8.graph.J2) getField());
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        c10391yD.a(this);
        return null;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52, C4798y c4798y, int i10, int i11) {
        return AbstractC5663Oc.b(this, m22, c4798y, i10, i11);
    }
}
