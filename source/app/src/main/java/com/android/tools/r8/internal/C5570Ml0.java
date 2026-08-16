package com.android.tools.r8.internal;

import android.mtp.MtpConstants;
import com.android.tools.r8.graph.C4382c;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8106kb;
import com.android.tools.r8.synthesis.S;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;

public final class C5570Ml0 {

    public static final boolean f42389g = true;

    public final C4798y f42390a;

    public final C4724u1 f42391b;

    public final C8664nu f42392c;

    public final com.android.tools.r8.shaking.M0 f42393d;

    public final com.android.tools.r8.graph.H2 f42394e;

    public C4516j1 f42395f;

    public C5570Ml0(C4798y c4798y, C8664nu c8664nu, QC qc2, com.android.tools.r8.shaking.M0 m02) {
        Iterator it = qc2.iterator();
        com.android.tools.r8.graph.H2 h22 = null;
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) it.next();
            if (h22 == null || h23.f36245e.compareTo(h22.f36245e) < 0) {
                h22 = h23;
            }
        }
        this.f42390a = c4798y;
        this.f42391b = c4798y.b();
        this.f42392c = c8664nu;
        this.f42393d = m02;
        this.f42394e = h22;
    }

    public final void a(com.android.tools.r8.synthesis.W w10) {
        com.android.tools.r8.graph.M2 m22 = w10.f58283b;
        C4460g1[] c4460g1Arr = C4460g1.f37200o;
        C4460g1.a aVar = new C4460g1.a(true);
        C4724u1 c4724u1 = this.f42391b;
        C4460g1.a a10 = aVar.a(c4724u1.a(m22, c4724u1.f37947S1, "$VALUES"));
        a10.f37213c = C4537k3.g(MtpConstants.OPERATION_MOVE_OBJECT);
        C4798y c4798y = this.f42390a;
        a10.f37218h = c4798y.f38405T;
        if (!c4798y.E().a().e()) {
            a10.f37223m = false;
        }
        C4460g1 a11 = a10.a();
        com.android.tools.r8.shaking.M0 m02 = this.f42393d;
        com.android.tools.r8.shaking.N0 a12 = m02.a(a11.getReference());
        C4382c c4382c = C4382c.f37089a;
        a12.f56832a = c4382c;
        m02.a(a11.getReference()).f56833b = c4382c;
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        C4516j1.a a13 = new C4516j1.a(true).a(this.f42391b.b(m22)).a(com.android.tools.r8.graph.L4.b(4104, true));
        AbstractC4895Av0 it = this.f42392c.f51108a.values().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            int i11 = ((C8497mu) it.next()).f50453e;
            if (i11 != -1) {
                if (!C8497mu.f50448f && i11 == -1) {
                    throw new AssertionError();
                }
                i10 = Math.max(i10, i11);
            }
        }
        ArrayList arrayList = new ArrayList((i10 * 4) + 4);
        arrayList.add(new C10546z9(i10, EnumC5477Kw0.f41825c));
        arrayList.add(new C10273xa(this.f42391b.f37947S1));
        int i12 = 0;
        while (i12 < i10) {
            arrayList.add(new C8106kb(C8106kb.a.Dup));
            EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41825c;
            arrayList.add(new C10546z9(i12, enumC5477Kw0));
            i12++;
            arrayList.add(new C10546z9(i12, enumC5477Kw0));
            arrayList.add(new Z8(YV.f45999f));
        }
        arrayList.add(new C10109wb(a11.getReference()));
        arrayList.add(new C6607bb());
        List list = Collections.EMPTY_LIST;
        C4516j1.a a14 = a13.a(new com.android.tools.r8.graph.G(m22, 4, 0, arrayList, list, list));
        C5313Ib c5313Ib = C5313Ib.f41136g;
        a14.f37339k = c5313Ib;
        com.android.tools.r8.androidapi.f fVar = this.f42390a.f38405T;
        a14.f37340l = fVar;
        a14.f37341m = fVar;
        C4516j1 a15 = a14.a();
        C4516j1[] c4516j1Arr2 = C4516j1.f37310u;
        C4516j1.a aVar2 = new C4516j1.a(true);
        C4724u1 c4724u12 = this.f42391b;
        C4516j1.a a16 = aVar2.a(c4724u12.a(m22, c4724u12.a(c4724u12.f37947S1, c4724u12.f37884J1), "values")).a(com.android.tools.r8.graph.L4.b(4105, false));
        EnumC5477Kw0 enumC5477Kw02 = EnumC5477Kw0.f41825c;
        C8938pa c8938pa = new C8938pa(enumC5477Kw02, 0);
        C10273xa c10273xa = new C10273xa(this.f42391b.f37947S1);
        EnumC5477Kw0 enumC5477Kw03 = EnumC5477Kw0.f41824b;
        Object[] a17 = AbstractC9694u30.a(11, new Object[]{c8938pa, c10273xa, new C10443yb(enumC5477Kw03, 1), new C9942vb(a11.getReference()), new C10546z9(0L, enumC5477Kw02), new C8938pa(enumC5477Kw03, 1), new C10546z9(0L, enumC5477Kw02), new C8938pa(enumC5477Kw02, 0), new C7437ga(184, this.f42391b.f37971V4.f36820a, false), new C8938pa(enumC5477Kw03, 1), new C6440ab(enumC5477Kw03)});
        C4516j1.a a18 = a16.a(new com.android.tools.r8.graph.G(m22, 5, 2, AbstractC7552hC.b(a17.length, a17), list, list));
        a18.f37339k = c5313Ib;
        com.android.tools.r8.androidapi.f fVar2 = this.f42390a.f38405T;
        a18.f37340l = fVar2;
        a18.f37341m = fVar2;
        C4516j1 a19 = a18.a();
        this.f42395f = a19;
        com.android.tools.r8.synthesis.W w11 = (com.android.tools.r8.synthesis.W) w10.a((AbstractCollection) AbstractC7552hC.a(a15, a19));
        C5920Sm0 c5920Sm0 = new C5920Sm0(a11);
        w11.f58294m.clear();
        w11.f58294m.addAll(c5920Sm0);
        ((com.android.tools.r8.synthesis.W) w11.c()).f58293l = true;
    }

    public final com.android.tools.r8.graph.H2 a() {
        com.android.tools.r8.graph.H2 a10 = this.f42390a.f38408a.g().a(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58182i;
                return bVar;
            }
        }, this.f42394e, this.f42390a, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5570Ml0.this.a((com.android.tools.r8.synthesis.W) obj);
            }
        });
        if (f42389g || a10.getAccessFlags().equals(new com.android.tools.r8.graph.Q(4113))) {
            return a10;
        }
        throw new AssertionError();
    }
}
