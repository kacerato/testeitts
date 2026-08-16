package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;

public final class C8622ng extends AbstractC8455mg implements InterfaceC8789og, InterfaceC8956pg {

    public static final boolean f51018d = true;

    public boolean f51019b;

    public final List f51020c;

    public C8622ng(List list, boolean z10) {
        boolean z11 = f51018d;
        if (!z11 && !AbstractC6483ap0.a(new C9740uK(list)).noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8622ng.a((AbstractC5361Iw0) obj);
            }
        })) {
            throw new AssertionError();
        }
        this.f51019b = z10;
        this.f51020c = list;
        if (!z11 && a(list, z10)) {
            throw new AssertionError((Object) "Must use UnknownMethodState instead");
        }
    }

    public static boolean a(AbstractC5361Iw0 abstractC5361Iw0) {
        if (!abstractC5361Iw0.j()) {
            return false;
        }
        AbstractC10458yg c10 = abstractC5361Iw0.c();
        c10.getClass();
        return c10 instanceof C10124wg;
    }

    @Override
    public final C8622ng b() {
        return this;
    }

    @Override
    public final InterfaceC8789og h() {
        return this;
    }

    public final boolean k() {
        return AbstractC9907vK.b(this.f51020c, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((AbstractC5361Iw0) obj).i();
            }
        });
    }

    public static boolean a(List list, boolean z10) {
        return z10 && AbstractC9907vK.a(list, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((AbstractC5361Iw0) obj).m();
            }
        });
    }

    @Override
    public final InterfaceC8956pg a() {
        ArrayList arrayList = new ArrayList(this.f51020c.size());
        Iterator it = this.f51020c.iterator();
        while (it.hasNext()) {
            arrayList.add(((AbstractC5361Iw0) it.next()).o());
        }
        return new C8622ng(arrayList, this.f51019b);
    }

    @Override
    public final InterfaceC10100wX a() {
        ArrayList arrayList = new ArrayList(this.f51020c.size());
        Iterator it = this.f51020c.iterator();
        while (it.hasNext()) {
            arrayList.add(((AbstractC5361Iw0) it.next()).o());
        }
        return new C8622ng(arrayList, this.f51019b);
    }

    public final void a(int i10, AbstractC5361Iw0 abstractC5361Iw0) {
        if (!f51018d && i10 != 0 && abstractC5361Iw0.j()) {
            AbstractC10458yg c10 = abstractC5361Iw0.c();
            c10.getClass();
            if (c10 instanceof C10124wg) {
                throw new AssertionError();
            }
        }
        this.f51020c.set(i10, abstractC5361Iw0);
    }

    public final InterfaceC8956pg a(C4798y c4798y, com.android.tools.r8.graph.F2 f22, C8622ng c8622ng, AbstractC4939Bo0 abstractC4939Bo0) {
        if (this.f51020c.size() != c8622ng.f51020c.size()) {
            if (f51018d) {
                return C9669tv0.f52729a;
            }
            throw new AssertionError();
        }
        int i10 = 1;
        if (c8622ng.f51019b) {
            this.f51019b = true;
        }
        int i11 = 0;
        if (this.f51020c.size() <= f22.b().m0()) {
            i10 = 0;
        } else {
            if (!f51018d && this.f51020c.size() != f22.b().m0() + 1) {
                throw new AssertionError();
            }
            this.f51020c.set(0, ((AbstractC5361Iw0) this.f51020c.get(0)).a(c4798y, (AbstractC5361Iw0) c8622ng.f51020c.get(0), null, abstractC4939Bo0));
        }
        while (i10 < this.f51020c.size()) {
            this.f51020c.set(i10, ((AbstractC5361Iw0) this.f51020c.get(i10)).a(c4798y, (AbstractC5361Iw0) c8622ng.f51020c.get(i10), f22.b().f36441f.f36675b[i11], abstractC4939Bo0));
            if (!f51018d && ((AbstractC5361Iw0) this.f51020c.get(i10)).j()) {
                AbstractC10458yg c10 = ((AbstractC5361Iw0) this.f51020c.get(i10)).c();
                c10.getClass();
                if (c10 instanceof C10124wg) {
                    throw new AssertionError();
                }
            }
            i10++;
            i11++;
        }
        return a(this.f51020c, this.f51019b) ? C9669tv0.f52729a : this;
    }
}
