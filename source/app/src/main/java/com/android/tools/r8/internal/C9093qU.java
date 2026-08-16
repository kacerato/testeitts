package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;

public final class C9093qU {

    public static final boolean f51788e = true;

    public final IntFunction f51789a;

    public final IntFunction f51790b;

    public AbstractC5308Hz f51791c;

    public Set f51792d;

    public C9093qU(AbstractC5308Hz abstractC5308Hz, IntFunction intFunction, IntFunction intFunction2) {
        this.f51791c = abstractC5308Hz;
        this.f51789a = intFunction;
        this.f51790b = intFunction2;
        this.f51792d = (Set) intFunction2.apply(2);
    }

    public static boolean a(AbstractC5308Hz abstractC5308Hz, R00 r00) {
        return r00 == abstractC5308Hz;
    }

    public static C9093qU b(AbstractC5308Hz abstractC5308Hz) {
        return new C9093qU(abstractC5308Hz, new Tq1(), new EZ0());
    }

    public final C9093qU c(AbstractC5308Hz abstractC5308Hz) {
        if (abstractC5308Hz == this.f51791c) {
            return this;
        }
        Set set = (Set) this.f51790b.apply(this.f51792d.size());
        Iterator it = this.f51792d.iterator();
        while (it.hasNext()) {
            set.add(abstractC5308Hz.d(this.f51791c, (com.android.tools.r8.graph.A2) it.next()));
        }
        this.f51792d = set;
        this.f51791c = abstractC5308Hz;
        return this;
    }

    public final void d(final AbstractC5308Hz abstractC5308Hz) {
        boolean z10 = f51788e;
        if (!z10 && this.f51791c == abstractC5308Hz) {
            throw new AssertionError();
        }
        if (!z10 && !this.f51791c.l()) {
            throw new AssertionError();
        }
        if (z10 || abstractC5308Hz.j()) {
            return;
        }
        R00 d10 = this.f51791c.d();
        Predicate<R00> predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C9093qU.a(AbstractC5308Hz.this, (R00) obj);
            }
        };
        AbstractC5308Hz abstractC5308Hz2 = d10.f43777d;
        if ((abstractC5308Hz2.l() ? abstractC5308Hz2.d().a(predicate) : null) == null) {
            throw new AssertionError();
        }
    }

    public static C9093qU a(AbstractC5308Hz abstractC5308Hz) {
        return new C9093qU(abstractC5308Hz, new Tq1(), new Tm1());
    }

    public final void a(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.H5 h52) {
        boolean z10 = f51788e;
        if (!z10 && !z10 && this.f51791c != abstractC5308Hz) {
            throw new AssertionError();
        }
        this.f51792d.add(h52.getReference());
    }

    public final void a(C9093qU c9093qU) {
        AbstractC5308Hz abstractC5308Hz = c9093qU.f51791c;
        if (this.f51791c == abstractC5308Hz) {
            this.f51792d.addAll(c9093qU.f51792d);
            return;
        }
        if (!f51788e) {
            d(abstractC5308Hz);
        }
        Iterator it = c9093qU.f51792d.iterator();
        while (it.hasNext()) {
            this.f51792d.add(this.f51791c.d(c9093qU.f51791c, (com.android.tools.r8.graph.A2) it.next()));
        }
    }

    public final void a(com.android.tools.r8.graph.A2 a22) {
        this.f51792d.remove(a22);
    }

    public final void a(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.A2 a22) {
        boolean z10 = f51788e;
        if (!z10 && !this.f51792d.isEmpty() && !z10 && this.f51791c != abstractC5308Hz) {
            throw new AssertionError();
        }
        this.f51792d.remove(a22);
    }

    public final C9093qU a(Iterable iterable) {
        iterable.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9093qU.this.a((com.android.tools.r8.graph.A2) obj);
            }
        });
        return this;
    }

    public final C9093qU a(final InterfaceC4403d1 interfaceC4403d1, final Predicate predicate) {
        this.f51792d.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C9093qU.a(InterfaceC4403d1.this, predicate, (com.android.tools.r8.graph.A2) obj);
            }
        });
        return this;
    }

    public static boolean a(InterfaceC4403d1 interfaceC4403d1, Predicate predicate, com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(interfaceC4403d1.g(a22.s0()));
        com.android.tools.r8.graph.H5 e10 = a10 != null ? a10.e(a22) : null;
        if (e10 == null) {
            if (f51788e) {
                return true;
            }
            throw new AssertionError();
        }
        return predicate.test(e10);
    }

    public final AbstractC8374m80 a(C4798y c4798y) {
        AbstractC8374m80 abstractC8374m80 = (AbstractC8374m80) this.f51789a.apply(this.f51792d.size());
        Iterator it = this.f51792d.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.A2 d10 = c4798y.v().d(this.f51791c, (com.android.tools.r8.graph.A2) it.next());
            com.android.tools.r8.graph.H2 d02 = c4798y.g(d10.f38297f).d0();
            C4516j1 b10 = d02.b(d10);
            if (!f51788e && b10 == null) {
                throw new AssertionError((Object) ("Missing method: " + ((Object) d10)));
            }
            abstractC8374m80.getClass();
            abstractC8374m80.add((AbstractC8374m80) new com.android.tools.r8.graph.H5(d02, b10));
        }
        return abstractC8374m80;
    }

    public final void a(InterfaceC5456Km interfaceC5456Km) {
        ArrayList arrayList = new ArrayList(this.f51792d);
        arrayList.sort(new C7064eG0());
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            interfaceC5456Km.a(((com.android.tools.r8.graph.A2) obj).j0());
        }
    }
}
