package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Set;

public abstract class AbstractC10291xg extends AbstractC10458yg {

    public static final boolean f53805e = true;

    public AbstractC10291xg(Set set) {
        super(set);
    }

    public static AbstractC10330xt a(C4798y c4798y, com.android.tools.r8.graph.M2 m22, AbstractC10330xt abstractC10330xt) {
        if (!abstractC10330xt.g()) {
            if (!abstractC10330xt.j() && !abstractC10330xt.l()) {
                if (!f53805e && !abstractC10330xt.h()) {
                    throw new AssertionError();
                }
                C10664zt a10 = abstractC10330xt.a();
                C8854p10 d10 = abstractC10330xt.d();
                m22.getClass();
                AbstractC8999pu0 a11 = AbstractC8999pu0.a(m22, d10, (C4798y<?>) c4798y);
                if (!a10.n().a(a11, (C4798y<?>) c4798y)) {
                    if (abstractC10330xt.e()) {
                        C6949de b10 = a10.b();
                        if (a11.a(b10, (C4798y<?>) c4798y)) {
                            return AbstractC10330xt.a(c4798y, a11, b10);
                        }
                        if (abstractC10330xt.d().f()) {
                            return C10664zt.f54561d;
                        }
                        return C10664zt.f54560c;
                    }
                    return AbstractC10330xt.a(c4798y, a11);
                }
            } else {
                C8854p10 b11 = abstractC10330xt.j() ? C8854p10.b() : C8854p10.h();
                m22.getClass();
                return AbstractC10330xt.a(c4798y, AbstractC8999pu0.a(m22, b11, (C4798y<?>) c4798y));
            }
        }
        return abstractC10330xt;
    }

    public abstract C8854p10 A();

    public abstract AbstractC5361Iw0 a(C4798y c4798y, com.android.tools.r8.graph.M2 m22);

    public abstract Q00 a(C4798y c4798y, AbstractC10291xg abstractC10291xg, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, InterfaceC6522b2 interfaceC6522b2);

    @Override
    public final AbstractC10291xg g() {
        return this;
    }

    @Override
    public final boolean l() {
        return true;
    }

    public abstract AbstractC10330xt z();
}
