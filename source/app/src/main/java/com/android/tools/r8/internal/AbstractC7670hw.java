package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.C4822z4;
import com.android.tools.r8.graph.D3;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11295l;
import java.util.List;

public abstract class AbstractC7670hw extends AbstractC10561zE {

    public static final boolean f48738l = true;

    public final C4554l1 f48739k;

    public AbstractC7670hw(C4554l1 c4554l1, C10340xw0 c10340xw0, List list) {
        super(list, c10340xw0);
        if (!f48738l && c4554l1 == null) {
            throw new AssertionError();
        }
        this.f48739k = c4554l1;
    }

    @Override
    public final boolean E1() {
        return true;
    }

    @Override
    public final AbstractC7670hw S() {
        return this;
    }

    @Override
    public boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        C4477h f10 = c4798y.f();
        C4554l1 c4554l1 = this.f48739k;
        f10.getClass();
        return a(c4798y, h52, c10394yE, f10.a(c4554l1.f38297f, c4554l1, h52));
    }

    @Override
    public final AbstractC8849p b(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        C4460g1 a10;
        if (a(c4798y, h52)) {
            return C8835ov0.f51388a;
        }
        if (!D1()) {
            if (f48738l || F1()) {
                return C5701Ot.f43063a;
            }
            throw new AssertionError();
        }
        C4554l1 field = getField();
        if (c4798y.m()) {
            a10 = ((C11245i) c4798y.f()).c(field).q();
        } else {
            com.android.tools.r8.graph.E0 g10 = c4798y.g(field.f38297f);
            a10 = g10 != null ? g10.f36251k.f37700b.a(field) : null;
        }
        return a10 != null ? new C9123qg(a10) : C8835ov0.f51388a;
    }

    public final com.android.tools.r8.graph.D3 c(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        C4514j c4514j = (C4514j) c4798y.f();
        C4554l1 c4554l1 = this.f48739k;
        c4514j.getClass();
        return c4514j.a(c4554l1.f38297f, c4554l1, h52);
    }

    @Override
    public final boolean d1() {
        return true;
    }

    public C4554l1 getField() {
        return this.f48739k;
    }

    public final EnumC8002jw u2() {
        return EnumC8002jw.a((char) this.f48739k.f37449i.f36592f.f36562f[0]);
    }

    public abstract C10340xw0 value();

    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C10394yE c10394yE, com.android.tools.r8.graph.D3 d32) {
        if (!d32.y()) {
            return true;
        }
        D3.a<?> l10 = d32.l();
        com.android.tools.r8.graph.F0 a10 = com.android.tools.r8.graph.F0.a(l10.f36224c, l10.f36225d);
        if (a10.getAccessFlags().n() != h2()) {
            return true;
        }
        if (l10.d() != h52.getHolder() && l10.a(h52, c4798y.L()).b()) {
            return true;
        }
        if (((this instanceof C6558bE) || i()) && !c10394yE.c()) {
            C10340xw0 c10340xw0 = (C10340xw0) this.f54321f.get(0);
            if (c10340xw0.c(c4798y) || c10340xw0.f53896m.v()) {
                return true;
            }
        }
        if (c4798y.m() && h2() && !c10394yE.a()) {
            C11295l c11295l = c4798y.f38412e;
            c11295l.getClass();
            if (!c11295l.a(a10.getReference()).f40089c && this.f48739k.f38297f.a(c4798y, h52)) {
                return true;
            }
        }
        return false;
    }

    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.F0 f02) {
        if (!f48738l && !F1()) {
            throw new AssertionError();
        }
        AbstractC8999pu0 u10 = value().u();
        if (u10.r()) {
            u10 = u10.a().E();
        }
        if (!u10.s()) {
            return false;
        }
        F1 f10 = f02.d().f37207l.f();
        if (f10.r()) {
            if (f10.e0()) {
                return false;
            }
            if (f10.f0()) {
                com.android.tools.r8.graph.M2 m22 = f10.N().f40306c.f37449i;
                if (m22.I0()) {
                    return com.android.tools.r8.shaking.R2.a(c4798y, AbstractC8999pu0.a(m22, C8854p10.h(), (C4798y<?>) c4798y).b(), ((C11245i) c4798y.f()).f57405t);
                }
                if (AbstractC5167Fm0.f40305d || m22.E0() || m22.P0()) {
                    return false;
                }
                throw new AssertionError();
            }
        }
        C11245i c11245i = (C11245i) c4798y.f();
        C10340xw0 i10 = value().i();
        if (!i10.j() && i10.f53886c.c2()) {
            com.android.tools.r8.graph.E0 g10 = c4798y.g(i10.f53886c.w0().f52627k);
            if (g10 == null) {
                return true;
            }
            C4724u1 b10 = c4798y.b();
            C4516j1 s10 = c11245i.f(g10, b10.f37859F4.f38229g).s();
            if (s10 == null) {
                return false;
            }
            com.android.tools.r8.graph.M2 B02 = s10.B0();
            return (B02.a(b10.f38068i2) || B02.a(b10.f38108n2)) ? false : true;
        }
        return com.android.tools.r8.shaking.R2.a(c4798y, u10.b(), ((C11245i) c4798y.f()).f57405t);
    }

    @Override
    public final F1 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12) {
        if (!f48738l && !D1()) {
            throw new AssertionError();
        }
        if (!this.f54320e.z() && c4798y.f().h()) {
            com.android.tools.r8.graph.F0 p10 = c(c4798y.L(), h52).p();
            if (p10 == null) {
                int i10 = F1.f40064a;
                return C10504yv0.f54195b;
            }
            F1 f12 = c4798y.f38412e.a(p10.getReference()).f40088b;
            if (!f12.isUnknown()) {
                return f12;
            }
            F1 f10 = p10.d().f37207l.f();
            if (f10.isUnknown() && (p10 instanceof C4822z4) && p10.getAccessFlags().n()) {
                XR xr = c4798y.f38387B;
                C4822z4 j10 = p10.j();
                xr.getClass();
                if (j10.getAccessFlags().e() && !j10.p().a(xr.f45704a.b().f37899L2)) {
                    G1 g12 = c4798y.f38427t;
                    C4554l1 reference = p10.getReference();
                    g12.getClass();
                    return new C5630Nm0(reference);
                }
            }
            return f10;
        }
        int i11 = F1.f40064a;
        return C10504yv0.f54195b;
    }
}
