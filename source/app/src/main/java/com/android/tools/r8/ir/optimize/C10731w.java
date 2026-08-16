package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.graph.C4367b3;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.D3;
import com.android.tools.r8.graph.G1;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.graph.Q2;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.graph.Z2;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC8028k40;
import com.android.tools.r8.internal.AbstractC8291lh;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.C10115wd;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C10394yE;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5576Mo0;
import com.android.tools.r8.internal.C5634No0;
import com.android.tools.r8.internal.C5731Pf0;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7549hB;
import com.android.tools.r8.internal.C7957jh;
import com.android.tools.r8.internal.C8048kB;
import com.android.tools.r8.internal.C8405mK;
import com.android.tools.r8.internal.C9126qh;
import com.android.tools.r8.internal.C9820uq;
import com.android.tools.r8.internal.EnumC5477Kw0;
import com.android.tools.r8.internal.EnumC9948vd;
import com.android.tools.r8.internal.InterfaceC6522b2;
import com.android.tools.r8.internal.M1;
import com.android.tools.r8.internal.T3;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.internal.Y5;
import com.android.tools.r8.ir.optimize.C10731w;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11261j;
import com.android.tools.r8.shaking.C11297l1;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import v.C15748x1;
import v.K1;

public final class C10731w {

    public static final boolean f54951e = true;

    public final C4798y f54952a;

    public final C8048kB f54953b;

    public final C4724u1 f54954c;

    public C10730v f54955d = null;

    public C10731w(C4798y c4798y, C8048kB c8048kB) {
        this.f54952a = c4798y;
        this.f54953b = c8048kB;
        this.f54954c = c4798y.b();
    }

    public final C10729u a(C7215fB c7215fB, AbstractC8028k40 abstractC8028k40) {
        C4460g1 q10;
        if (this.f54952a.E().f50690i1) {
            return C10729u.f54942b;
        }
        final H5 j10 = c7215fB.j();
        if (j10.getHolder().I1()) {
            return C10729u.f54942b;
        }
        if (!j10.d().f1()) {
            return C10729u.f54942b;
        }
        final Set c10 = AbstractC5513Ll0.c();
        IdentityHashMap identityHashMap = (IdentityHashMap) a(j10, c7215fB, c10);
        if (identityHashMap.isEmpty()) {
            if (f54951e || c10.isEmpty()) {
                return C10729u.f54942b;
            }
            throw new AssertionError();
        }
        final IdentityHashMap identityHashMap2 = new IdentityHashMap();
        identityHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10731w.this.a(c10, identityHashMap2, j10, (C4460g1) obj, (C5634No0) obj2);
            }
        });
        if (!c10.isEmpty()) {
            final Set c11 = AbstractC5513Ll0.c();
            C7549hB p10 = c7215fB.p();
            while (p10.hasNext()) {
                AbstractC10561zE next = p10.next();
                if (next.e() && c10.contains(next.L0())) {
                    C10340xw0 value = next.L0().value();
                    p10.i();
                    if (value.U() <= 0) {
                        if (value.L()) {
                            c11.add(value.f53886c);
                        } else if (!value.j() && value.f53886c.T1()) {
                            c11.add(value.f53886c);
                        }
                    }
                }
            }
            if (c11.size() > 0) {
                C7549hB p11 = c7215fB.p();
                Predicate predicate = new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return Set.this.contains((AbstractC10561zE) obj);
                    }
                };
                while (p11.hasNext()) {
                    if (predicate.test(p11.next())) {
                        p11.remove();
                    }
                }
            }
        }
        if (this.f54952a.m() && this.f54953b.f49516B != null) {
            if (this.f54952a.f().i()) {
                final C11245i f10 = this.f54952a.M().f();
                Stream map = identityHashMap.values().stream().filter(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return Set.this.contains((C5634No0) obj);
                    }
                }).map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return ((C5634No0) obj).getField();
                    }
                });
                Objects.requireNonNull(f10);
                final Set set = (Set) map.map(new K1(f10)).map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return ((D3) obj).p();
                    }
                }).filter(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return C11245i.this.d((com.android.tools.r8.graph.F0) obj);
                    }
                }).map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        C4554l1 reference;
                        reference = ((com.android.tools.r8.graph.F0) obj).getReference();
                        return reference;
                    }
                }).collect(Collectors.toSet());
                for (AbstractC10561zE abstractC10561zE : c7215fB.q()) {
                    if (abstractC10561zE.e() && (q10 = f10.c(abstractC10561zE.L0().getField()).q()) != null) {
                        set.remove(q10.getReference());
                    }
                }
                abstractC8028k40.a(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C10731w.a(Set.this, (C11261j) obj);
                    }
                });
                synchronized (this) {
                    try {
                        C10730v c10730v = this.f54955d;
                        if (c10730v == null) {
                            this.f54955d = new C10730v(identityHashMap2);
                            C8048kB c8048kB = this.f54953b;
                            InterfaceC6522b2 interfaceC6522b2 = new InterfaceC6522b2() {
                                @Override
                                public final void a() {
                                    C10731w.this.a();
                                }
                            };
                            if (c8048kB.f49522a.m()) {
                                List list = c8048kB.f49516B;
                                if (list != null) {
                                    list.add(interfaceC6522b2);
                                } else {
                                    throw new C5417Jv0("Attempt to call addWaveDoneAction() outside of wave.");
                                }
                            } else {
                                throw new C5417Jv0("addWaveDoneAction() should never be used in D8.");
                            }
                        } else {
                            c10730v.a(identityHashMap2);
                        }
                    } finally {
                    }
                }
            } else if (!f54951e) {
                throw new AssertionError();
            }
        } else {
            identityHashMap2.forEach(new C15748x1());
        }
        if (!identityHashMap2.isEmpty()) {
            c7215fB.x();
        }
        return new C10729u(identityHashMap2);
    }

    public final void a(Set set, Map map, H5 h52, C4460g1 c4460g1, C5634No0 c5634No0) {
        EnumC9948vd enumC9948vd;
        M2 m22 = c4460g1.getReference().f37449i;
        C10340xw0 i10 = c5634No0.value().i();
        if (set.contains(c5634No0)) {
            if (m22 == this.f54954c.f38052g2) {
                H2 holder = h52.getHolder();
                AbstractC4592n1 abstractC4592n1 = null;
                if (!i10.j()) {
                    if (i10.M()) {
                        if (i10.K()) {
                            if (!f54951e && !i10.R()) {
                                throw new AssertionError();
                            }
                            abstractC4592n1 = Z2.f37013d;
                        } else if (i10.L()) {
                            abstractC4592n1 = new R2.k(i10.n().K().u2());
                        } else if (i10.N()) {
                            C9820uq O10 = i10.n().O();
                            if (!f54951e && O10.f52962m.d()) {
                                throw new AssertionError();
                            }
                            abstractC4592n1 = new Q2(O10.f52961l, O10.f52962m);
                        } else if (!f54951e) {
                            throw new AssertionError();
                        }
                    } else {
                        A2 B22 = i10.i().f53886c.k0().B2();
                        C4798y c4798y = this.f54952a;
                        C11297l1 c11297l1 = C11297l1.f57490s;
                        if (c4798y.f38425r != null) {
                            c11297l1 = c4798y.r().a(holder);
                        }
                        if (c11297l1.b(this.f54952a.E())) {
                            G1 g12 = this.f54954c.f37922O4;
                            if (B22 == g12.f36323e) {
                                abstractC4592n1 = new Q2(holder.getType(), C10115wd.a(EnumC9948vd.f53155c));
                            } else if (B22 == g12.f36324f) {
                                abstractC4592n1 = new Q2(holder.getType(), C10115wd.a(EnumC9948vd.f53157e));
                            } else if (B22 == g12.f36325g) {
                                abstractC4592n1 = new Q2(holder.getType(), C10115wd.a(EnumC9948vd.f53158f));
                            } else if (!f54951e) {
                                throw new AssertionError();
                            }
                        } else {
                            G1 g13 = this.f54954c.f37922O4;
                            if (B22 == g13.f36323e) {
                                enumC9948vd = EnumC9948vd.f53155c;
                            } else if (B22 == g13.f36324f) {
                                enumC9948vd = EnumC9948vd.f53157e;
                            } else {
                                enumC9948vd = B22 == g13.f36325g ? EnumC9948vd.f53158f : null;
                            }
                            if (enumC9948vd != null) {
                                abstractC4592n1 = new R2.k(enumC9948vd.a(holder.getType().V0(), holder, this.f54954c, 0));
                            } else if (!f54951e) {
                                throw new AssertionError();
                            }
                        }
                    }
                }
                map.put(c4460g1, abstractC4592n1);
                return;
            }
            if (!m22.I0() && !m22.E0()) {
                if (i10.M()) {
                    AbstractC8291lh n10 = i10.n();
                    n10.getClass();
                    if (n10 instanceof C5731Pf0) {
                        map.put(c4460g1, new C4367b3(i10.r().F0().f43306l));
                        return;
                    }
                }
                C9126qh J10 = i10.n().J();
                C4724u1 c4724u1 = this.f54954c;
                if (m22 == c4724u1.f37849E1) {
                    map.put(c4460g1, !J10.A2() ? R2.c.f36741e : R2.c.f36742f);
                    return;
                }
                if (m22 == c4724u1.f37856F1) {
                    map.put(c4460g1, R2.d.a((byte) J10.u2()));
                    return;
                }
                if (m22 == c4724u1.f37898L1) {
                    short u22 = (short) J10.u2();
                    R2.j jVar = R2.j.f36757e;
                    if (u22 != 0) {
                        jVar = new R2.j(u22);
                    }
                    map.put(c4460g1, jVar);
                    return;
                }
                if (m22 == c4724u1.f37884J1) {
                    map.put(c4460g1, R2.h.j(J10.u2()));
                    return;
                }
                if (m22 == c4724u1.f37891K1) {
                    map.put(c4460g1, R2.i.a(J10.v2()));
                    return;
                }
                if (m22 == c4724u1.f37877I1) {
                    if (!C9126qh.f51850m && J10.s2() != EnumC5477Kw0.f41826d) {
                        throw new AssertionError();
                    }
                    map.put(c4460g1, R2.g.a(Float.intBitsToFloat((int) J10.f51851l)));
                    return;
                }
                if (m22 == c4724u1.f37870H1) {
                    if (!C9126qh.f51850m && J10.s2() != EnumC5477Kw0.f41828f) {
                        throw new AssertionError();
                    }
                    map.put(c4460g1, R2.f.a(Double.longBitsToDouble(J10.f51851l)));
                    return;
                }
                if (m22 == c4724u1.f37863G1) {
                    char u23 = (char) J10.u2();
                    R2.e eVar = R2.e.f36747e;
                    if (u23 != 0) {
                        eVar = new R2.e(u23);
                    }
                    map.put(c4460g1, eVar);
                    return;
                }
                throw new C5417Jv0("Unexpected field type " + ((Object) m22) + ".");
            }
            if (i10.R()) {
                map.put(c4460g1, Z2.f37013d);
                return;
            }
            throw new C5417Jv0("Unexpected default value for field type " + ((Object) m22) + ".");
        }
    }

    public static void a(Set set, final C11261j c11261j) {
        Objects.requireNonNull(c11261j);
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11261j.this.a((C4554l1) obj);
            }
        });
    }

    public final void a() {
        this.f54955d.a();
        this.f54955d = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0178 A[Catch: all -> 0x0069, TryCatch #0 {all -> 0x0069, blocks: (B:3:0x001a, B:4:0x001e, B:6:0x0024, B:8:0x002f, B:9:0x003a, B:11:0x0040, B:124:0x004c, B:127:0x0061, B:14:0x006c, B:116:0x0070, B:118:0x0086, B:120:0x008b, B:16:0x0093, B:18:0x0099, B:91:0x00a9, B:20:0x00b1, B:22:0x00cf, B:29:0x00d7, B:31:0x00dd, B:37:0x00ef, B:39:0x00f5, B:41:0x00fd, B:61:0x0103, B:64:0x010f, B:44:0x011f, B:46:0x0127, B:51:0x01a4, B:54:0x0134, B:57:0x0140, B:68:0x014d, B:73:0x0178, B:75:0x0184, B:76:0x0194, B:78:0x019a, B:80:0x01a0, B:81:0x0160, B:83:0x0170, B:86:0x01b3, B:96:0x01bd, B:112:0x01cb, B:98:0x01d3, B:101:0x01de, B:103:0x01e4, B:105:0x01ea, B:108:0x01f4, B:133:0x01fe, B:135:0x0208), top: B:2:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0194 A[Catch: all -> 0x0069, TryCatch #0 {all -> 0x0069, blocks: (B:3:0x001a, B:4:0x001e, B:6:0x0024, B:8:0x002f, B:9:0x003a, B:11:0x0040, B:124:0x004c, B:127:0x0061, B:14:0x006c, B:116:0x0070, B:118:0x0086, B:120:0x008b, B:16:0x0093, B:18:0x0099, B:91:0x00a9, B:20:0x00b1, B:22:0x00cf, B:29:0x00d7, B:31:0x00dd, B:37:0x00ef, B:39:0x00f5, B:41:0x00fd, B:61:0x0103, B:64:0x010f, B:44:0x011f, B:46:0x0127, B:51:0x01a4, B:54:0x0134, B:57:0x0140, B:68:0x014d, B:73:0x0178, B:75:0x0184, B:76:0x0194, B:78:0x019a, B:80:0x01a0, B:81:0x0160, B:83:0x0170, B:86:0x01b3, B:96:0x01bd, B:112:0x01cb, B:98:0x01d3, B:101:0x01de, B:103:0x01e4, B:105:0x01ea, B:108:0x01f4, B:133:0x01fe, B:135:0x0208), top: B:2:0x001a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Map a(H5 h52, C7215fB c7215fB, Set set) {
        Set set2;
        boolean a10;
        IdentityHashMap identityHashMap = new IdentityHashMap();
        IdentityHashMap identityHashMap2 = new IdentityHashMap();
        Set c10 = AbstractC5513Ll0.c();
        int y10 = c7215fB.y();
        try {
            W5 k10 = c7215fB.k();
            while (!k10.a(y10) && k10.u().size() <= 1) {
                k10.c(y10);
                Y5 it = k10.l().iterator();
                while (it.hasNext()) {
                    AbstractC10561zE next = it.next();
                    if (next.o1()) {
                        T3 A10 = next.A();
                        C4798y c4798y = this.f54952a;
                        A10.getClass();
                        if (A10.a(c4798y, h52, M1.a(c4798y, h52), C10394yE.f53978a)) {
                            return a(identityHashMap, identityHashMap2);
                        }
                    } else {
                        if (next instanceof C5576Mo0) {
                            C5576Mo0 K02 = next.K0();
                            H2 holder = h52.getHolder();
                            C4460g1 a11 = holder.f36251k.f37700b.a(K02.getField());
                            if (a11 != null) {
                                c10.add(a11);
                            } else {
                                return a(identityHashMap, identityHashMap2);
                            }
                        } else {
                            if (next.e()) {
                                C5634No0 L02 = next.L0();
                                if (L02.getField().f38297f != h52.p()) {
                                    return a(identityHashMap, identityHashMap2);
                                }
                                C4554l1 field = L02.getField();
                                C4460g1 a12 = h52.getHolder().f36251k.f37700b.a(field);
                                C10340xw0 i10 = L02.value().i();
                                AbstractC8999pu0 u10 = i10.u();
                                if (a12 != null) {
                                    if (!c10.contains(a12) && (!i10.N() || !i10.n().O().f52962m.d())) {
                                        if (i10.M()) {
                                            if (field.f37449i.Q0() && i10.R()) {
                                                identityHashMap.put(a12, L02);
                                                set.add(L02);
                                                if (identityHashMap2.containsKey(field)) {
                                                    set.addAll((Collection) identityHashMap2.get(field));
                                                    identityHashMap2.remove(field);
                                                }
                                            } else {
                                                if (!field.f37449i.P0() && field.f37449i != this.f54954c.f38052g2) {
                                                    set2 = c10;
                                                }
                                                identityHashMap.put(a12, L02);
                                                set.add(L02);
                                                if (identityHashMap2.containsKey(field)) {
                                                    set.addAll((Collection) identityHashMap2.get(field));
                                                    identityHashMap2.remove(field);
                                                }
                                            }
                                        } else {
                                            H2 holder2 = h52.getHolder();
                                            set2 = c10;
                                            if (L02.getField().f37449i == this.f54954c.f38052g2) {
                                                C10340xw0 i11 = L02.value().i();
                                                if (!i11.j()) {
                                                    a10 = a(holder2, i11.f53886c);
                                                    if (!a10) {
                                                        identityHashMap.put(a12, L02);
                                                        set.add(L02);
                                                        if (identityHashMap2.containsKey(field)) {
                                                            set.addAll((Collection) identityHashMap2.get(field));
                                                            identityHashMap2.remove(field);
                                                        }
                                                    } else if (u10.y() && u10.t()) {
                                                        identityHashMap.put(a12, L02);
                                                    }
                                                }
                                            }
                                            a10 = false;
                                            if (!a10) {
                                            }
                                        }
                                        ((Set) identityHashMap2.computeIfAbsent(field, new Function() {
                                            @Override
                                            public final Object apply(Object obj) {
                                                Set c11;
                                                c11 = AbstractC5513Ll0.c();
                                                return c11;
                                            }
                                        })).add(L02);
                                    }
                                } else {
                                    return a(identityHashMap, identityHashMap2);
                                }
                            } else {
                                set2 = c10;
                                C4798y c4798y2 = this.f54952a;
                                if (next.b(c4798y2, h52, M1.a(c4798y2, h52), C10394yE.f53978a)) {
                                    return a(identityHashMap, identityHashMap2);
                                }
                                if (!a(h52.getHolder(), next) && next.N1() && next.e1() && next.d().A()) {
                                    return a(identityHashMap, identityHashMap2);
                                }
                            }
                            c10 = set2;
                        }
                        set2 = c10;
                        c10 = set2;
                    }
                }
                Set set3 = c10;
                if (k10.i().G1()) {
                    k10 = k10.i().U().v2();
                }
                c10 = set3;
            }
            c7215fB.a(y10);
            return a(identityHashMap, identityHashMap2);
        } finally {
            c7215fB.a(y10);
        }
    }

    public static Map a(final IdentityHashMap identityHashMap, IdentityHashMap identityHashMap2) {
        identityHashMap2.o().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Map.this.remove((C4554l1) obj);
            }
        });
        return identityHashMap;
    }

    public final boolean a(H2 h22, AbstractC10561zE abstractC10561zE) {
        if (abstractC10561zE.T1()) {
            C8405mK k02 = abstractC10561zE.k0();
            G1 g12 = this.f54954c.f37922O4;
            if (!g12.f36334p.contains(k02.B2())) {
                return false;
            }
            C10340xw0 c10340xw0 = (C10340xw0) k02.f54321f.get(0);
            if (!c10340xw0.j()) {
                AbstractC10561zE abstractC10561zE2 = c10340xw0.f53886c;
                abstractC10561zE2.getClass();
                if ((abstractC10561zE2 instanceof C7957jh) && c10340xw0.f53886c.F().f49303l == h22.f36245e) {
                    return true;
                }
            }
        }
        return false;
    }
}
