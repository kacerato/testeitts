package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.J0;
import com.android.tools.r8.graph.W0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiConsumer;

public final class C8157ks implements InterfaceC8811on0 {

    public static final boolean f49781m = true;

    public final com.android.tools.r8.graph.J0 f49782a;

    public final com.android.tools.r8.graph.H5 f49783b;

    public boolean f49790i;

    public final J8 f49792k;

    public final List f49793l;

    public final HashMap f49784c = new HashMap();

    public final C7322fr0 f49785d = new C7322fr0();

    public final M3 f49786e = new M3();

    public J0.a f49787f = null;

    public N8 f49788g = null;

    public AbstractC5635Np f49789h = null;

    public B60 f49791j = null;

    public C8157ks(com.android.tools.r8.graph.J0 j02, com.android.tools.r8.graph.H5 h52, B60 b60, C4724u1 c4724u1) {
        this.f49793l = null;
        this.f49782a = j02;
        this.f49783b = h52;
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        boolean F02 = h52.d().F0();
        W0.a a10 = com.android.tools.r8.graph.W0.a(j02, c4724u1);
        if (a10 != null) {
            com.android.tools.r8.graph.M0 m02 = new com.android.tools.r8.graph.M0(a10.f36924e, reference, F02);
            for (com.android.tools.r8.graph.O0 o02 : a10.f36926g) {
                o02.a(m02);
            }
            this.f49793l = m02.a();
        }
        List list = this.f49793l;
        this.f49792k = new J8(b60, list != null ? list.size() : 0, reference, F02, AbstractC9647to.a(reference, F02, a10).f52455a);
    }

    @Override
    public final C4515j0 a(int i10, int i11) {
        return null;
    }

    @Override
    public final boolean b(int i10) {
        return i10 < this.f49782a.f36458e;
    }

    @Override
    public final boolean c() {
        return true;
    }

    @Override
    public final void clear() {
        this.f49785d.f48128b.clear();
        this.f49786e.f42151b.clear();
    }

    @Override
    public final C4515j0 d(int i10) {
        return null;
    }

    @Override
    public final C4515j0 e(int i10) {
        return null;
    }

    @Override
    public final int f() {
        return this.f49782a.f36463j.length;
    }

    @Override
    public final B60 g() {
        return this.f49791j;
    }

    @Override
    public final void a(C6382aB c6382aB) {
    }

    @Override
    public final void b(C6382aB c6382aB) {
        if (!f49781m && this.f49790i) {
            throw new AssertionError();
        }
        this.f49790i = true;
        this.f49791j = this.f49792k.f41304c;
        com.android.tools.r8.graph.J0 j02 = this.f49782a;
        int i10 = j02.f36459f;
        if (i10 > 0) {
            c6382aB.a(j02.f36458e - i10, this.f49783b.d(), new Uh1());
        }
        this.f49790i = false;
    }

    @Override
    public final int c(int i10) {
        return ((Integer) this.f49784c.get(Integer.valueOf(i10))).intValue();
    }

    @Override
    public final void d() {
        int i10 = 0;
        while (true) {
            AbstractC5635Np[] abstractC5635NpArr = this.f49782a.f36463j;
            if (i10 >= abstractC5635NpArr.length) {
                return;
            }
            AbstractC5635Np abstractC5635Np = abstractC5635NpArr[i10];
            this.f49784c.put(Integer.valueOf(abstractC5635Np.u()), Integer.valueOf(i10));
            if (abstractC5635Np.L()) {
                if (abstractC5635Np.N()) {
                    this.f49785d.a((AbstractC5004Cs) abstractC5635Np);
                } else {
                    M3 m32 = this.f49786e;
                    C5460Ko c5460Ko = (C5460Ko) abstractC5635Np;
                    m32.getClass();
                    int u10 = c5460Ko.u();
                    L3 l32 = (L3) m32.f42151b.get(Integer.valueOf(u10));
                    if (l32 == null) {
                        m32.f42150a.put(Integer.valueOf(u10), c5460Ko);
                    } else {
                        l32.f41852a = c5460Ko.f41782g;
                        l32.f41853b = c5460Ko.f41783h;
                        l32.f41854c = c5460Ko.f41784i;
                    }
                }
            }
            i10++;
        }
    }

    @Override
    public final N8 e() {
        return this.f49788g;
    }

    @Override
    public final int f(int i10) {
        AbstractC5635Np abstractC5635Np = this.f49782a.f36463j[i10];
        if (abstractC5635Np instanceof C5348Iq) {
            return ((C5348Iq) abstractC5635Np).f44594f;
        }
        return -1;
    }

    @Override
    public final int g(int i10) {
        return this.f49782a.f36463j[i10].u();
    }

    @Override
    public final void a(C6382aB c6382aB, int i10, int i11, boolean z10) {
    }

    public static void a(Integer num, com.android.tools.r8.graph.M2 m22) {
    }

    @Override
    public final void a(C6382aB c6382aB, int i10, boolean z10) {
        com.android.tools.r8.graph.K0 k02;
        J0.a aVar;
        C4724u1 b10 = c6382aB.f46457p.b();
        int u10 = this.f49782a.f36463j[i10].u();
        J0.a[] aVarArr = this.f49782a.f36461h;
        int length = aVarArr.length;
        int i11 = 0;
        while (true) {
            k02 = null;
            if (i11 >= length) {
                aVar = null;
                break;
            }
            aVar = aVarArr[i11];
            int i12 = aVar.f36471c;
            if (i12 <= u10 && u10 < i12 + aVar.f36472d) {
                break;
            } else {
                i11++;
            }
        }
        if (aVar != this.f49787f) {
            this.f49787f = aVar;
            if (aVar == null) {
                this.f49788g = null;
            } else {
                this.f49788g = a(aVar, b10);
            }
        }
        List list = this.f49793l;
        if (list != null && !list.isEmpty()) {
            int u11 = this.f49782a.f36463j[i10].u();
            List<com.android.tools.r8.graph.K0> list2 = this.f49793l;
            if (list2 != null) {
                for (com.android.tools.r8.graph.K0 k03 : list2) {
                    if (k03.f36515b > u11) {
                        break;
                    } else {
                        k02 = k03;
                    }
                }
            }
            if (k02 == null) {
                this.f49791j = this.f49792k.f41304c;
            } else {
                B60 b11 = this.f49792k.b(k02.b());
                this.f49791j = b11;
                if (k02.f36514a && k02.f36515b == u11) {
                    c6382aB.a(b11);
                }
            }
        }
        AbstractC5635Np abstractC5635Np = this.f49782a.f36463j[i10];
        this.f49789h = abstractC5635Np;
        abstractC5635Np.a(c6382aB);
    }

    @Override
    public final boolean b() {
        return this.f49790i || this.f49789h.l();
    }

    public final ArrayList b(J0.a aVar, C4724u1 c4724u1) {
        final ArrayList arrayList = new ArrayList();
        a(aVar, c4724u1, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                List.this.add((Integer) obj2);
            }
        });
        return arrayList;
    }

    @Override
    public final B60 a(int i10) {
        List<com.android.tools.r8.graph.K0> list = this.f49793l;
        com.android.tools.r8.graph.K0 k02 = null;
        if (list != null) {
            for (com.android.tools.r8.graph.K0 k03 : list) {
                if (k03.f36515b > i10) {
                    break;
                }
                k02 = k03;
            }
        }
        if (k02 == null) {
            return this.f49792k.f41304c;
        }
        return this.f49792k.b(k02.b());
    }

    @Override
    public final void a(int i10, int i11, int i12, C6382aB c6382aB) {
        c6382aB.a(i10, this.f49785d.b(i12), i11, this.f49785d.a(i12));
    }

    @Override
    public final void a(int i10, int i11, C6382aB c6382aB) {
        int i12 = ((L3) this.f49786e.f42151b.get(Integer.valueOf(i11))).f41852a;
        long j10 = ((L3) this.f49786e.f42151b.get(Integer.valueOf(i11))).f41853b;
        short[] sArr = ((L3) this.f49786e.f42151b.get(Integer.valueOf(i11))).f41854c;
        c6382aB.getClass();
        c6382aB.a(c6382aB.f46462u.g(), new C9269rZ(c6382aB.b(i10, EnumC5592Mw0.f42461b), i12, j10, sArr));
    }

    @Override
    public final int a(int i10, C6382aB c6382aB) {
        J0.a aVar;
        AbstractC5635Np abstractC5635Np = this.f49782a.f36463j[i10];
        int u10 = abstractC5635Np.u();
        boolean z10 = f49781m;
        if (!z10 && abstractC5635Np.L()) {
            throw new AssertionError();
        }
        int[] A10 = abstractC5635Np.A();
        AbstractC5635Np[] abstractC5635NpArr = AbstractC5635Np.f42702c;
        int i11 = 0;
        if (A10 != null) {
            if (!z10 && abstractC5635Np.l()) {
                throw new AssertionError();
            }
            int length = A10.length;
            while (i11 < length) {
                c6382aB.a(u10, A10[i11] + u10, true);
                i11++;
            }
        } else if (abstractC5635Np.l()) {
            if (abstractC5635Np.B()) {
                M3 m32 = this.f49786e;
                C5402Jo c5402Jo = (C5402Jo) abstractC5635Np;
                m32.getClass();
                int u11 = c5402Jo.u() + c5402Jo.f49364g;
                if (!M3.f42149c && m32.f42151b.containsKey(Integer.valueOf(u11))) {
                    throw new AssertionError();
                }
                m32.f42151b.put(Integer.valueOf(u11), new L3());
                if (m32.f42150a.containsKey(Integer.valueOf(u11))) {
                    C5460Ko c5460Ko = (C5460Ko) m32.f42150a.remove(Integer.valueOf(u11));
                    int u12 = c5460Ko.u();
                    L3 l32 = (L3) m32.f42151b.get(Integer.valueOf(u12));
                    if (l32 == null) {
                        m32.f42150a.put(Integer.valueOf(u12), c5460Ko);
                    } else {
                        l32.f41852a = c5460Ko.f41782g;
                        l32.f41853b = c5460Ko.f41783h;
                        l32.f41854c = c5460Ko.f41784i;
                    }
                }
            }
            J0.a[] aVarArr = this.f49782a.f36461h;
            int length2 = aVarArr.length;
            int i12 = 0;
            while (true) {
                if (i12 < length2) {
                    aVar = aVarArr[i12];
                    int i13 = aVar.f36471c;
                    if (i13 <= u10 && u10 < i13 + aVar.f36472d) {
                        break;
                    }
                    i12++;
                } else {
                    aVar = null;
                    break;
                }
            }
            if (aVar != null) {
                int i14 = aVar.f36471c;
                AbstractC5635Np abstractC5635Np2 = this.f49782a.f36463j[((Integer) this.f49784c.get(Integer.valueOf(i14))).intValue()];
                if ((abstractC5635Np2 instanceof C5637Nq) || (abstractC5635Np2 instanceof C5695Oq) || (abstractC5635Np2 instanceof C5753Pq)) {
                    i14++;
                }
                c6382aB.f(i14);
                Iterator it = new HashSet(b(aVar, c6382aB.f46457p.b())).iterator();
                while (it.hasNext()) {
                    c6382aB.a(u10, ((Integer) it.next()).intValue(), false);
                }
                int i15 = i10 + 1;
                AbstractC5635Np[] abstractC5635NpArr2 = this.f49782a.f36463j;
                if (i15 < abstractC5635NpArr2.length) {
                    AbstractC5635Np abstractC5635Np3 = abstractC5635NpArr2[i15];
                    if ((abstractC5635Np3 instanceof C5637Nq) || (abstractC5635Np3 instanceof C5695Oq) || (abstractC5635Np3 instanceof C5753Pq)) {
                        if (!f49781m && !(abstractC5635Np instanceof C6155Wp) && !(abstractC5635Np instanceof C6212Xp) && !(abstractC5635Np instanceof C6269Yp) && !(abstractC5635Np instanceof C6326Zp) && !(abstractC5635Np instanceof C8318lq) && !(abstractC5635Np instanceof C8485mq) && !(abstractC5635Np instanceof C6485aq) && !(abstractC5635Np instanceof C6652bq) && !(abstractC5635Np instanceof C7652hq) && !(abstractC5635Np instanceof C7818iq) && !(abstractC5635Np instanceof C7984jq) && !(abstractC5635Np instanceof C8151kq) && !(abstractC5635Np instanceof C7318fq) && !(abstractC5635Np instanceof C7485gq) && !(abstractC5635Np instanceof C5518Lo) && !(abstractC5635Np instanceof C5575Mo)) {
                            throw new AssertionError();
                        }
                        i10 = i15;
                        abstractC5635Np = abstractC5635Np3;
                    }
                }
                if (!(abstractC5635Np instanceof C5062Ds)) {
                    c6382aB.a(u10, abstractC5635Np.y() + abstractC5635Np.u(), true);
                }
                return i10;
            }
            if (!(abstractC5635Np instanceof C5062Ds)) {
                return -1;
            }
        } else {
            if (!abstractC5635Np.J()) {
                return -1;
            }
            this.f49785d.a(abstractC5635Np);
            C7322fr0 c7322fr0 = this.f49785d;
            c7322fr0.getClass();
            if (!C7322fr0.f48126c && !abstractC5635Np.J()) {
                throw new AssertionError();
            }
            int[] a10 = c7322fr0.a(abstractC5635Np.w() + abstractC5635Np.u());
            int length3 = a10.length;
            while (i11 < length3) {
                c6382aB.a(u10, a10[i11], true);
                i11++;
            }
            c6382aB.a(u10, abstractC5635Np.y() + u10, true);
            return i10;
        }
        return i10;
    }

    public final N8 a(J0.a aVar, C4724u1 c4724u1) {
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        a(aVar, c4724u1, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8157ks.a(List.this, arrayList2, (com.android.tools.r8.graph.M2) obj, (Integer) obj2);
            }
        });
        return new N8(arrayList, arrayList2);
    }

    public static void a(List list, List list2, com.android.tools.r8.graph.M2 m22, Integer num) {
        list.add(m22);
        list2.add(num);
    }

    public final void a(J0.a aVar, C4724u1 c4724u1, BiConsumer biConsumer) {
        J0.b bVar = this.f49782a.f36462i[aVar.f36473e];
        for (J0.b.a aVar2 : bVar.f36476b) {
            biConsumer.accept(aVar2.getType(), Integer.valueOf(aVar2.f36480c));
            if (aVar2.getType() == c4724u1.f38173v3) {
                return;
            }
        }
        int i10 = bVar.f36477c;
        if (i10 != -1) {
            biConsumer.accept(c4724u1.f38173v3, Integer.valueOf(i10));
        }
    }
}
