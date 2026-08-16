package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.B60;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Supplier;

public final class FB implements r {

    public static final boolean f40140d = true;

    public final InterfaceC6078Vf f40141a;

    public final Q00 f40142b;

    public final Q00 f40143c;

    public FB(InterfaceC6078Vf interfaceC6078Vf, Q00 q00, Q00 q002) {
        boolean z10 = f40140d;
        if (!z10 && interfaceC6078Vf.y() == null) {
            throw new AssertionError();
        }
        if (!z10) {
            q00.getClass();
            if (q00 instanceof C10671zv0) {
                q002.getClass();
                if (q002 instanceof C10671zv0) {
                    throw new AssertionError();
                }
            }
        }
        if (!z10 && q00.j()) {
            for (ZC zc2 : q00.c().f54102b) {
                if (!AbstractC10458yg.f54101d && !zc2.d()) {
                    throw new AssertionError();
                }
            }
        }
        if (!z10 && q002.j()) {
            for (ZC zc3 : q002.c().f54102b) {
                if (!AbstractC10458yg.f54101d && !zc3.d()) {
                    throw new AssertionError();
                }
            }
        }
        this.f40141a = interfaceC6078Vf;
        this.f40142b = q00;
        this.f40143c = q002;
    }

    public static AbstractC5361Iw0 b(C4798y c4798y, InterfaceC5825Qx interfaceC5825Qx, AbstractC10458yg abstractC10458yg, com.android.tools.r8.graph.M2 m22) {
        AbstractC5361Iw0 y10 = abstractC10458yg.y();
        for (ZC zc2 : abstractC10458yg.s()) {
            if (!f40140d && !zc2.d()) {
                throw new AssertionError();
            }
            AbstractC5361Iw0 a10 = interfaceC5825Qx.a(zc2.b(), new Supplier() {
                @Override
                public final Object get() {
                    return FB.h();
                }
            });
            if (a10 == null) {
                return C10671zv0.f54579b;
            }
            y10 = y10.a(c4798y, a10, m22, AbstractC4939Bo0.f39020a);
        }
        return y10;
    }

    public static AbstractC5361Iw0 h() {
        return null;
    }

    @Override
    public final FB B() {
        return this;
    }

    @Override
    public final int a(ZC zc2, C6555bD c6555bD) {
        B60.b bVar = (B60.b) c6555bD.f46730c.get(this);
        boolean z10 = C6555bD.f46728d;
        if (!z10 && bVar == null) {
            throw new AssertionError();
        }
        B60.b bVar2 = (B60.b) c6555bD.f46730c.get(zc2.B());
        if (!z10 && bVar2 == null) {
            throw new AssertionError();
        }
        return bVar.compareTo(bVar2);
    }

    @Override
    public final boolean e() {
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FB)) {
            return false;
        }
        FB fb2 = (FB) obj;
        return this.f40141a.equals(fb2.f40141a) && this.f40142b.equals(fb2.f40142b) && this.f40143c.equals(fb2.f40143c);
    }

    @Override
    public final int getKind() {
        return 4;
    }

    public final int hashCode() {
        return Objects.hash(FB.class, this.f40141a, this.f40142b, this.f40143c);
    }

    @Override
    public final boolean n() {
        return true;
    }

    @Override
    public final AbstractC5361Iw0 a(C4798y c4798y, InterfaceC5825Qx interfaceC5825Qx, AbstractC10458yg abstractC10458yg, com.android.tools.r8.graph.M2 m22) {
        Q00 q00;
        F1 a10 = this.f40141a.a(c4798y, interfaceC5825Qx);
        if (a10.h0()) {
            q00 = this.f40142b;
        } else if (a10.Z()) {
            q00 = this.f40143c;
        } else {
            return C10671zv0.f54579b;
        }
        q00.getClass();
        if (q00 instanceof C10671zv0) {
            return q00;
        }
        if (!f40140d && !q00.j()) {
            throw new AssertionError();
        }
        AbstractC10458yg c10 = q00.c();
        return !c10.t() ? c10 : b(c4798y, interfaceC5825Qx, c10, m22);
    }

    @Override
    public final AbstractC6333Zs0 a(Function function) {
        AbstractC6333Zs0 a10 = this.f40141a.a(function);
        if (a10.c()) {
            return a10;
        }
        if (this.f40142b.j()) {
            AbstractC10458yg c10 = this.f40142b.c();
            AbstractC6333Zs0 abstractC6333Zs0 = C6276Ys0.f46097c;
            Iterator it = c10.s().iterator();
            while (it.hasNext()) {
                abstractC6333Zs0 = ((ZC) it.next()).a(function);
                if (abstractC6333Zs0.c()) {
                    break;
                }
            }
            a10 = abstractC6333Zs0;
            if (a10.c()) {
                return a10;
            }
        }
        if (!this.f40143c.j()) {
            return a10;
        }
        AbstractC10458yg c11 = this.f40143c.c();
        AbstractC6333Zs0 abstractC6333Zs02 = C6276Ys0.f46097c;
        Iterator it2 = c11.s().iterator();
        while (it2.hasNext()) {
            abstractC6333Zs02 = ((ZC) it2.next()).a(function);
            if (abstractC6333Zs02.c()) {
                break;
            }
        }
        return abstractC6333Zs02;
    }
}
