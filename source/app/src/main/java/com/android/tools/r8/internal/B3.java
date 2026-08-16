package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.proto.c;
import com.android.tools.r8.graph.proto.g;
import com.android.tools.r8.graph.proto.k;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11382q1;
import com.android.tools.r8.synthesis.S;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.Predicate;
import java.util.function.Supplier;

public final class B3 {

    public static final boolean f38786l = true;

    public final C4724u1 f38787a;

    public final C8570nJ f38788b;

    public final C8570nJ.b f38789c;

    public final HashMap f38790d = new HashMap();

    public final C7541h80 f38791e = C7541h80.k();

    public final HashMap f38792f = new HashMap();

    public final HashMap f38793g = new HashMap();

    public final HashMap f38794h = new HashMap();

    public final F3 f38795i;

    public final C5093Ef f38796j;

    public final C3 f38797k;

    public B3(C3 c32, F3 f32, C5093Ef c5093Ef) {
        this.f38797k = c32;
        this.f38787a = c32.f39110a.b();
        this.f38788b = c32.f39110a.E();
        this.f38789c = c32.f39110a.E().c();
        this.f38795i = f32;
        this.f38796j = c5093Ef;
    }

    public static com.android.tools.r8.graph.M2 a(int i10) {
        return null;
    }

    public static boolean b(int i10) {
        return true;
    }

    public final void c(C5058Dq c5058Dq, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.shaking.I1 a10 = this.f38797k.f39110a.a(h52);
        if (a10.c(this.f38788b) && a10.e(this.f38788b) && a10.g(this.f38788b)) {
            return;
        }
        c5058Dq.f39661b.add(h52.x());
    }

    public final boolean d(com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.shaking.I1 a10 = this.f38797k.f39110a.a(h52);
        C8570nJ c8570nJ = this.f38788b;
        return a10.g(c8570nJ) && a10.c(c8570nJ) && a10.e(c8570nJ) && a10.f56567z && h52.A().B().a();
    }

    public final boolean a(AbstractC8374m80 abstractC8374m80) {
        return !((com.android.tools.r8.graph.H5) ((com.android.tools.r8.graph.H0) abstractC8374m80.f45165b.values().iterator().next())).E().S0() && AbstractC9907vK.a(abstractC8374m80, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return B3.this.d((com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public final void b(Set set) {
        final C5058Dq c5058Dq = new C5058Dq(new HashSet());
        final Set c10 = AbstractC5513Ll0.c();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            h22.h(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    B3.this.c(c5058Dq, (com.android.tools.r8.graph.H5) obj);
                }
            }, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return B3.a((C4516j1) obj);
                }
            });
            this.f38797k.f39111b.a(h22, new BiPredicate() {
                @Override
                public final boolean test(Object obj, Object obj2) {
                    return B3.a(Set.this, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.E0) obj2);
                }
            }, new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    B3.this.a(c5058Dq, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.E0) obj2);
                }
            });
        }
        c5058Dq.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                B3.this.a((com.android.tools.r8.graph.F2) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.F2 f22) {
        a(f22, f22, A3.f38515e);
    }

    public final void b(Map map, Set set, com.android.tools.r8.graph.F5 f52) {
        AbstractC10330xt g10 = f52.d().f37207l.g();
        com.android.tools.r8.graph.M2 type = f52.getReference().getType();
        if (!g10.l()) {
            C11382q1 a10 = this.f38797k.f39110a.a(f52);
            boolean z10 = f38786l;
            if (!z10 && a10.d(this.f38788b) && (!f52.getReference().getType().a(this.f38797k.f39110a) || !g10.k())) {
                throw new AssertionError();
            }
            if (a10.f57711l && !g10.k() && !g10.j()) {
                AbstractC8999pu0 n10 = g10.a().n();
                if (!z10 && !n10.y()) {
                    throw new AssertionError();
                }
                C6949de b10 = type.b(this.f38797k.f39110a).b();
                if (!n10.a(b10)) {
                    if (!n10.c(b10, this.f38797k.f39110a)) {
                        if (!z10 && !this.f38788b.f50599F1.f50836P) {
                            throw new AssertionError();
                        }
                    } else {
                        com.android.tools.r8.graph.M2 a11 = n10.d().a(this.f38787a);
                        if (a11 != type && Z1.a(this.f38797k.f39110a, a11, type) && G2.a(this.f38797k.f39110a, a11, type)) {
                            type = a11;
                        }
                    }
                }
            }
        }
        if (type != f52.getReference().getType()) {
            map.put(f52.getReference(), type);
        } else {
            set.add(f52.getReference());
        }
    }

    public final AbstractC5746Pm0 c(com.android.tools.r8.graph.H5 h52) {
        F1 i10;
        if (h52.E().a(this.f38797k.f39110a)) {
            G1 g12 = this.f38797k.f39110a.f38427t;
            com.android.tools.r8.graph.M2 E10 = h52.E();
            g12.getClass();
            i10 = G1.b(E10);
        } else {
            if (h52.d().J0()) {
                Map map = this.f38791e.f43368b;
                C7374g80 c7374g80 = C7374g80.f48192a;
                if (map.containsKey(new C7333fv(c7374g80, h52))) {
                    if (!f38786l && !h52.getAccessFlags().H()) {
                        throw new AssertionError();
                    }
                    i10 = (F1) this.f38791e.f43368b.get(new C7333fv(c7374g80, h52));
                }
            }
            i10 = h52.A().i();
        }
        if (i10.r() && i10.w().a(this.f38797k.f39110a)) {
            return i10.w();
        }
        return null;
    }

    public final C9526t3 a(Set set, C5058Dq c5058Dq, Consumer consumer) {
        b(set);
        a(set, c5058Dq);
        C4798y c4798y = this.f38797k.f39110a;
        boolean z10 = C9693u3.f52773o;
        C9526t3 c9526t3 = new C9526t3(c4798y);
        ArrayList arrayList = new ArrayList(set);
        arrayList.sort(Comparator.comparing(new com.android.tools.r8.errors.q()));
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) obj;
            if (a(h22, c5058Dq, c9526t3)) {
                consumer.accept(h22);
            }
        }
        return c9526t3;
    }

    public static boolean a(C4516j1 c4516j1) {
        return !c4516j1.j1();
    }

    public static boolean a(Set set, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02) {
        return (e02 == null || e02.e0() || !set.add(e02)) ? false : true;
    }

    public final void a(C5058Dq c5058Dq, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02) {
        C5212Gg c5212Gg = this.f38797k.f39113d;
        com.android.tools.r8.graph.S z10 = e02.z();
        c5212Gg.getClass();
        com.android.tools.r8.graph.E0 e03 = (com.android.tools.r8.graph.E0) z10;
        e03.getClass();
        C5058Dq c5058Dq2 = (C5058Dq) c5212Gg.f40556b.get(e03);
        if (c5058Dq2 == null) {
            c5058Dq2 = c5212Gg.a(e03);
        }
        c5058Dq.getClass();
        c5058Dq.f39661b.addAll(c5058Dq2.f39661b);
    }

    public final void a(com.android.tools.r8.graph.F2 f22, com.android.tools.r8.graph.F2 f23, A3 a32) {
        ((Map) this.f38792f.computeIfAbsent(f23, TU.a(new C6176Wz0()))).put(a32, f22);
        this.f38794h.put(f22, new C8699o50(a32, f23));
    }

    public final boolean b(C5058Dq c5058Dq, com.android.tools.r8.graph.H5 h52) {
        return !a(c5058Dq, h52);
    }

    public final void a(Set set, final C5058Dq c5058Dq) {
        a(set).forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                B3.this.a(c5058Dq, (com.android.tools.r8.graph.F2) obj, (AbstractC8374m80) obj2);
            }
        });
    }

    public final com.android.tools.r8.graph.proto.j b(com.android.tools.r8.graph.H5 h52, C5058Dq c5058Dq, C5058Dq c5058Dq2) {
        if (h52.d().f37314g.D()) {
            return a(h52, c5058Dq, c5058Dq2);
        }
        return b(h52);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0088, code lost:
    
        if (com.android.tools.r8.internal.AbstractC9199r50.a(r9.f38797k.f39110a, r10, 0) != false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(final C5058Dq c5058Dq, com.android.tools.r8.graph.F2 f22, AbstractC8374m80 abstractC8374m80) {
        AbstractC5746Pm0 abstractC5746Pm0;
        F1 i10;
        if (AbstractC9907vK.b(abstractC8374m80, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return B3.this.b(c5058Dq, (com.android.tools.r8.graph.H5) obj);
            }
        })) {
            return;
        }
        Iterator it = abstractC8374m80.f45165b.values().iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 holder = ((com.android.tools.r8.graph.H5) it.next()).getHolder();
            if (holder.isInterface() && ((C11245i) this.f38797k.f39110a.f()).f57405t.b(holder)) {
                return;
            }
        }
        boolean z10 = true;
        int i11 = 0;
        if (abstractC8374m80.f45165b.size() <= 1) {
            com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) ((com.android.tools.r8.graph.H0) abstractC8374m80.f45165b.values().iterator().next());
            if (h52.A().x()) {
                if (h52.A().v().get(0)) {
                    if (AbstractC9199r50.a(this.f38797k.f39110a, h52)) {
                    }
                }
            }
        }
        z10 = false;
        C6899dH c6899dH = new C6899dH(16);
        FH fh2 = new FH();
        while (true) {
            com.android.tools.r8.graph.M2 m22 = null;
            if (i11 < f22.b().n0().size()) {
                int i12 = i11 + 1;
                for (com.android.tools.r8.graph.H5 h53 : abstractC8374m80.f45165b.values()) {
                    if (!h53.d().d1() && (!h53.A().x() || !h53.A().v().get(i12) || !AbstractC9199r50.a(this.f38797k.f39110a, h53) || !AbstractC9199r50.a(this.f38797k.f39110a, h53, i12))) {
                        F8 j10 = h53.A().j();
                        j10.getClass();
                        if (j10 instanceof C7954jg) {
                            F1 a10 = j10.a().a(i12);
                            if (a10.r() && a10.w().b(this.f38797k.f39110a, h53)) {
                            }
                        }
                        Iterator it2 = abstractC8374m80.f45165b.values().iterator();
                        com.android.tools.r8.graph.M2 m23 = null;
                        while (true) {
                            if (it2.hasNext()) {
                                com.android.tools.r8.graph.H5 h54 = (com.android.tools.r8.graph.H5) it2.next();
                                if (!h54.getAccessFlags().H()) {
                                    com.android.tools.r8.graph.M2 b10 = b(h54, i11);
                                    if (b10 == null || !(m23 == null || m23 == b10)) {
                                        break;
                                    } else {
                                        m23 = b10;
                                    }
                                }
                            } else {
                                if (!f38786l && m23 != null && m23 == ((com.android.tools.r8.graph.H5) ((com.android.tools.r8.graph.H0) abstractC8374m80.f45165b.values().iterator().next())).b(i11)) {
                                    throw new AssertionError();
                                }
                                m22 = m23;
                            }
                        }
                        if (m22 != null) {
                            c6899dH.a(i11, m22);
                        }
                        i11 = i12;
                    }
                }
                fh2.add(i11);
                i11 = i12;
            } else {
                if (!f22.b().o0().S0()) {
                    abstractC5746Pm0 = null;
                    for (com.android.tools.r8.graph.H5 h55 : abstractC8374m80.f45165b.values()) {
                        if (!h55.d().d1()) {
                            if (this.f38797k.f39110a.a(h55).a(this.f38797k.f39110a, h55)) {
                                if (h55.E().a(this.f38797k.f39110a)) {
                                    G1 g12 = this.f38797k.f39110a.f38427t;
                                    com.android.tools.r8.graph.M2 E10 = h55.E();
                                    g12.getClass();
                                    i10 = G1.b(E10);
                                } else {
                                    i10 = h55.A().i();
                                }
                                if (i10.r() && i10.w().a(this.f38797k.f39110a) && (abstractC5746Pm0 == null || i10.equals(abstractC5746Pm0))) {
                                    abstractC5746Pm0 = i10.w();
                                }
                            }
                        }
                    }
                    if (abstractC5746Pm0 != null && !a(abstractC8374m80)) {
                        Iterator it3 = abstractC8374m80.f45165b.values().iterator();
                        com.android.tools.r8.graph.M2 m24 = null;
                        while (true) {
                            if (it3.hasNext()) {
                                com.android.tools.r8.graph.H5 h56 = (com.android.tools.r8.graph.H5) it3.next();
                                if (!h56.d().d1()) {
                                    com.android.tools.r8.graph.M2 a11 = a(h56, AbstractC9530t40.f52519c, (AbstractC5746Pm0) null);
                                    if (a11 == null || !(m24 == null || m24 == a11)) {
                                        break;
                                    } else {
                                        m24 = a11;
                                    }
                                }
                            } else {
                                if (!f38786l && m24 != null && m24 == ((com.android.tools.r8.graph.H5) ((com.android.tools.r8.graph.H0) abstractC8374m80.f45165b.values().iterator().next())).E()) {
                                    throw new AssertionError();
                                }
                                m22 = m24;
                            }
                        }
                    } else {
                        m22 = this.f38787a.f37905M1;
                    }
                    if (!z10 || m22 != null || !c6899dH.isEmpty() || !fh2.isEmpty()) {
                        this.f38790d.put(f22, new A3(z10, m22, c6899dH, fh2));
                    }
                    if (m22 == this.f38787a.f37905M1 || abstractC5746Pm0 == null) {
                        return;
                    }
                    for (com.android.tools.r8.graph.H5 h57 : abstractC8374m80.f45165b.values()) {
                        if (h57.getAccessFlags().H()) {
                            C7541h80 c7541h80 = this.f38791e;
                            c7541h80.getClass();
                            c7541h80.f43368b.put(new C7333fv(C7374g80.f48192a, h57), abstractC5746Pm0);
                        }
                    }
                    return;
                }
                abstractC5746Pm0 = null;
                if (abstractC5746Pm0 != null) {
                }
                m22 = this.f38787a.f37905M1;
                if (!z10) {
                }
                this.f38790d.put(f22, new A3(z10, m22, c6899dH, fh2));
                if (m22 == this.f38787a.f37905M1) {
                    return;
                } else {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.tools.r8.internal.W, com.android.tools.r8.internal.nI, java.util.Set, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    public final com.android.tools.r8.graph.proto.j b(com.android.tools.r8.graph.H5 h52) {
        A3 a32 = (A3) this.f38790d.get(h52.x());
        if (a32 == null) {
            return com.android.tools.r8.graph.proto.j.f37620d;
        }
        final ?? r12 = a32.f38520d;
        final ?? r22 = a32.f38519c;
        if (h52.getAccessFlags().H()) {
            return a(h52, a32.f38518b, (SG) r22, (InterfaceC8568nI) r12);
        }
        boolean z10 = a32.f38517a;
        com.android.tools.r8.graph.M2 m22 = a32.f38518b;
        IntFunction intFunction = new IntFunction() {
            @Override
            public final Object apply(int i10) {
                return (com.android.tools.r8.graph.M2) SG.this.get(i10);
            }
        };
        Objects.requireNonNull(r12);
        com.android.tools.r8.graph.proto.j a10 = a(h52, z10, m22, intFunction, new IntPredicate() {
            @Override
            public final boolean test(int i10) {
                return InterfaceC8568nI.this.h(i10);
            }
        });
        if (!f38786l) {
            if (com.android.tools.r8.graph.proto.c.a(Integer.MAX_VALUE, a10.f37623b.f37604a) != r12.size() + C8704o7.a(z10)) {
                throw new AssertionError();
            }
        }
        return a10;
    }

    public static HashMap a(Set set) {
        final HashMap hashMap = new HashMap();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            Consumer consumer = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((AbstractC8374m80) Map.this.computeIfAbsent(r2.x(), TU.a(new C6880dA0()))).add((AbstractC8374m80) ((com.android.tools.r8.graph.H5) obj));
                }
            };
            h22.getClass();
            h22.j(consumer, EnumC6871d70.f47286b);
        }
        return hashMap;
    }

    public final boolean a(C5058Dq c5058Dq, com.android.tools.r8.graph.H5 h52) {
        if (!this.f38797k.f39110a.a(h52).i(this.f38788b) || h52.d().k1().c()) {
            return false;
        }
        C11245i c11245i = (C11245i) this.f38797k.f39110a.f();
        c11245i.getClass();
        if (c11245i.f57401p.contains(h52.getReference())) {
            return false;
        }
        c5058Dq.getClass();
        return !c5058Dq.f39661b.contains(h52.x());
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22, final C5058Dq c5058Dq, final C9526t3 c9526t3) {
        final U6 u62 = new U6();
        final Set c10 = AbstractC5513Ll0.c();
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        h22.f(new Consumer() {
            @Override
            public final void accept(Object obj) {
                B3.this.b(identityHashMap, c10, (com.android.tools.r8.graph.F5) obj);
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean I02;
                I02 = ((C4460g1) obj).getType().I0();
                return I02;
            }
        });
        h22.f(new Consumer() {
            @Override
            public final void accept(Object obj) {
                B3.this.a(c10, identityHashMap, c9526t3, u62, (com.android.tools.r8.graph.F5) obj);
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean I02;
                I02 = ((C4460g1) obj).getType().I0();
                return I02;
            }
        });
        final C5058Dq c5058Dq2 = new C5058Dq(new HashSet());
        final C7541h80 k10 = C7541h80.k();
        h22.g(new Consumer() {
            @Override
            public final void accept(Object obj) {
                B3.this.a(c5058Dq, c5058Dq2, k10, (com.android.tools.r8.graph.H5) obj);
            }
        }, EnumC6871d70.f47286b);
        h22.l(new Consumer() {
            @Override
            public final void accept(Object obj) {
                B3.this.a(k10, c5058Dq, c5058Dq2, c9526t3, u62, (com.android.tools.r8.graph.H5) obj);
            }
        });
        return u62.a();
    }

    public final void a(Set set, Map map, C9526t3 c9526t3, U6 u62, com.android.tools.r8.graph.F5 f52) {
        C4554l1 a10 = a(map, set, f52);
        if (a10 != f52.getReference()) {
            C4554l1 reference = f52.getReference();
            c9526t3.getClass();
            if (!C9526t3.f52507e && reference == a10) {
                throw new AssertionError();
            }
            c9526t3.f52509b.f51964b.a(reference, a10, true);
            u62.e();
        }
    }

    public final void a(C5058Dq c5058Dq, C5058Dq c5058Dq2, C7541h80 c7541h80, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.proto.j a10 = a(h52, c5058Dq, (C5058Dq) null);
        if (a10.c()) {
            c5058Dq2.getClass();
            c5058Dq2.a(h52.getReference());
        }
        c7541h80.getClass();
        c7541h80.f43368b.put(new C7333fv(C7374g80.f48192a, h52), a10);
    }

    public final void a(C7541h80 c7541h80, final C5058Dq c5058Dq, final C5058Dq c5058Dq2, C9526t3 c9526t3, U6 u62, final com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.proto.j jVar = (com.android.tools.r8.graph.proto.j) c7541h80.a(h52, new Supplier() {
            @Override
            public final Object get() {
                return B3.this.b(h52, c5058Dq, c5058Dq2);
            }
        });
        if (h52.d().j1()) {
            if (jVar.c()) {
                if (f38786l) {
                    return;
                }
                c5058Dq2.getClass();
                if (!c5058Dq2.f39661b.contains(h52.x())) {
                    throw new AssertionError();
                }
                return;
            }
            jVar = a(h52, jVar, c5058Dq2);
        }
        com.android.tools.r8.graph.A2 a10 = a(h52, jVar);
        if (a10 != h52.getReference()) {
            com.android.tools.r8.graph.A2 reference = h52.getReference();
            c9526t3.getClass();
            boolean z10 = C9526t3.f52507e;
            if (!z10 && reference == a10) {
                throw new AssertionError();
            }
            c9526t3.f52510c.f51964b.a(reference, a10, true);
            if (!jVar.c()) {
                c9526t3.f52511d.put(a10, jVar);
            }
            if (!z10 && !reference.z0().S0() && a10.z0().S0() && !jVar.b()) {
                throw new AssertionError();
            }
            u62.e();
            return;
        }
        if (jVar.c()) {
            return;
        }
        c9526t3.f52511d.put(h52.getReference(), jVar);
        u62.e();
    }

    public final C4554l1 a(Map map, Set set, com.android.tools.r8.graph.F5 f52) {
        com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) map.getOrDefault(f52.getReference(), f52.getReference().getType());
        if (m22 == f52.getReference().getType()) {
            if (f38786l || set.contains(f52.getReference())) {
                return f52.getReference();
            }
            throw new AssertionError();
        }
        C4724u1 c4724u1 = this.f38787a;
        com.android.tools.r8.graph.M2 p10 = f52.p();
        String l22 = f52.getReference().t0().toString();
        Objects.requireNonNull(set);
        return c4724u1.a(p10, m22, l22, new u.w1(set));
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.proto.j jVar) {
        final com.android.tools.r8.graph.D2 x10 = h52.x();
        final A3 a10 = A3.a(h52, jVar);
        com.android.tools.r8.graph.F2 f22 = (com.android.tools.r8.graph.F2) ((Map) this.f38792f.getOrDefault(x10, Collections.EMPTY_MAP)).get(a10);
        if (f22 != null) {
            if (!f38786l && !f22.b().equals(jVar.a(h52, this.f38787a).y0())) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.M2 p10 = h52.p();
            C4724u1 c4724u1 = this.f38787a;
            p10.getClass();
            return c4724u1.a(p10, f22.b(), f22.a());
        }
        com.android.tools.r8.graph.A2 a11 = jVar.a(h52, this.f38787a);
        com.android.tools.r8.graph.D2 a12 = AbstractC9280rd.a(a11, a11);
        if (!this.f38794h.containsKey(a12)) {
            if (!h52.d().j1()) {
                a(a12, x10, a10);
            }
            return a11;
        }
        C8699o50 c8699o50 = (C8699o50) this.f38794h.get(a12);
        if (!f38786l && ((A3) c8699o50.a()).equals(a10) && ((com.android.tools.r8.graph.F2) c8699o50.b()).equals(x10)) {
            throw new AssertionError();
        }
        final IH ih2 = (IH) this.f38793g.computeIfAbsent(a12, TU.a(new Supplier() {
            @Override
            public final Object get() {
                return new IH();
            }
        }));
        com.android.tools.r8.graph.A2 a13 = this.f38787a.a(h52.getReference().t0().toString(), null, a11.y0(), h52.p(), new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return B3.this.a(ih2, x10, a10, (com.android.tools.r8.graph.A2) obj);
            }
        }, ih2.a());
        if (!h52.d().j1()) {
            a13.getClass();
            a(new com.android.tools.r8.graph.D2(a13), x10, a10);
        }
        return a13;
    }

    public final boolean a(IH ih2, com.android.tools.r8.graph.F2 f22, A3 a32, com.android.tools.r8.graph.A2 a22) {
        ih2.c();
        a22.getClass();
        C8699o50 c8699o50 = (C8699o50) this.f38794h.get(new com.android.tools.r8.graph.D2(a22));
        if (c8699o50 == null) {
            return true;
        }
        return ((A3) c8699o50.a()).equals(a32) && ((com.android.tools.r8.graph.F2) c8699o50.b()).equals(f22);
    }

    public final com.android.tools.r8.graph.proto.j a(com.android.tools.r8.graph.H5 h52, C5058Dq c5058Dq, C5058Dq c5058Dq2) {
        com.android.tools.r8.graph.proto.j jVar;
        if (!f38786l && !h52.d().f37314g.D()) {
            throw new AssertionError();
        }
        if (a(c5058Dq, h52)) {
            jVar = a(h52);
        } else {
            jVar = com.android.tools.r8.graph.proto.j.f37620d;
        }
        return (!h52.d().j1() || c5058Dq2 == null) ? jVar : a(h52, jVar, c5058Dq2);
    }

    public final com.android.tools.r8.graph.proto.j a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.proto.j jVar, C5058Dq c5058Dq) {
        AbstractC4952Bv c5242Gv;
        if (c5058Dq.a(jVar.a(h52, this.f38787a))) {
            return jVar;
        }
        if (!this.f38789c.f50746d) {
            C4724u1 c4724u1 = this.f38787a;
            AbstractC4895Av0 it = AbstractC7552hC.a(c4724u1.f37884J1, c4724u1.f38068i2).iterator();
            while (it.hasNext()) {
                com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) it.next();
                if (m22.L0()) {
                    c5242Gv = new C5184Fv();
                } else {
                    c5242Gv = new C5242Gv(m22);
                }
                com.android.tools.r8.graph.proto.j a10 = jVar.a(Arrays.asList(c5242Gv));
                if (c5058Dq.a(a10.a(h52, this.f38787a))) {
                    return a10;
                }
            }
        }
        com.android.tools.r8.synthesis.J g10 = this.f38797k.f39110a.f38408a.g();
        com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58195v;
                return bVar;
            }
        };
        C5209Gf a11 = this.f38796j.a(h52).a();
        C4798y c4798y = this.f38797k.f39110a;
        g10.getClass();
        com.android.tools.r8.graph.H2 a12 = g10.a(i10, a11, c4798y, C6628bi.b());
        this.f38795i.a(a12, h52);
        com.android.tools.r8.graph.proto.j a13 = jVar.a(Arrays.asList(new C5242Gv(a12.getType())));
        boolean a14 = c5058Dq.a(a13.a(h52, this.f38787a));
        if (f38786l || a14) {
            return a13;
        }
        throw new AssertionError();
    }

    public final com.android.tools.r8.graph.proto.j a(final com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.M2 m22, final SG sg2, final InterfaceC8568nI interfaceC8568nI) {
        c.a a10 = com.android.tools.r8.graph.proto.c.a();
        C4516j1 d10 = h52.d();
        final c.a a11 = a10.a(d10.getReference().a(d10.w0()));
        com.android.tools.r8.graph.O2 C10 = h52.C();
        ZH zh2 = new ZH() {
            @Override
            public final void a(int i10, Object obj) {
                B3.a(com.android.tools.r8.graph.H5.this, interfaceC8568nI, a11, sg2, i10, (com.android.tools.r8.graph.M2) obj);
            }
        };
        int i10 = 0;
        while (true) {
            com.android.tools.r8.graph.M2[] m2Arr = C10.f36675b;
            if (i10 < m2Arr.length) {
                zh2.a(i10, m2Arr[i10]);
                i10++;
            } else {
                return com.android.tools.r8.graph.proto.j.a(Collections.EMPTY_LIST, a(m22, h52), a11.a());
            }
        }
    }

    public static void a(com.android.tools.r8.graph.H5 h52, InterfaceC8568nI interfaceC8568nI, c.a aVar, SG sg2, int i10, com.android.tools.r8.graph.M2 m22) {
        int i11 = (!h52.d().w0() ? 1 : 0) + i10;
        if (interfaceC8568nI.h(i10)) {
            aVar.a(i11, ((g.a) com.android.tools.r8.graph.proto.g.d().a(m22)).a());
        } else if (sg2.a(i10)) {
            com.android.tools.r8.graph.M2 m23 = (com.android.tools.r8.graph.M2) sg2.get(i10);
            k.a d10 = com.android.tools.r8.graph.proto.k.d();
            d10.f37630a = m23;
            aVar.a(i11, d10.b(m22).a(m23).a());
        }
    }

    public final com.android.tools.r8.graph.proto.j a(final com.android.tools.r8.graph.H5 h52) {
        IntFunction intFunction;
        com.android.tools.r8.shaking.I1 a10 = this.f38797k.f39110a.a(h52);
        C8570nJ c8570nJ = this.f38788b;
        if (a10.g(c8570nJ) && a10.c(c8570nJ) && a10.e(c8570nJ) && a10.f56562u) {
            intFunction = new IntFunction() {
                @Override
                public final Object apply(int i10) {
                    return B3.this.b(h52, i10);
                }
            };
        } else {
            intFunction = new IntFunction() {
                @Override
                public final Object apply(int i10) {
                    return B3.a(i10);
                }
            };
        }
        return a(h52, true, a(h52, h52.A().B(), c(h52)), intFunction, new IntPredicate() {
            @Override
            public final boolean test(int i10) {
                return B3.b(i10);
            }
        });
    }

    public final com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.H5 h52, AbstractC9530t40 abstractC9530t40, AbstractC5746Pm0 abstractC5746Pm0) {
        com.android.tools.r8.graph.M2 E10 = h52.E();
        if (E10.S0()) {
            return null;
        }
        if (abstractC5746Pm0 != null) {
            C4798y c4798y = this.f38797k.f39110a;
            if (G2.a(abstractC5746Pm0, c4798y.f38405T, c4798y)) {
                return this.f38787a.f37905M1;
            }
        }
        com.android.tools.r8.shaking.I1 a10 = this.f38797k.f39110a.a(h52);
        C8570nJ c8570nJ = this.f38788b;
        if (a10.g(c8570nJ) && a10.c(c8570nJ) && a10.e(c8570nJ) && a10.f56567z && abstractC9530t40.a()) {
            return this.f38787a.f37905M1;
        }
        C8570nJ c8570nJ2 = this.f38788b;
        if (!a10.g(c8570nJ2) || !a10.c(c8570nJ2) || !a10.e(c8570nJ2) || !a10.f56564w) {
            return null;
        }
        AbstractC8999pu0 a11 = h52.A().n().a(E10.b(this.f38797k.f39110a));
        boolean z10 = f38786l;
        if (!z10) {
            a11.getClass();
            if (!(a11 instanceof C10328xs0) && !a11.a(E10.b(this.f38797k.f39110a), this.f38797k.f39110a)) {
                throw new AssertionError();
            }
        }
        if (!a11.s()) {
            if (z10 || a11.r() || (a11 instanceof C6301Zd0) || (a11 instanceof C10328xs0)) {
                return null;
            }
            throw new AssertionError();
        }
        com.android.tools.r8.graph.M2 a12 = a11.b().a(this.f38787a);
        if (a12 != E10 && ((C11245i) this.f38797k.f39110a.f()).c(a12, E10) && Z1.a(this.f38797k.f39110a, a12, E10) && G2.a(this.f38797k.f39110a, a12, E10)) {
            return a12;
        }
        return null;
    }

    public final com.android.tools.r8.graph.M2 b(com.android.tools.r8.graph.H5 h52, int i10) {
        com.android.tools.r8.shaking.I1 a10 = this.f38797k.f39110a.a(h52);
        C8570nJ c8570nJ = this.f38788b;
        if (a10.g(c8570nJ) && a10.c(c8570nJ) && a10.e(c8570nJ) && a10.f56562u) {
            com.android.tools.r8.graph.M2 b10 = h52.b(i10);
            if (!b10.I0()) {
                return null;
            }
            AbstractC10330xt b11 = h52.A().j().b(i10 + (!h52.d().w0() ? 1 : 0));
            if (b11 != null && !b11.l()) {
                AbstractC8999pu0 b12 = b10.b(this.f38797k.f39110a);
                AbstractC8999pu0 a11 = b11.a(b12);
                boolean z10 = f38786l;
                if (!z10 && !a11.a(b12, this.f38797k.f39110a)) {
                    throw new AssertionError();
                }
                if (!z10 && !a11.y()) {
                    throw new AssertionError();
                }
                a11.getClass();
                if ((a11 instanceof C6301Zd0) || a11.r()) {
                    return null;
                }
                if (!z10 && !a11.s()) {
                    throw new AssertionError();
                }
                com.android.tools.r8.graph.M2 a12 = a11.b().a(this.f38787a);
                if (a12 != b10 && ((C11245i) this.f38797k.f39110a.f()).c(a12, b10) && Z1.a(this.f38797k.f39110a, a12, b10) && G2.a(this.f38797k.f39110a, a12, b10)) {
                    return a12;
                }
                return null;
            }
        }
        return null;
    }

    public final com.android.tools.r8.graph.proto.j a(com.android.tools.r8.graph.H5 h52, boolean z10, com.android.tools.r8.graph.M2 m22, IntFunction intFunction, IntPredicate intPredicate) {
        List list = Collections.EMPTY_LIST;
        com.android.tools.r8.graph.proto.k a10 = a(m22, h52);
        c.a a11 = com.android.tools.r8.graph.proto.c.a();
        C4516j1 d10 = h52.d();
        c.a a12 = a11.a(d10.getReference().a(d10.w0()));
        if (!h52.d().w0() && z10 && h52.A().x() && h52.A().v().get(0) && AbstractC9199r50.a(this.f38797k.f39110a, h52) && AbstractC9199r50.a(this.f38797k.f39110a, h52, 0)) {
            a12.a(0, ((com.android.tools.r8.graph.proto.h) new com.android.tools.r8.graph.proto.h().a(h52.p())).a()).f37611d = true;
        }
        F8 j10 = h52.A().j();
        for (int i10 = 0; i10 < h52.C().size(); i10++) {
            int i11 = (!h52.d().w0() ? 1 : 0) + i10;
            if (intPredicate.test(i10)) {
                if (h52.A().x() && h52.A().v().get(i11) && AbstractC9199r50.a(this.f38797k.f39110a, h52) && AbstractC9199r50.a(this.f38797k.f39110a, h52, i11)) {
                    a12.a(i11, ((g.a) com.android.tools.r8.graph.proto.g.d().a(h52.b(i10))).a());
                } else {
                    F1 a13 = j10.a(i11);
                    if (a13.r() && a13.w().b(this.f38797k.f39110a, h52)) {
                        a12.a(i11, ((g.a) ((g.a) com.android.tools.r8.graph.proto.g.d().a(a13.w())).a(h52.b(i10))).a());
                    }
                }
            }
            com.android.tools.r8.graph.M2 m23 = (com.android.tools.r8.graph.M2) intFunction.apply(i10);
            if (m23 != null) {
                com.android.tools.r8.graph.M2 b10 = h52.b(i10);
                if (!f38786l && m23 == b10) {
                    throw new AssertionError();
                }
                k.a d11 = com.android.tools.r8.graph.proto.k.d();
                d11.f37630a = m23;
                a12.a(i11, d11.b(b10).a(m23).a());
            } else {
                continue;
            }
        }
        return com.android.tools.r8.graph.proto.j.a(list, a10, a12.a());
    }

    public final com.android.tools.r8.graph.proto.k a(com.android.tools.r8.graph.M2 m22, final com.android.tools.r8.graph.H5 h52) {
        if (m22 == null) {
            if (f38786l || !this.f38791e.f43368b.containsKey(new C7333fv(C7374g80.f48192a, h52))) {
                return null;
            }
            throw new AssertionError();
        }
        if (!f38786l && m22 == h52.E()) {
            throw new AssertionError();
        }
        k.a a10 = com.android.tools.r8.graph.proto.k.d().a(m22 == this.f38787a.f37905M1, new Consumer() {
            @Override
            public final void accept(Object obj) {
                B3.this.a(h52, (k.a) obj);
            }
        });
        a10.f37630a = m22;
        return a10.b(h52.E()).a(m22).a();
    }

    public final void a(com.android.tools.r8.graph.H5 h52, k.a aVar) {
        aVar.f37633d = c(h52);
    }
}
