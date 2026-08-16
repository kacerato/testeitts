package com.android.tools.r8.synthesis;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4823z5;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.I2;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.L4;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC9530t40;
import com.android.tools.r8.internal.C5160Fj;
import com.android.tools.r8.internal.C5313Ib;
import com.android.tools.r8.internal.TW;
import com.android.tools.r8.synthesis.S;
import java.util.function.Consumer;

public final class N {

    public static final boolean f58110r = true;

    public final C4724u1 f58111a;

    public final M2 f58112b;

    public final S.b f58113c;

    public C5313Ib f58116f;

    public com.android.tools.r8.androidapi.f f58123m;

    public com.android.tools.r8.androidapi.f f58124n;

    public TW f58125o;

    public AbstractC9530t40 f58126p;

    public boolean f58127q;

    public L2 f58114d = null;

    public I2 f58115e = null;

    public M f58117g = null;

    public A2 f58118h = null;

    public L4 f58119i = null;

    public H3.g f58120j = H3.g.d();

    public C4723u0 f58121k = C4723u0.l0();

    public C4823z5 f58122l = C4823z5.f38465d;

    public N(AbstractC11582m abstractC11582m) {
        int i10 = com.android.tools.r8.androidapi.f.f35602a;
        com.android.tools.r8.androidapi.g gVar = com.android.tools.r8.androidapi.g.f35607b;
        this.f58123m = gVar;
        this.f58124n = gVar;
        this.f58125o = C5160Fj.f40293b;
        this.f58126p = AbstractC9530t40.f52519c;
        this.f58127q = true;
        this.f58111a = abstractC11582m.f58282a;
        this.f58112b = abstractC11582m.f58283b;
        this.f58113c = abstractC11582m.f58284c;
    }

    public final N a(L2 l22) {
        L2 l23;
        boolean z10 = f58110r;
        if (!z10 && l22 == null) {
            throw new AssertionError();
        }
        if (!z10 && (l23 = this.f58114d) != null && l23 != l22) {
            throw new AssertionError();
        }
        this.f58114d = l22;
        return this;
    }

    public final void b(C4516j1.a aVar) {
        aVar.a(this.f58126p);
    }

    public final C4516j1 a(com.android.tools.r8.graph.V v10) {
        M m10;
        boolean z10 = f58110r;
        if (!z10 && this.f58114d == null) {
            throw new AssertionError();
        }
        A2 a10 = this.f58111a.a(this.f58112b, this.f58115e, this.f58114d);
        L4 l42 = this.f58119i;
        AbstractC4497i0 a11 = (l42.H() || (m10 = this.f58117g) == null) ? null : m10.a(a10);
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        C4516j1.a a12 = new C4516j1.a(true).a(a10).a(l42);
        a12.f37332d = this.f58120j;
        a12.f37333e = this.f58121k;
        a12.f37335g = this.f58122l;
        C4516j1.a a13 = a12.a(a11).a(this.f58118h != null, new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.a((C4516j1.a) obj);
            }
        });
        a13.f37339k = this.f58116f;
        a13.f37340l = this.f58123m;
        a13.f37341m = this.f58124n;
        a13.f37337i = this.f58125o;
        C4516j1 a14 = a13.a(!this.f58127q, new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C4516j1.a) obj).b();
            }
        }).a((v10 != com.android.tools.r8.graph.V.f36877c || l42.D() || this.f58126p.e()) ? false : true, new Consumer() {
            @Override
            public final void accept(Object obj) {
                N.this.b((C4516j1.a) obj);
            }
        }).a();
        if (z10 || !this.f58113c.g()) {
            return a14;
        }
        S.b bVar = this.f58113c;
        if (!z10 && !bVar.g()) {
            throw new AssertionError();
        }
        if (a14.w0() && a14.m1() && a14.H0() && a14.k0().isEmpty() && a14.U0().isEmpty()) {
            return a14;
        }
        throw new AssertionError();
    }

    public N(C4724u1 c4724u1, M2 m22, S.b bVar) {
        int i10 = com.android.tools.r8.androidapi.f.f35602a;
        com.android.tools.r8.androidapi.g gVar = com.android.tools.r8.androidapi.g.f35607b;
        this.f58123m = gVar;
        this.f58124n = gVar;
        this.f58125o = C5160Fj.f40293b;
        this.f58126p = AbstractC9530t40.f52519c;
        this.f58127q = true;
        this.f58111a = c4724u1;
        this.f58112b = m22;
        this.f58113c = bVar;
    }

    public final void a(C4516j1.a aVar) {
        AbstractC4497i0 abstractC4497i0;
        A2 a22 = this.f58118h;
        boolean z10 = C4516j1.a.f37328u;
        if (!z10 && (abstractC4497i0 = aVar.f37330b) != null && !abstractC4497i0.C0()) {
            throw new AssertionError();
        }
        if (!z10 && aVar.f37344p != null) {
            throw new AssertionError();
        }
        aVar.f37344p = a22;
    }
}
