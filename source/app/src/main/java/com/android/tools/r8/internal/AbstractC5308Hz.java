package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4742v0;
import com.android.tools.r8.graph.C4765w4;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.function.Predicate;

public abstract class AbstractC5308Hz {

    public static final boolean f40940a = true;

    public abstract NW a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, EnumC8071kK enumC8071kK, AbstractC5308Hz abstractC5308Hz, AbstractC9530t40 abstractC9530t40);

    public abstract NW a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, EnumC8071kK enumC8071kK, AbstractC9530t40 abstractC9530t40, AbstractC5308Hz abstractC5308Hz, InterfaceC5250Gz interfaceC5250Gz);

    public C5645Nu a() {
        return null;
    }

    public abstract C7835iw a(C4554l1 c4554l1, AbstractC5308Hz abstractC5308Hz, InterfaceC5192Fz interfaceC5192Fz);

    public abstract String a(String str);

    public abstract boolean a(AbstractC5308Hz abstractC5308Hz);

    public C10215xA b() {
        return null;
    }

    public abstract Iterable b(com.android.tools.r8.graph.M2 m22);

    public abstract boolean b(AbstractC5308Hz abstractC5308Hz);

    public TV c() {
        return null;
    }

    public R00 d() {
        return null;
    }

    public abstract com.android.tools.r8.graph.M2 c(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.M2 m22);

    public C6840cx0 e() {
        return null;
    }

    public abstract com.android.tools.r8.graph.proto.j f(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.A2 a22);

    public final C7835iw f(AbstractC5308Hz abstractC5308Hz, C4554l1 c4554l1) {
        return a(c4554l1, abstractC5308Hz, new InterfaceC5192Fz() {
            @Override
            public final C7835iw a(C7835iw c7835iw) {
                return AbstractC5308Hz.a(c7835iw);
            }
        });
    }

    public boolean g(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.A2 a22) {
        if (f40940a || a(abstractC5308Hz)) {
            return true;
        }
        throw new AssertionError();
    }

    public boolean h() {
        return false;
    }

    public boolean i() {
        return this instanceof C10215xA;
    }

    public abstract boolean j();

    public boolean k() {
        return this instanceof TV;
    }

    public abstract boolean l();

    public boolean m() {
        return false;
    }

    public static C7835iw a(C7835iw c7835iw) {
        return c7835iw;
    }

    public static AbstractC5308Hz g() {
        return BB.f38848b;
    }

    public final com.android.tools.r8.graph.M2 d(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.M2 m22) {
        return (com.android.tools.r8.graph.M2) a(m22, abstractC5308Hz, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((R00) obj).d((com.android.tools.r8.graph.M2) obj2);
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((com.android.tools.r8.graph.M2) obj).P0();
            }
        });
    }

    public final NW e(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.A2 a22) {
        return a(a22, (com.android.tools.r8.graph.A2) null, (EnumC8071kK) null, abstractC5308Hz, AbstractC9530t40.f52519c);
    }

    public com.android.tools.r8.ir.optimize.A f() {
        if (f40940a || h()) {
            return null;
        }
        throw new AssertionError();
    }

    public final Set a(Set set) {
        if (set == C6991ds0.f47532b) {
            return set;
        }
        Set b10 = C4875Al0.b(set.size());
        Iterator it = set.iterator();
        while (it.hasNext()) {
            b10.add(b((com.android.tools.r8.graph.J2) it.next(), (AbstractC5308Hz) null));
        }
        return b10;
    }

    public final C4554l1 d(AbstractC5308Hz abstractC5308Hz, C4554l1 c4554l1) {
        return (C4554l1) a(c4554l1, abstractC5308Hz, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((R00) obj).b((C4554l1) obj2);
            }
        }, EnumC6871d70.f47287c);
    }

    public final com.android.tools.r8.graph.M2 c(com.android.tools.r8.graph.M2 m22) {
        return c(g(), m22);
    }

    public final C4554l1 e(AbstractC5308Hz abstractC5308Hz, C4554l1 c4554l1) {
        return (C4554l1) f(abstractC5308Hz, c4554l1).f41111a;
    }

    public final com.android.tools.r8.graph.A2 b(com.android.tools.r8.graph.A2 a22) {
        return d(g(), a22);
    }

    public final NW a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, EnumC8071kK enumC8071kK) {
        return a(a22, a23, enumC8071kK, (AbstractC5308Hz) null, AbstractC9530t40.f52519c);
    }

    public final com.android.tools.r8.graph.A2 d(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.A2 a22) {
        return (com.android.tools.r8.graph.A2) a(a22, abstractC5308Hz, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((R00) obj).c((com.android.tools.r8.graph.A2) obj2);
            }
        }, EnumC6871d70.f47287c);
    }

    @Deprecated
    public final com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.M2 m22) {
        return a(g(), m22);
    }

    public final com.android.tools.r8.graph.J2 b(com.android.tools.r8.graph.J2 j22, final AbstractC5308Hz abstractC5308Hz) {
        return (com.android.tools.r8.graph.J2) j22.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC5308Hz.this.c(abstractC5308Hz, (com.android.tools.r8.graph.M2) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC5308Hz.this.d(abstractC5308Hz, (C4554l1) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC5308Hz.this.d(abstractC5308Hz, (com.android.tools.r8.graph.A2) obj);
            }
        });
    }

    public final com.android.tools.r8.graph.M2 a(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.M2 m22) {
        return (com.android.tools.r8.graph.M2) a(m22, abstractC5308Hz, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((R00) obj).f((com.android.tools.r8.graph.M2) obj2);
            }
        });
    }

    public final C4554l1 a(AbstractC5308Hz abstractC5308Hz, C4554l1 c4554l1) {
        return (C4554l1) a(c4554l1, abstractC5308Hz, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((R00) obj).c((C4554l1) obj2);
            }
        });
    }

    public final IdentityHashMap b(Map map, final BiFunction biFunction) {
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                AbstractC5308Hz.this.a(identityHashMap, biFunction, (com.android.tools.r8.graph.M2) obj, obj2);
            }
        });
        return identityHashMap;
    }

    public final com.android.tools.r8.graph.A2 a(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.A2 a22) {
        return (com.android.tools.r8.graph.A2) a(a22, abstractC5308Hz, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((R00) obj).d((com.android.tools.r8.graph.A2) obj2);
            }
        });
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.A2 a22) {
        return (com.android.tools.r8.graph.A2) a(a22, g(), new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((R00) obj).e((com.android.tools.r8.graph.A2) obj2);
            }
        });
    }

    public final com.android.tools.r8.graph.J2 a(com.android.tools.r8.graph.J2 j22, AbstractC5308Hz abstractC5308Hz, BiFunction biFunction) {
        AbstractC5308Hz abstractC5308Hz2 = this;
        while (abstractC5308Hz2.l() && abstractC5308Hz2 != abstractC5308Hz) {
            R00 d10 = abstractC5308Hz2.d();
            j22 = (com.android.tools.r8.graph.J2) biFunction.apply(d10, j22);
            abstractC5308Hz2 = d10.f43777d;
        }
        return j22;
    }

    public final com.android.tools.r8.graph.J2 a(com.android.tools.r8.graph.J2 j22, final AbstractC5308Hz abstractC5308Hz) {
        return (com.android.tools.r8.graph.J2) j22.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC5308Hz.this.b(abstractC5308Hz, (com.android.tools.r8.graph.M2) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC5308Hz.this.c(abstractC5308Hz, (C4554l1) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC5308Hz.this.c(abstractC5308Hz, (com.android.tools.r8.graph.A2) obj);
            }
        });
    }

    public final C4554l1 a(C4554l1 c4554l1) {
        return d(g(), c4554l1);
    }

    public final void a(C8051kC c8051kC, C4554l1 c4554l1, Object obj) {
        c8051kC.a(d(g(), c4554l1), obj);
    }

    public final com.android.tools.r8.graph.J2 a(com.android.tools.r8.graph.J2 j22, AbstractC5308Hz abstractC5308Hz, BiFunction biFunction, Predicate predicate) {
        ArrayDeque arrayDeque = new ArrayDeque();
        AbstractC5308Hz abstractC5308Hz2 = this;
        while (abstractC5308Hz2.l() && abstractC5308Hz2 != abstractC5308Hz) {
            R00 d10 = abstractC5308Hz2.d();
            arrayDeque.addLast(d10);
            abstractC5308Hz2 = d10.f43777d;
        }
        while (!arrayDeque.isEmpty()) {
            j22 = (com.android.tools.r8.graph.J2) biFunction.apply((R00) arrayDeque.removeLast(), j22);
            if (predicate.test(j22)) {
                break;
            }
        }
        return j22;
    }

    public boolean a(com.android.tools.r8.graph.J2 j22, com.android.tools.r8.graph.J2 j23) {
        if (f40940a || j22 != j23) {
            return false;
        }
        throw new AssertionError();
    }

    public final void a(Map map, BiFunction biFunction, com.android.tools.r8.graph.M2 m22, Object obj) {
        com.android.tools.r8.graph.M2 c10 = c(g(), m22);
        Object obj2 = map.get(c10);
        if (obj2 != null) {
            obj = biFunction.apply(obj, obj2);
        }
        map.put(c10, obj);
    }

    public final AbstractC8552nC a(Map map) {
        final C8051kC c8051kC = new C8051kC(4);
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                AbstractC5308Hz.this.a(c8051kC, (C4554l1) obj, obj2);
            }
        });
        return c8051kC.b();
    }

    public final IdentityHashMap a(Map map, final C4742v0 c4742v0, C8659ns0 c8659ns0) {
        c8659ns0.b("Rewrite call sites");
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        final RR rr = new RR(c4742v0, this, null);
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                AbstractC5308Hz.this.a(c4742v0, rr, identityHashMap, (com.android.tools.r8.graph.D0) obj, (AbstractC8374m80) obj2);
            }
        });
        c8659ns0.d();
        return identityHashMap;
    }

    public final void a(InterfaceC4403d1 interfaceC4403d1, RR rr, Map map, com.android.tools.r8.graph.D0 d02, AbstractC8374m80 abstractC8374m80) {
        for (com.android.tools.r8.graph.H5 h52 : abstractC8374m80.a(interfaceC4403d1, this).f45165b.values()) {
            ((AbstractC8374m80) map.computeIfAbsent(rr.a(d02, h52), new Function() {
                @Override
                public final Object apply(Object obj) {
                    AbstractC8374m80 c10;
                    c10 = AbstractC8374m80.c();
                    return c10;
                }
            })).add((AbstractC8374m80) h52);
        }
    }

    public final Set a(Set set, C8659ns0 c8659ns0) {
        c8659ns0.b("Rewrite fields");
        AbstractC5308Hz g10 = g();
        if (b(g10)) {
            if (!f40940a) {
                Iterator<E> it = set.iterator();
                while (it.hasNext()) {
                    C4554l1 c4554l1 = (C4554l1) it.next();
                    if (!f40940a && e(g10, c4554l1) != c4554l1) {
                        throw new AssertionError();
                    }
                }
            }
        } else {
            Iterator it2 = set.iterator();
            Set set2 = null;
            while (it2.hasNext()) {
                C4554l1 c4554l12 = (C4554l1) it2.next();
                C4554l1 d10 = d(g10, c4554l12);
                if (set2 != null) {
                    set2.add(d10);
                } else if (d10 != c4554l12) {
                    set2 = Collections.newSetFromMap(new IdentityHashMap(set.size()));
                    Objects.requireNonNull(set2);
                    C6246Ye.a(set, new KH0(set2), c4554l12);
                    set2.add(d10);
                }
            }
            if (set2 != null) {
                if (set2.size() < set.size()) {
                    set = Collections.newSetFromMap(new IdentityHashMap(set2.size()));
                    set.addAll(set2);
                } else {
                    set = set2;
                }
            }
        }
        c8659ns0.d();
        return set;
    }

    public final void a(Map map, Map map2, com.android.tools.r8.graph.J2 j22, Object obj) {
        com.android.tools.r8.graph.J2 b10 = b(j22, (AbstractC5308Hz) null);
        List list = (List) map.get(b10);
        if (list != null) {
            list.add(obj);
            return;
        }
        Object put = map2.put(b10, obj);
        if (put != null) {
            boolean z10 = AT.f38618a;
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(put);
            arrayList.add(obj);
            map.put(b10, arrayList);
            map2.remove(b10);
        }
    }

    public final IdentityHashMap a(Map map, final BiFunction biFunction) {
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        final IdentityHashMap identityHashMap2 = new IdentityHashMap();
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                AbstractC5308Hz.this.a(identityHashMap2, identityHashMap, (com.android.tools.r8.graph.J2) obj, obj2);
            }
        });
        identityHashMap2.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                AbstractC5308Hz.a(BiFunction.this, identityHashMap, (com.android.tools.r8.graph.J2) obj, (List) obj2);
            }
        });
        return identityHashMap;
    }

    public static void a(BiFunction biFunction, Map map, com.android.tools.r8.graph.J2 j22, List list) {
        Object apply = biFunction.apply(j22, list);
        if (apply != null) {
            map.put(j22, apply);
        }
    }

    public final void a(C4798y c4798y, C4765w4 c4765w4) {
        Collection<com.android.tools.r8.graph.H2> e10 = c4798y.f().e();
        Set c10 = AbstractC5513Ll0.c();
        Set c11 = AbstractC5513Ll0.c();
        for (com.android.tools.r8.graph.H2 h22 : c4765w4.d()) {
            Iterator<C4460g1> it = h22.I0().iterator();
            while (it.hasNext()) {
                c10.add(it.next().getReference());
            }
            Iterator<C4516j1> it2 = h22.z1().iterator();
            while (it2.hasNext()) {
                c11.add(it2.next().getReference());
            }
        }
        for (com.android.tools.r8.graph.H2 h23 : e10) {
            com.android.tools.r8.synthesis.J g10 = c4798y.f().g();
            g10.getClass();
            if (!g10.g(h23.f36245e)) {
                for (C4460g1 c4460g1 : h23.I0()) {
                    if (!c4460g1.F0()) {
                        C4554l1 a10 = a(g(), c4460g1.getReference());
                        if (!f40940a && !c10.contains(a10)) {
                            throw new AssertionError((Object) ("Unable to map field `" + c4460g1.getReference().j0() + "` back to original program"));
                        }
                    }
                }
                for (C4516j1 c4516j1 : h23.z1()) {
                    if (!f40940a && !c4516j1.F0() && !c11.contains(c4516j1.getReference())) {
                        throw new AssertionError();
                    }
                }
            }
        }
    }
}
