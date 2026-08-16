package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.C4804y5;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.EW;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;

public final class GS extends AbstractC7757iT {

    public static final boolean f40485s = true;

    public final C4798y f40486c;

    public final WS f40487d;

    public final com.android.tools.r8.graph.A2 f40488e;

    public final AbstractC6423aT f40489f;

    public final C10523z10 f40490g;

    public final com.android.tools.r8.graph.proto.j f40491h;

    public final C6899dH f40492i;

    public final C8382mB f40493j;

    public W5 f40494k;

    public int f40495l;

    public final B60 f40496m;

    public B60 f40497n;

    public SS f40498o;

    public int f40499p;

    public final SS[] f40500q;

    public final boolean f40501r;

    public GS(WS ws, com.android.tools.r8.graph.A2 a22, boolean z10, C4798y c4798y, AbstractC6423aT abstractC6423aT, B60 b60, com.android.tools.r8.graph.proto.j jVar) {
        super(ws);
        B60 a10;
        this.f40490g = new C10523z10();
        this.f40492i = new C6899dH(16);
        this.f40493j = new C8382mB();
        this.f40494k = null;
        this.f40495l = 0;
        this.f40498o = null;
        this.f40499p = 0;
        this.f40486c = c4798y;
        this.f40487d = ws;
        this.f40488e = a22;
        this.f40489f = abstractC6423aT;
        this.f40491h = jVar;
        if (!f40485s && jVar == null) {
            throw new AssertionError();
        }
        if (b60 == null) {
            this.f40501r = false;
            SS[] ssArr = ws.f45406h;
            this.f40500q = ssArr;
            if (ssArr.length > 0) {
                SS ss = ssArr[0];
                if (ss.f44210b == 0) {
                    a10 = ss.a(a22, z10);
                    this.f40497n = a10;
                }
            }
            B60.c.a a11 = B60.c.t().a(0).a(a22);
            a11.f38816e = z10;
            a10 = ((B60.c.a) a11.c()).a();
            this.f40497n = a10;
        } else {
            this.f40501r = true;
            this.f40500q = ws.a(b60, a22, z10, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    GS.this.a((B60) obj);
                }
            });
        }
        this.f40496m = this.f40497n;
    }

    @Override
    public final void a(YV yv, Object obj, Object obj2) {
        AbstractC8999pu0 b10;
        if (yv == YV.f45995b) {
            b10 = AbstractC8999pu0.f();
        } else {
            b10 = EnumC5477Kw0.a(yv).a(this.f40486c.b()).b(this.f40486c);
        }
        a((AbstractC10561zE) new N3(yv, a(b10), h(obj), h(obj2)));
    }

    public final ArrayList b(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            arrayList2.add(h(arrayList.get(i10)));
        }
        return arrayList2;
    }

    @Override
    public final void c(T10 t10, Object obj, Object obj2) {
        a((AbstractC10561zE) new C6161Ws(t10, a((AbstractC8999pu0) D70.a(t10)), h(obj), h(obj2)));
    }

    public final void d(com.android.tools.r8.graph.M2 m22) {
        C8854p10 h10 = this.f40501r ? C8854p10.h() : C8854p10.b();
        C4798y c4798y = this.f40486c;
        m22.getClass();
        AbstractC8999pu0 a10 = AbstractC8999pu0.a(m22, h10, (C4798y<?>) c4798y);
        AbstractC6423aT abstractC6423aT = this.f40489f;
        WS ws = this.f40487d;
        Objects.requireNonNull(ws);
        C10340xw0 d10 = a(false, abstractC6423aT.a(0, a10, new DF0(ws))).d();
        boolean z10 = C10340xw0.f53884o;
        if (!z10 && !d10.H()) {
            throw new AssertionError();
        }
        if (!z10 && d10.f53893j) {
            throw new AssertionError();
        }
        d10.f53893j = true;
    }

    public final W5 e(int i10) {
        return (W5) this.f40492i.computeIfAbsent(Integer.valueOf(i10), new Function() {
            @Override
            public final Object apply(Object obj) {
                return GS.this.a((Integer) obj);
            }
        });
    }

    @Override
    public final void f() {
        d(this.f40495l + 1);
    }

    @Override
    public final void g() {
        throw new C6501av0("Missing IR conversion");
    }

    public final C10340xw0 h(Object obj) {
        return this.f40489f.a(obj, this.f40487d.f45403e);
    }

    public final void i() {
        if (this.f40494k == null) {
            this.f40494k = e(this.f40495l);
            VS vs = this.f40487d.f45410l;
            if (vs != null) {
                N8 n82 = (N8) vs.f45060b.get(this.f40495l);
                if (n82 != null) {
                    List<W5> a10 = AT.a((Collection) n82.f42511c, new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            return GS.this.e(((Integer) obj).intValue());
                        }
                    });
                    W5 w52 = this.f40494k;
                    Objects.requireNonNull(w52);
                    a10.forEach(new KF0(w52));
                    W5 w53 = this.f40494k;
                    AbstractC7552hC abstractC7552hC = n82.f42510b;
                    w53.getClass();
                    ArrayList arrayList = new ArrayList(a10.size());
                    for (W5 w54 : a10) {
                        int indexOf = w53.f45289b.indexOf(w54);
                        if (indexOf < 0) {
                            indexOf = w53.f45289b.size();
                            w53.g(w54);
                        }
                        arrayList.add(Integer.valueOf(indexOf));
                    }
                    w53.f45292e = new N8(abstractC7552hC, arrayList);
                    return;
                }
                return;
            }
            return;
        }
        if (!f40485s && this.f40492i.a(this.f40495l)) {
            throw new AssertionError();
        }
    }

    public final void j() {
        QS qs = this.f40487d.f45411m;
        if (qs == null) {
            return;
        }
        qs.a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                GS.this.a(obj, (C4515j0) obj2);
            }
        });
    }

    @Override
    public final void k(T10 t10, Object obj, Object obj2) {
        a((AbstractC10561zE) new C7343fy0(t10, a((AbstractC8999pu0) D70.a(t10)), h(obj), h(obj2)));
    }

    @Override
    public final void g(T10 t10, Object obj, Object obj2) {
        a((AbstractC10561zE) new C5686Ol0(t10, a((AbstractC8999pu0) D70.a(t10)), h(obj), h(obj2)));
    }

    @Override
    public final void f(T10 t10, Object obj, Object obj2) {
        a((AbstractC10561zE) new C7786if0(t10, a((AbstractC8999pu0) D70.a(t10)), h(obj), h(obj2)));
    }

    public final void b(int i10, com.android.tools.r8.graph.M2 m22) {
        AbstractC8999pu0 b10 = m22.b(this.f40486c);
        AbstractC6423aT abstractC6423aT = this.f40489f;
        WS ws = this.f40487d;
        Objects.requireNonNull(ws);
        a(m22.F0(), abstractC6423aT.a(i10, b10, new DF0(ws)));
    }

    @Override
    public final void c(int i10) {
        a((AbstractC10561zE) new C5731Pf0(a((AbstractC8999pu0) AbstractC8999pu0.k()), i10));
    }

    @Override
    public final void e(T10 t10, Object obj, Object obj2) {
        a((AbstractC10561zE) new A40(t10, a((AbstractC8999pu0) D70.a(t10)), h(obj), h(obj2)));
    }

    @Override
    public final void h(T10 t10, Object obj, Object obj2) {
        a((AbstractC10561zE) new C5918Sl0(t10, a((AbstractC8999pu0) D70.a(t10)), h(obj), h(obj2)));
    }

    @Override
    public final void g(Object obj) {
        a((AbstractC10561zE) new C5698Or0(h(obj)));
        this.f40494k = null;
    }

    @Override
    public final void j(T10 t10, Object obj, Object obj2) {
        a((AbstractC10561zE) new C8504mw0(t10, a((AbstractC8999pu0) D70.a(t10)), h(obj), h(obj2)));
    }

    @Override
    public final void c(com.android.tools.r8.graph.A2 a22, ArrayList arrayList, boolean z10) {
        a((AbstractC10561zE) new C7572hK(a22, b(a22.y0()), b(arrayList), z10));
    }

    @Override
    public final void f(Object obj) {
        a((AbstractC10561zE) new C5924So0(h(obj)));
    }

    @Override
    public final void h() {
        a((AbstractC10561zE) new C10471yk0());
        this.f40494k = null;
    }

    public final void a(B60 b60) {
        this.f40497n = b60;
    }

    @Override
    public final int a() {
        return this.f40495l + this.f40487d.f45407i;
    }

    @Override
    public final void b() {
        a((AbstractC10561zE) new C9126qh(a((AbstractC8999pu0) AbstractC8999pu0.m()), 0L));
    }

    @Override
    public final void e(Object obj) {
        com.android.tools.r8.graph.proto.k kVar = this.f40491h.f37624c;
        if (kVar != null && kVar.f37628d.S0()) {
            h();
        } else {
            a((AbstractC10561zE) new C10471yk0(h(obj)));
            this.f40494k = null;
        }
    }

    @Override
    public final void c(com.android.tools.r8.graph.A2 a22, ArrayList arrayList) {
        a((AbstractC10561zE) new C8405mK(a22, b(a22.y0()), b(arrayList)));
    }

    public final void a(Object obj, C4515j0 c4515j0) {
        C10340xw0 h10 = h(obj);
        if (!h10.z()) {
            h10.a(c4515j0);
        }
        if (!f40485s && h10.s() != c4515j0) {
            throw new AssertionError();
        }
    }

    @Override
    public final void b(int i10) {
        a((AbstractC10561zE) new C9126qh(a((AbstractC8999pu0) AbstractC8999pu0.k()), i10));
    }

    @Override
    public final void b(long j10) {
        a((AbstractC10561zE) new C9126qh(a((AbstractC8999pu0) AbstractC8999pu0.l()), j10));
    }

    @Override
    public final void c(com.android.tools.r8.graph.M2 m22) {
        a((AbstractC10561zE) new C9603tZ(m22, a(AbstractC8999pu0.a(m22, C8854p10.b(), (C4798y<?>) this.f40486c))));
    }

    public final C7215fB a(com.android.tools.r8.graph.H5 h52, EW.a aVar) {
        LinkedList linkedList = new LinkedList();
        YG yg2 = (YG) this.f40492i.o();
        CH ch2 = new CH(yg2.f45960b.f47346h);
        ch2.f39177c = SH.a(new XG(yg2.f45960b), ch2.f39176b);
        ch2.sort(new GF0());
        for (int i10 = 0; i10 < ch2.f39177c; i10++) {
            W5 w52 = (W5) this.f40492i.get(ch2.c(i10));
            w52.f45296i = true;
            linkedList.add(w52);
            Y5 it = w52.l().iterator();
            while (it.hasNext()) {
                AbstractC10561zE next = it.next();
                if (next.e1() && next.N1() && !next.f1()) {
                    next.d((C10340xw0) null);
                }
            }
        }
        return new C7215fB(this.f40486c.E(), h52, this.f40496m, linkedList, this.f40489f.f46543b, this.f40490g, this.f40493j, aVar);
    }

    @Override
    public final void b(T10 t10, Object obj, Object obj2) {
        a((AbstractC10561zE) new C9523t2(t10, a((AbstractC8999pu0) D70.a(t10)), h(obj), h(obj2)));
    }

    @Override
    public final void d(T10 t10, Object obj, Object obj2) {
        a((AbstractC10561zE) new C7433gY(t10, a((AbstractC8999pu0) D70.a(t10)), h(obj), h(obj2)));
    }

    @Override
    public final void e() {
        a((AbstractC10561zE) new C7631hj());
    }

    @Override
    public final void c(com.android.tools.r8.graph.M2 m22, Object obj) {
        C4798y c4798y = this.f40486c;
        C8854p10 a10 = C8854p10.a();
        m22.getClass();
        a((AbstractC10561zE) new C5800Qk0(a(AbstractC8999pu0.a(m22, a10, (C4798y<?>) c4798y)), h(obj), m22));
    }

    @Override
    public final void b(T10 t10, Object obj) {
        a((AbstractC10561zE) new C7019e10(t10, a((AbstractC8999pu0) D70.a(t10)), h(obj)));
    }

    @Override
    public final void d(int i10) {
        W5 e10 = e(i10);
        a((AbstractC10561zE) new C4960Bz());
        this.f40494k.g(e10);
        this.f40494k = null;
    }

    @Override
    public final void c(Object obj) {
        a((AbstractC10561zE) new WX(XX.f45732b, h(obj)));
    }

    @Override
    public final void i(T10 t10, Object obj, Object obj2) {
        a((AbstractC10561zE) new C5812Qq0(t10, a((AbstractC8999pu0) D70.a(t10)), h(obj), h(obj2)));
    }

    @Override
    public final void b(com.android.tools.r8.graph.A2 a22, ArrayList arrayList, boolean z10) {
        a((AbstractC10561zE) new C7405gK(a22, b(a22.y0()), b(arrayList), z10));
    }

    @Override
    public final void d() {
        a((AbstractC10561zE) new C6797cj());
    }

    @Override
    public final void d(Object obj) {
        a((AbstractC10561zE) new WX(XX.f45733c, h(obj)));
    }

    public final C10340xw0 b(com.android.tools.r8.graph.I2 i22) {
        com.android.tools.r8.graph.M2 o02 = i22.o0();
        if (o02.S0()) {
            return null;
        }
        return a(o02.b(this.f40486c));
    }

    @Override
    public final void b(C4554l1 c4554l1, Object obj) {
        a((AbstractC10561zE) new C5634No0(c4554l1, h(obj)));
    }

    @Override
    public final void b(com.android.tools.r8.graph.M2 m22, Object obj) {
        C4798y c4798y = this.f40486c;
        C8854p10 b10 = C8854p10.b();
        m22.getClass();
        a((AbstractC10561zE) new C8769oZ(a(AbstractC8999pu0.a(m22, b10, (C4798y<?>) c4798y)), h(obj), m22));
    }

    @Override
    public final void b(com.android.tools.r8.graph.M2 m22) {
        C4798y c4798y = this.f40486c;
        C8854p10 b10 = C8854p10.b();
        m22.getClass();
        a((AbstractC10561zE) new C6600bY(a(AbstractC8999pu0.a(m22, b10, (C4798y<?>) c4798y)), m22, this.f40486c.E()));
    }

    public final W5 a(Integer num) {
        W5 w52 = new W5(this.f40493j);
        w52.d(this.f40490g.a());
        return w52;
    }

    public final void a(AbstractC10561zE abstractC10561zE) {
        C6899dH c6899dH;
        SS ss;
        int i10 = this.f40495l + this.f40487d.f45407i;
        i();
        SS ss2 = this.f40498o;
        int[] iArr = null;
        if (ss2 != null && ss2.f44210b <= this.f40495l) {
            this.f40497n = ss2.a(this.f40488e, this.f40496m.h().f38811f);
            int i11 = this.f40499p;
            SS[] ssArr = this.f40500q;
            if (i11 < ssArr.length) {
                this.f40499p = i11 + 1;
                ss = ssArr[i11];
            } else {
                ss = null;
            }
            this.f40498o = ss;
        }
        this.f40495l++;
        abstractC10561zE.b(this.f40497n);
        this.f40494k.l().a(abstractC10561zE, null);
        QS qs = this.f40487d.f45411m;
        if (qs != null && (c6899dH = qs.f43585c) != null) {
            iArr = (int[]) c6899dH.get(i10);
        }
        if (iArr != null) {
            for (int i12 : iArr) {
                h(this.f40487d.f45403e.a().a(i12, i10)).a(abstractC10561zE);
            }
        }
    }

    @Override
    public final void b(Object obj) {
        a((AbstractC10561zE) new C7130ej(a((AbstractC8999pu0) AbstractC8999pu0.f()), h(obj)));
    }

    @Override
    public final void b(com.android.tools.r8.graph.M2 m22, ArrayList arrayList) {
        C4798y c4798y = this.f40486c;
        C8854p10 b10 = C8854p10.b();
        m22.getClass();
        a((AbstractC10561zE) new C9103qZ(m22, a(AbstractC8999pu0.a(m22, b10, (C4798y<?>) c4798y)), b(arrayList)));
    }

    public final C10340xw0 a(AbstractC8999pu0 abstractC8999pu0) {
        int i10 = this.f40495l;
        WS ws = this.f40487d;
        return this.f40489f.a(i10 + ws.f45407i, abstractC8999pu0, new DF0(ws));
    }

    public final C7201f60 a(C10540z7 c10540z7) {
        SS ss;
        final int i10 = this.f40495l;
        int i11 = i10 + this.f40487d.f45407i;
        AbstractC6423aT abstractC6423aT = this.f40489f;
        IntFunction intFunction = new IntFunction() {
            @Override
            public final Object apply(int i12) {
                return GS.this.a(i10, i12);
            }
        };
        WS ws = this.f40487d;
        Objects.requireNonNull(ws);
        C7201f60 a10 = abstractC6423aT.a(i11, intFunction, c10540z7, new DF0(ws), this.f40487d.f45403e);
        SS ss2 = this.f40498o;
        if (ss2 != null && ss2.f44210b <= this.f40495l) {
            this.f40497n = ss2.a(this.f40488e, this.f40496m.h().f38811f);
            int i12 = this.f40499p;
            SS[] ssArr = this.f40500q;
            if (i12 < ssArr.length) {
                this.f40499p = i12 + 1;
                ss = ssArr[i12];
            } else {
                ss = null;
            }
            this.f40498o = ss;
        }
        this.f40495l++;
        return a10;
    }

    public final W5 a(int i10, int i11) {
        if (i11 >= i10) {
            i();
            return this.f40494k;
        }
        if (f40485s || this.f40492i.a(i11)) {
            return e(i11);
        }
        throw new AssertionError();
    }

    public final C8024k3 a(boolean z10, C10340xw0 c10340xw0) {
        if (!f40485s && this.f40494k == null) {
            throw new AssertionError();
        }
        C8024k3 c8024k3 = new C8024k3(c10340xw0, this.f40494k.f45293f.size(), z10);
        c8024k3.b(this.f40497n);
        this.f40494k.l().a(c8024k3, null);
        return c8024k3;
    }

    @Override
    public final void a(int i10) {
        a((AbstractC10561zE) new C9126qh(a((AbstractC8999pu0) AbstractC8999pu0.j()), i10));
    }

    @Override
    public final void a(long j10) {
        a((AbstractC10561zE) new C9126qh(a((AbstractC8999pu0) AbstractC8999pu0.i()), j10));
    }

    @Override
    public final void a(T10 t10, Object obj, Object obj2) {
        a((AbstractC10561zE) new C6855d2(t10, a((AbstractC8999pu0) D70.a(t10)), h(obj), h(obj2)));
    }

    @Override
    public final void a(T10 t10, Object obj) {
        a((AbstractC10561zE) new C7268fZ(t10, a((AbstractC8999pu0) D70.a(t10)), h(obj)));
    }

    @Override
    public final void a(com.android.tools.r8.graph.L2 l22) {
        a((AbstractC10561zE) new C9960vh(a((AbstractC8999pu0) AbstractC8999pu0.a((C4798y<?>) this.f40486c, C8854p10.b())), l22));
    }

    @Override
    public final void a(com.android.tools.r8.graph.J2 j22, ZY zy) {
        a((AbstractC10561zE) new C9820uq(a((AbstractC8999pu0) AbstractC8999pu0.a((C4798y<?>) this.f40486c, C8854p10.b())), j22, zy));
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, boolean z10) {
        C4798y c4798y = this.f40486c;
        C8854p10 b10 = C8854p10.b();
        boolean z11 = AbstractC8999pu0.f51660a;
        a((AbstractC10561zE) new C7957jh(a((AbstractC8999pu0) AbstractC8999pu0.a(c4798y.b().f38180w2, b10, (C4798y<?>) c4798y).b()), m22, z10));
    }

    @Override
    public final void a(com.android.tools.r8.graph.C2 c22) {
        a((AbstractC10561zE) new C8458mh(a(AbstractC8999pu0.a(this.f40486c.b().f37920O2, C8854p10.b(), (C4798y<?>) this.f40486c)), c22));
    }

    @Override
    public final void a(com.android.tools.r8.graph.I2 i22) {
        a((AbstractC10561zE) new C8625nh(a(AbstractC8999pu0.a(this.f40486c.b().f37941R2, C8854p10.b(), (C4798y<?>) this.f40486c)), i22));
    }

    @Override
    public final void a(T10 t10, T10 t102, Object obj) {
        a((AbstractC10561zE) new C10022w10(t10, t102, a(t102.a(this.f40486c.b()).b(this.f40486c)), h(obj)));
    }

    @Override
    public final void a(NB nb2, int i10, Object obj) {
        W5 e10 = e(i10);
        a((AbstractC10561zE) new EB(nb2, h(obj)));
        this.f40494k.g(e10);
        this.f40494k.g(e(this.f40495l));
        this.f40494k = null;
    }

    @Override
    public final void a(NB nb2, int i10, Object obj, Object obj2) {
        W5 e10 = e(i10);
        a((AbstractC10561zE) new EB(nb2, AbstractC7552hC.a(h(obj), h(obj2))));
        this.f40494k.g(e10);
        this.f40494k.g(e(this.f40495l));
        this.f40494k = null;
    }

    @Override
    public final void a(final Object obj, LS ls) {
        final int[] iArr = ls.f41957b;
        a(ls.f41958c, new BiFunction() {
            @Override
            public final Object apply(Object obj2, Object obj3) {
                return GS.this.a(obj, iArr, (int[]) obj2, (Integer) obj3);
            }
        });
    }

    public final AbstractC10561zE a(Object obj, int[] iArr, int[] iArr2, Integer num) {
        return new C9569tI(h(obj), iArr, iArr2, num.intValue());
    }

    @Override
    public final void a(final Object obj, OS os) {
        int length = os.f42884b.length;
        final com.android.tools.r8.graph.L2[] l2Arr = new com.android.tools.r8.graph.L2[length];
        for (int i10 = 0; i10 < length; i10++) {
            WS ws = this.f40487d;
            l2Arr[i10] = (com.android.tools.r8.graph.L2) ws.f45405g[os.f42884b[i10]];
        }
        a(os.f42885c, new BiFunction() {
            @Override
            public final Object apply(Object obj2, Object obj3) {
                return GS.this.a(obj, l2Arr, (int[]) obj2, (Integer) obj3);
            }
        });
    }

    public final AbstractC10561zE a(Object obj, com.android.tools.r8.graph.L2[] l2Arr, int[] iArr, Integer num) {
        return new C8319lq0(h(obj), l2Arr, iArr, num.intValue());
    }

    public final void a(int[] iArr, BiFunction biFunction) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        ArrayList arrayList = new ArrayList(length);
        C7561hF c7561hF = new C7561hF(length);
        for (int i10 = 0; i10 < iArr.length; i10++) {
            int i11 = iArr[i10];
            if (c7561hF.a(i11)) {
                iArr2[i10] = c7561hF.get(i11);
            } else {
                int size = arrayList.size();
                iArr2[i10] = size;
                c7561hF.b(i11, size);
                arrayList.add(e(i11));
            }
        }
        a((AbstractC10561zE) biFunction.apply(iArr2, Integer.valueOf(arrayList.size())));
        if (!f40485s && !this.f40494k.v().isEmpty()) {
            throw new AssertionError();
        }
        W5 w52 = this.f40494k;
        Objects.requireNonNull(w52);
        arrayList.forEach(new KF0(w52));
        this.f40494k.g(e(this.f40495l));
        this.f40494k = null;
    }

    @Override
    public final void a(com.android.tools.r8.graph.D0 d02, ArrayList arrayList) {
        a((AbstractC10561zE) new OJ(d02, a((AbstractC8999pu0) AbstractC8999pu0.f()), b(arrayList)));
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.I2 i22, ArrayList arrayList) {
        a((AbstractC10561zE) new YJ(a22, i22, b(i22), b(arrayList)));
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22, ArrayList arrayList, boolean z10) {
        a((AbstractC10561zE) new QJ(a22, b(a22.y0()), b(arrayList), z10));
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22, ArrayList arrayList) {
        a((AbstractC10561zE) new TJ(a22, b(a22.y0()), b(arrayList)));
    }

    @Override
    public final void a(C4554l1 c4554l1) {
        a((AbstractC10561zE) new C5576Mo0(c4554l1, a(AbstractC8999pu0.a(c4554l1.getType(), C8854p10.h(), (C4798y<?>) this.f40486c))));
    }

    @Override
    public final void a(C4554l1 c4554l1, Object obj) {
        a((AbstractC10561zE) new C6558bE(a(AbstractC8999pu0.a(c4554l1.getType(), C8854p10.h(), (C4798y<?>) this.f40486c)), h(obj), c4554l1));
    }

    @Override
    public final void a(C4554l1 c4554l1, Object obj, Object obj2) {
        a((AbstractC10561zE) new C9225rE(c4554l1, h(obj), h(obj2), true));
    }

    @Override
    public final void a(Object obj) {
        a((AbstractC10561zE) new P3(a((AbstractC8999pu0) AbstractC8999pu0.k()), h(obj)));
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, Object obj, boolean z10) {
        C4798y c4798y = this.f40486c;
        C8854p10 a10 = C8854p10.a();
        m22.getClass();
        a((AbstractC10561zE) new C7942jc(a(AbstractC8999pu0.a(m22, a10, (C4798y<?>) c4798y)), h(obj), m22, z10));
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, Object obj) {
        a((AbstractC10561zE) new C8391mE(a((AbstractC8999pu0) AbstractC8999pu0.k()), h(obj), m22));
    }

    @Override
    public final void a(ArrayList arrayList) {
        C7201f60 a10 = a(AbstractC8999pu0.f());
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            arrayList2.add(h(arrayList.get(i10)));
        }
        a10.a((List) arrayList2, false);
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, ArrayList arrayList) {
        C4798y c4798y = this.f40486c;
        C8854p10 b10 = C8854p10.b();
        m22.getClass();
        a((AbstractC10561zE) new XJ(m22, a(AbstractC8999pu0.a(m22, b10, (C4798y<?>) c4798y)), b(arrayList)));
    }

    @Override
    public final void a(int i10, long j10, short[] sArr, Object obj) {
        a((AbstractC10561zE) new C9269rZ(h(obj), i10, j10, sArr));
    }

    @Override
    public final void a(int i10, Object obj, Object obj2) {
        T10 t10;
        EnumC9283re enumC9283re;
        switch (i10) {
            case 148:
                t10 = T10.f44370f;
                enumC9283re = EnumC9283re.f52079b;
                break;
            case 149:
                t10 = T10.f44371g;
                enumC9283re = EnumC9283re.f52081d;
                break;
            case 150:
                t10 = T10.f44371g;
                enumC9283re = EnumC9283re.f52080c;
                break;
            case 151:
                t10 = T10.f44372h;
                enumC9283re = EnumC9283re.f52081d;
                break;
            case 152:
                t10 = T10.f44372h;
                enumC9283re = EnumC9283re.f52080c;
                break;
            default:
                throw new C5417Jv0("Unexpected cmp opcode: " + i10);
        }
        a((AbstractC10561zE) new C9450se(t10, enumC9283re, a((AbstractC8999pu0) AbstractC8999pu0.k()), h(obj), h(obj2)));
    }

    @Override
    public final void a(YV yv, Object obj, Object obj2, Object obj3) {
        a((AbstractC10561zE) new T3(yv, h(obj), h(obj2), h(obj3)));
    }

    @Override
    public final void a(int i10, com.android.tools.r8.graph.M2 m22) {
        a((AbstractC10561zE) new C9937vZ(m22, i10, a(AbstractC8999pu0.a(m22, C8854p10.b(), (C4798y<?>) this.f40486c))));
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22) {
        a((AbstractC10561zE) new C9389sD(m22, a((AbstractC8999pu0) AbstractC8999pu0.k())));
    }

    @Override
    public final void a(C4554l1[] c4554l1Arr, ArrayList arrayList) {
        a((AbstractC10561zE) new C9278rc0(c4554l1Arr, a(AbstractC8999pu0.a(this.f40486c.b().f38092l2, C8854p10.b(), (C4798y<?>) this.f40486c)), b(arrayList)));
    }

    @Override
    public final void a(C4804y5 c4804y5, Object obj) {
        a((AbstractC10561zE) new F40(c4804y5, a((AbstractC8999pu0) AbstractC8999pu0.f()), h(obj)));
    }
}
