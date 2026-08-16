package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.function.Predicate;

public abstract class R00 extends AbstractC5308Hz {

    public static final boolean f43774e = true;

    public final C4798y f43775b;

    public final C4724u1 f43776c;

    public AbstractC5308Hz f43777d;

    public R00(C4798y c4798y, AbstractC5308Hz abstractC5308Hz) {
        this.f43775b = c4798y;
        this.f43776c = c4798y.b();
        this.f43777d = abstractC5308Hz;
    }

    public static NW a(NW nw) {
        return nw;
    }

    public abstract NW a(NW nw, com.android.tools.r8.graph.A2 a22, AbstractC5308Hz abstractC5308Hz);

    public abstract C4554l1 b(C4554l1 c4554l1);

    public abstract C7835iw b(C7835iw c7835iw);

    @Override
    public boolean b(AbstractC5308Hz abstractC5308Hz) {
        return this == abstractC5308Hz;
    }

    public abstract com.android.tools.r8.graph.A2 c(com.android.tools.r8.graph.A2 a22);

    public abstract C4554l1 c(C4554l1 c4554l1);

    public abstract com.android.tools.r8.graph.A2 d(com.android.tools.r8.graph.A2 a22);

    public abstract com.android.tools.r8.graph.M2 d(com.android.tools.r8.graph.M2 m22);

    @Override
    public final R00 d() {
        return this;
    }

    @Override
    public final com.android.tools.r8.graph.M2 c(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.M2 m22) {
        if (m22.I0()) {
            return d(abstractC5308Hz, m22);
        }
        if (m22.E0()) {
            com.android.tools.r8.graph.M2 a10 = m22.a(this.f43776c);
            com.android.tools.r8.graph.M2 c10 = c(abstractC5308Hz, a10);
            if (!a10.a(c10)) {
                return m22.a(this.f43776c, c10);
            }
        } else if (!f43774e && !m22.N0() && !m22.P0() && !m22.S0()) {
            throw new AssertionError();
        }
        return m22;
    }

    public abstract com.android.tools.r8.graph.M2 f(com.android.tools.r8.graph.M2 m22);

    public final boolean f(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.M2 m22) {
        return m22.a(d(abstractC5308Hz, m22));
    }

    @Override
    public final boolean j() {
        return false;
    }

    @Override
    public final boolean l() {
        return true;
    }

    @Override
    public String a(String str) {
        return this.f43777d.a(str);
    }

    public final <T extends R00> T a(Predicate<R00> predicate) {
        AbstractC5308Hz abstractC5308Hz = this;
        while (abstractC5308Hz.l()) {
            T t10 = (T) abstractC5308Hz.d();
            if (predicate.test(t10)) {
                return t10;
            }
            abstractC5308Hz = t10.f43777d;
        }
        return null;
    }

    @Override
    public final NW a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, EnumC8071kK enumC8071kK, final AbstractC5308Hz abstractC5308Hz, AbstractC9530t40 abstractC9530t40) {
        if (a22.s0().E0()) {
            if (!f43774e && !AbstractC6483ap0.a(a22.a(this.f43776c)).allMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return R00.this.f(abstractC5308Hz, (com.android.tools.r8.graph.M2) obj);
                }
            })) {
                throw new AssertionError();
            }
            return new NW(a22.a(c(abstractC5308Hz, a22.s0()), this.f43776c), null, AbstractC9530t40.f52519c, enumC8071kK, com.android.tools.r8.graph.proto.j.f37620d).a(this);
        }
        if (f43774e || a22.s0().I0()) {
            return a(a22, a23, enumC8071kK, abstractC9530t40, abstractC5308Hz, new InterfaceC5250Gz() {
                @Override
                public final NW a(NW nw) {
                    return R00.a(nw);
                }
            });
        }
        throw new AssertionError();
    }

    public final com.android.tools.r8.graph.M2 e(com.android.tools.r8.graph.M2 m22) {
        if (!m22.E0()) {
            return m22.I0() ? d(m22) : m22;
        }
        com.android.tools.r8.graph.M2 a10 = m22.a(this.f43776c);
        com.android.tools.r8.graph.M2 d10 = d(a10);
        return !d10.a(a10) ? m22.a(this.f43776c, d10) : m22;
    }

    public com.android.tools.r8.graph.A2 e(com.android.tools.r8.graph.A2 a22) {
        return d(a22);
    }

    @Override
    public C7835iw a(C4554l1 c4554l1, AbstractC5308Hz abstractC5308Hz, final InterfaceC5192Fz interfaceC5192Fz) {
        if (this == abstractC5308Hz) {
            return AbstractC5308Hz.g().a(c4554l1, abstractC5308Hz, interfaceC5192Fz);
        }
        return this.f43777d.a(c4554l1, abstractC5308Hz, new InterfaceC5192Fz() {
            @Override
            public final C7835iw a(C7835iw c7835iw) {
                return R00.this.a(interfaceC5192Fz, c7835iw);
            }
        });
    }

    public final C7835iw a(InterfaceC5192Fz interfaceC5192Fz, C7835iw c7835iw) {
        return interfaceC5192Fz.a(b(c7835iw));
    }

    @Override
    public NW a(com.android.tools.r8.graph.A2 a22, final com.android.tools.r8.graph.A2 a23, EnumC8071kK enumC8071kK, AbstractC9530t40 abstractC9530t40, final AbstractC5308Hz abstractC5308Hz, final InterfaceC5250Gz interfaceC5250Gz) {
        if (this == abstractC5308Hz) {
            AbstractC5308Hz g10 = AbstractC5308Hz.g();
            return g10.a(a22, a23, enumC8071kK, abstractC9530t40, g10, interfaceC5250Gz);
        }
        return this.f43777d.a(a22, d(a23), enumC8071kK, abstractC9530t40, abstractC5308Hz, new InterfaceC5250Gz() {
            @Override
            public final NW a(NW nw) {
                return R00.this.a(interfaceC5250Gz, a23, abstractC5308Hz, nw);
            }
        });
    }

    public final NW a(InterfaceC5250Gz interfaceC5250Gz, com.android.tools.r8.graph.A2 a22, AbstractC5308Hz abstractC5308Hz, NW nw) {
        return interfaceC5250Gz.a(a(nw, a22, abstractC5308Hz));
    }
}
