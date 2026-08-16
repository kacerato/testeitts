package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.naming.AbstractC10937g;
import com.android.tools.r8.naming.AbstractC10992r0;
import com.android.tools.r8.naming.C10957k;
import com.android.tools.r8.naming.C10997s0;
import com.android.tools.r8.naming.MapVersion;
import com.android.tools.r8.naming.V;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.synthesis.S;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public final class VU {

    public static final boolean f45062f = true;

    public final com.android.tools.r8.graph.H2 f45063a;

    public final com.android.tools.r8.graph.M2 f45064b;

    public final String f45065c;

    public C10957k.a f45066d;

    public final XU f45067e;

    public VU(XU xu, com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.M2 m22, String str) {
        this.f45067e = xu;
        this.f45063a = h22;
        this.f45064b = m22;
        this.f45065c = str;
        if (m22.j0().equals(str)) {
            return;
        }
        b();
    }

    public static void a(Object obj) {
        throw new C5417Jv0();
    }

    public static void b(Object obj) {
        throw new C5417Jv0();
    }

    public static void c(Object obj) {
        throw new C5417Jv0();
    }

    public static void d(Object obj) {
        throw new C5417Jv0();
    }

    public static void e(Object obj) {
        throw new C5417Jv0();
    }

    public static void f(Object obj) {
        throw new C5417Jv0();
    }

    public static void g(Object obj) {
        throw new C5417Jv0();
    }

    public final VU a(K40 k40) {
        com.android.tools.r8.graph.L2 a10 = k40.a(this.f45063a);
        if (a10 != null) {
            b().a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    VU.e((com.android.tools.r8.naming.mappinginformation.e) obj);
                }
            }, new com.android.tools.r8.naming.mappinginformation.a(a10.j0()));
        }
        return this;
    }

    public final WU b(com.android.tools.r8.graph.A2 a22) {
        C4798y c4798y = this.f45067e.f45714b;
        AbstractC10992r0 s10 = c4798y.s();
        AbstractC5308Hz v10 = c4798y.v();
        v10.getClass();
        return new WU(s10.a(c4798y.b(), v10.d(AbstractC5308Hz.g(), a22)).v0());
    }

    public final VU a(com.android.tools.r8.synthesis.J j10) {
        com.android.tools.r8.graph.H2 h22 = this.f45063a;
        j10.getClass();
        if (j10.g(h22.f36245e)) {
            b().a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    VU.f((com.android.tools.r8.naming.mappinginformation.e) obj);
                }
            }, C5441Kf.f41729a);
        }
        return this;
    }

    public final AbstractC10937g b() {
        if (this.f45066d == null) {
            this.f45066d = this.f45067e.f45715c.a(this.f45065c, this.f45064b.j0(), Position.UNKNOWN);
        }
        return this.f45066d;
    }

    public final VU a() {
        final MapVersion mapVersion;
        if (this.f45067e.f45714b.E().f50599F1.f50875f1) {
            mapVersion = MapVersion.MAP_VERSION_EXPERIMENTAL;
        } else {
            mapVersion = MapVersion.STABLE;
        }
        com.android.tools.r8.graph.H2 h22 = this.f45063a;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                VU.this.a(mapVersion, (C4460g1) obj);
            }
        };
        h22.getClass();
        h22.c(consumer, EnumC6871d70.f47286b);
        return this;
    }

    public final void a(MapVersion mapVersion, C4460g1 c4460g1) {
        C4554l1 reference = c4460g1.getReference();
        AbstractC5308Hz v10 = this.f45067e.f45714b.v();
        v10.getClass();
        C4554l1 a10 = v10.a(AbstractC5308Hz.g(), reference);
        AbstractC10992r0 s10 = this.f45067e.f45714b.s();
        C4724u1 b10 = this.f45067e.f45714b.b();
        s10.getClass();
        C4554l1 a11 = b10.a(s10.a(b10, reference.f38297f), s10.a(b10, reference.f37449i), s10.a(reference));
        if (a11.f38298g == a10.f38298g && a11.getType() == a10.getType() && a10.f38297f == this.f45064b) {
            return;
        }
        V.a aVar = new V.a(a10.f38297f != this.f45064b ? a10.w0() : a10.f38298g.j0(), a10.f37449i.j0());
        V.a a12 = V.a.a(a11);
        com.android.tools.r8.naming.V v11 = new com.android.tools.r8.naming.V(aVar, a12, Position.UNKNOWN);
        if (AbstractC5384Jf0.a(mapVersion) && !aVar.f55772c.equals(a12.f55772c)) {
            C5268Hf0 c5268Hf0 = new C5268Hf0(a11.getType().V0());
            Consumer consumer = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    VU.a((com.android.tools.r8.naming.mappinginformation.e) obj);
                }
            };
            if (v11.f55770e == com.android.tools.r8.naming.V.f55766f) {
                v11.f55770e = new ArrayList();
            }
            com.android.tools.r8.naming.mappinginformation.e.a(v11.f55770e, c5268Hf0, consumer);
        }
        if (c4460g1.F0()) {
            C5441Kf c5441Kf = C5441Kf.f41729a;
            Consumer consumer2 = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    VU.b((com.android.tools.r8.naming.mappinginformation.e) obj);
                }
            };
            if (v11.f55770e == com.android.tools.r8.naming.V.f55766f) {
                v11.f55770e = new ArrayList();
            }
            com.android.tools.r8.naming.mappinginformation.e.a(v11.f55770e, c5441Kf, consumer2);
        }
        b().a(v11);
    }

    /* JADX WARN: Code restructure failed: missing block: B:141:0x024a, code lost:
    
        if (java.util.Arrays.equals(r5.f55775d, r11.f55775d) != false) goto L150;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(com.android.tools.r8.graph.H5 h52, List list, final D60 d60, final boolean z10) {
        com.android.tools.r8.graph.A2 reference;
        boolean z11;
        boolean z12;
        MapVersion mapVersion;
        ArrayList arrayList;
        boolean z13;
        List list2 = list;
        C4516j1 d10 = h52.d();
        com.android.tools.r8.graph.A2 a10 = this.f45067e.f45714b.s().a(this.f45067e.f45714b.b(), h52.getReference());
        final V.b a11 = V.b.a(a10);
        AbstractC4497i0 abstractC4497i0 = d10.f37317j;
        if (abstractC4497i0 != null && !abstractC4497i0.C0()) {
            boolean F02 = h52.d().F0();
            if (!f45062f) {
                com.android.tools.r8.graph.A2 reference2 = h52.getReference();
                boolean F03 = h52.d().F0();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    B60 b60 = ((UU) it.next()).f44762b;
                    while (b60.k()) {
                        boolean z14 = f45062f;
                        if (!z14 && b60.p()) {
                            throw new AssertionError();
                        }
                        if (!z14 && b60.f38811f) {
                            throw new AssertionError();
                        }
                        b60 = b60.f38809d;
                    }
                    com.android.tools.r8.graph.A2 a22 = b60.f38808c;
                    boolean z15 = f45062f;
                    if (!z15 && !reference2.a(a22)) {
                        throw new AssertionError();
                    }
                    if (!z15 && F03 != b60.f38811f) {
                        throw new AssertionError();
                    }
                }
            }
            if (h52.d().F0() && !list.isEmpty()) {
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    B60 b602 = ((UU) it2.next()).f44762b;
                    if (b602.k() && !b602.p() && !(b602 instanceof C10371y60)) {
                    }
                }
                z13 = true;
                reference = h52.getReference();
                z11 = F02;
                z12 = z13;
            }
            z13 = false;
            reference = h52.getReference();
            z11 = F02;
            z12 = z13;
        } else {
            if (!f45062f && !list.isEmpty()) {
                throw new AssertionError();
            }
            if (d10.c1()) {
                reference = d10.f37318k;
                z11 = false;
            } else {
                boolean F04 = h52.d().F0();
                reference = d10.getReference();
                z11 = F04;
            }
            z12 = false;
        }
        boolean z16 = f45062f;
        if (!z16) {
            a(reference, h52, z11);
        }
        ArrayList arrayList2 = new ArrayList();
        if (z11 && !z12) {
            arrayList2.add(C5441Kf.f41729a);
        }
        V.b a12 = V.b.a(reference, reference.f38297f != this.f45064b);
        if (this.f45067e.f45714b.E().f50599F1.f50875f1) {
            mapVersion = MapVersion.MAP_VERSION_EXPERIMENTAL;
        } else {
            mapVersion = MapVersion.STABLE;
        }
        com.android.tools.r8.graph.M2 m22 = this.f45064b;
        if (!AbstractC5384Jf0.a(mapVersion) ? !(list.isEmpty() && arrayList2.isEmpty() && a10.t0() == reference.f38298g && reference.f38297f == m22) : !(list.isEmpty() && arrayList2.isEmpty() && reference == a10)) {
            if (z16) {
                return;
            }
            C8570nJ.i iVar = this.f45067e.f45714b.E().f50611J1;
            iVar.getClass();
            if (iVar != C8570nJ.i.f50781b && M60.a(this.f45067e.f45714b.E(), d10)) {
                AbstractC4497i0 Q02 = d10.Q0();
                if (Q02.v0() && Q02.C().f36463j.length == 1) {
                    return;
                }
                AbstractC4497i0 Q03 = d10.Q0();
                if (Q03.v0()) {
                    for (AbstractC5635Np abstractC5635Np : Q03.C().f36463j) {
                        if (abstractC5635Np.l()) {
                            C4798y c4798y = this.f45067e.f45714b;
                            c4798y.getClass();
                            if (!c4798y.a(h52.d())) {
                                throw new AssertionError();
                            }
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (AbstractC5384Jf0.a(mapVersion)) {
            if (z12) {
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    B60 b603 = ((UU) it3.next()).f44762b;
                    while (b603.f38809d.k()) {
                        b603 = b603.f38809d;
                    }
                    V.b a13 = V.b.a(b603.f38808c);
                    if (a13.f55774c.equals(a11.f55774c) && Arrays.equals(a13.f55775d, a11.f55775d)) {
                    }
                    arrayList2.add(C5326If0.a(a10));
                }
            } else {
                if (a12.f55774c.equals(a11.f55774c)) {
                }
                arrayList2.add(C5326If0.a(a10));
                break;
            }
        }
        b().a(new com.android.tools.r8.naming.V(a12, a11, Position.UNKNOWN));
        com.android.tools.r8.graph.A2 a23 = null;
        if (list.isEmpty()) {
            final C10957k.b a14 = b().a(null, a12, null, a11.c());
            arrayList2.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10957k.b.this.a(new Consumer() {
                        @Override
                        public final void accept(Object obj2) {
                            VU.d((com.android.tools.r8.naming.mappinginformation.e) obj2);
                        }
                    }, (com.android.tools.r8.naming.mappinginformation.e) obj);
                }
            });
            arrayList2.clear();
            return;
        }
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        identityHashMap.put(reference, a12);
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                return VU.this.a(identityHashMap, (com.android.tools.r8.graph.A2) obj);
            }
        };
        Iterator it4 = list.iterator();
        while (true) {
            if (!it4.hasNext()) {
                break;
            }
            B60 h10 = ((UU) it4.next()).f44762b.h();
            if (h10.p()) {
                a23 = ((A60) h10).f38533h;
                break;
            }
        }
        if (a23 != null) {
            ((WU) this.f45067e.f45716d.computeIfAbsent(a23, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return VU.this.b((com.android.tools.r8.graph.A2) obj);
                }
            })).f45424b = list2;
            arrayList2.add(new O40());
        }
        list2.sort(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Integer.valueOf(((UU) obj).a());
            }
        }));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i10 = 0;
        while (i10 < list.size()) {
            UU uu = (UU) list2.get(i10);
            int i11 = i10 + 1;
            UU uu2 = uu;
            char c10 = 1;
            while (true) {
                if (i11 >= list.size()) {
                    arrayList = arrayList2;
                    break;
                }
                UU uu3 = (UU) list2.get(i11);
                int i12 = this.f45067e.f45720h;
                if (c10 == 4) {
                    arrayList = arrayList2;
                } else {
                    int f10 = uu3.f44762b.f();
                    int f11 = uu2.f44762b.f();
                    arrayList = arrayList2;
                    if (f11 == f10) {
                        boolean z17 = uu2.f44761a == uu3.f44761a;
                        if (c10 == 3) {
                            if (z17) {
                                c10 = 3;
                            }
                            c10 = 4;
                        } else {
                            c10 = (z17 && c10 == 1) ? (char) 1 : (char) 2;
                        }
                    } else {
                        if (c10 != 2) {
                            int i13 = uu3.f44761a - uu2.f44761a;
                            boolean z18 = i13 >= 0 && i13 <= i12;
                            boolean z19 = f10 - f11 == i13;
                            if (z18 && z19) {
                                c10 = 3;
                            }
                        }
                        c10 = 4;
                    }
                }
                B60 b604 = uu3.f44762b;
                B60 b605 = uu2.f44762b;
                if (c10 == 4 || b604.f38808c != b605.f38808c || !Objects.equals(b604.f38809d, b605.f38809d) || !Objects.equals(b604.i(), b605.i()) || !Objects.equals(b604.j(), b605.j())) {
                    break;
                }
                i11++;
                uu2 = uu3;
                arrayList2 = arrayList;
            }
            com.android.tools.r8.naming.M0 a15 = this.f45067e.f45719g.a(uu.f44761a, uu2.f44761a);
            B60 b606 = uu.f44762b;
            com.android.tools.r8.naming.M0 a16 = this.f45067e.f45719g.a(b606.f(), uu2.f44762b.f());
            boolean z20 = z11 && b606.k();
            if (!f45062f && z20 && !b606.h().f38811f) {
                throw new AssertionError();
            }
            int i14 = i11;
            ArrayList arrayList3 = arrayList;
            boolean z21 = z11;
            final C10957k.b a17 = a(function, b(), b606, a11, a15, a16, this.f45067e.f45718f, z12);
            if (b606 instanceof C10371y60) {
                linkedHashMap.putIfAbsent(b606.a(), a17);
            }
            arrayList3.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10957k.b.this.a(new Consumer() {
                        @Override
                        public final void accept(Object obj2) {
                            VU.c((com.android.tools.r8.naming.mappinginformation.e) obj2);
                        }
                    }, (com.android.tools.r8.naming.mappinginformation.e) obj);
                }
            });
            arrayList3.clear();
            arrayList2 = arrayList3;
            z11 = z21;
            i10 = i14;
            list2 = list;
        }
        IH ih2 = new IH(((UU) AT.b(list)).f44761a);
        for (Iterator it5 = linkedHashMap.entrySet().iterator(); it5.hasNext(); it5 = it5) {
            Map.Entry entry = (Map.Entry) it5.next();
            final ME me2 = new ME();
            final IH ih3 = ih2;
            final Function function2 = function;
            final boolean z22 = z12;
            ((C10371y60) entry.getKey()).f53940h.a(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    VU.this.a(z10, ih3, d60, me2, function2, a11, z22, (Integer) obj, (B60) obj2);
                }
            });
            ((WU) this.f45067e.f45716d.computeIfAbsent(((C10371y60) entry.getKey()).f53941i, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return VU.this.a((com.android.tools.r8.graph.A2) obj);
                }
            })).f45425c.add(C8699o50.a((C10957k.b) entry.getValue(), me2));
            ih2 = ih2;
            function = function;
        }
        if (!f45062f && list.size() > 1 && !b().a(a11)) {
            throw new AssertionError();
        }
    }

    public final V.b a(Map map, final com.android.tools.r8.graph.A2 a22) {
        return (V.b) map.computeIfAbsent(a22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return VU.this.a(a22, (com.android.tools.r8.graph.A2) obj);
            }
        });
    }

    public final V.b a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        com.android.tools.r8.graph.M2 m22 = a23.f38297f;
        return V.b.a(a22, (m22.a(this.f45063a.getType()) || m22.a(this.f45064b)) ? false : true);
    }

    public final void a(boolean z10, IH ih2, F60 f60, YE ye2, Function function, V.b bVar, boolean z11, Integer num, B60 b60) {
        int f10;
        if (z10) {
            f10 = num.intValue() + ih2.a() + 1;
        } else {
            f10 = ((B60) f60.a(b60).b()).f();
        }
        ye2.b(num.intValue(), f10);
        ih2.d(a(function, b(), b60, bVar, this.f45067e.f45719g.a(f10, f10), this.f45067e.f45719g.a(b60.f(), b60.f()), this.f45067e.f45718f, z11).f55969b.f55703b);
    }

    public final WU a(com.android.tools.r8.graph.A2 a22) {
        C4798y c4798y = this.f45067e.f45714b;
        AbstractC10992r0 s10 = c4798y.s();
        AbstractC5308Hz v10 = c4798y.v();
        v10.getClass();
        return new WU(s10.a(c4798y.b(), v10.d(AbstractC5308Hz.g(), a22)).v0());
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52, boolean z10) {
        com.android.tools.r8.graph.A2 a10 = this.f45067e.f45714b.v().a(h52.getReference());
        if (!f45062f && !z10 && !a22.a(a10) && !a22.s0().a(a10.s0()) && !this.f45067e.f45714b.f38408a.g().a(h52.p(), new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58171X;
                return bVar;
            }
        })) {
            throw new AssertionError();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00f7, code lost:
    
        if (com.android.tools.r8.internal.VU.f45062f != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00f9, code lost:
    
        if (r0 == null) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0101, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0102, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C10957k.b a(Function function, AbstractC10937g abstractC10937g, B60 b60, V.b bVar, com.android.tools.r8.naming.M0 m02, com.android.tools.r8.naming.M0 m03, C10997s0 c10997s0, boolean z10) {
        com.android.tools.r8.naming.M0 m04;
        C10957k.b bVar2 = null;
        int i10 = -1;
        while (true) {
            if (z10 && !b60.k()) {
                boolean z11 = f45062f;
                if (!z11 && !b60.f38811f) {
                    throw new AssertionError();
                }
                if (!z11 && bVar2 == null) {
                    throw new AssertionError();
                }
            } else {
                i10++;
                com.android.tools.r8.graph.M2 s02 = b60.f38808c.s0();
                String str = (String) this.f45067e.f45714b.f38398M.get(s02);
                if (str != null) {
                    boolean z12 = f45062f;
                    if (!z12 && this.f45067e.f45714b.f().c(s02) != null && this.f45067e.f45714b.f().c(s02).e0()) {
                        throw new AssertionError();
                    }
                    String str2 = (String) this.f45067e.f45717e.put(s02, str);
                    if (!z12 && str2 != null && !str2.equals(str)) {
                        throw new AssertionError();
                    }
                }
                V.b bVar3 = (V.b) function.apply(b60.f38808c);
                if (i10 == 0) {
                    m04 = m03;
                } else {
                    int max = Math.max(b60.f(), 0);
                    c10997s0.getClass();
                    if (max >= 0 && max < 256) {
                        m04 = c10997s0.f56085a[max];
                    } else {
                        m04 = new com.android.tools.r8.naming.M0(max, max, true);
                    }
                }
                bVar2 = abstractC10937g.a(m02, bVar3, m04, bVar.c());
                if (b60.f38810e) {
                    MapVersion mapVersion = C5163Fk0.f40298c;
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList.add(new C5105Ek0(Reference.classFromDescriptor(this.f45067e.f45714b.b().f38027d1.toString())));
                    arrayList2.add(new C5047Dk0(i10));
                    bVar2.a(new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            VU.g((com.android.tools.r8.naming.mappinginformation.e) obj);
                        }
                    }, new C5163Fk0(arrayList, arrayList2));
                }
                b60 = b60.f38809d;
                if (b60 == null) {
                    break;
                }
            }
        }
    }
}
