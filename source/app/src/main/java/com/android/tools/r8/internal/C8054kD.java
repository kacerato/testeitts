package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Collections;

public final class C8054kD extends AbstractC7221fD {

    public final C4554l1 f49556f;

    public final DG f49557g;

    public final C9508sx0 f49558h;

    public C8054kD(C4554l1 c4554l1, DG dg2, C9508sx0 c9508sx0) {
        this.f49557g = dg2;
        this.f49556f = c4554l1;
        this.f49558h = c9508sx0;
    }

    @Override
    public final WS a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C10215xA c10215xA) {
        C7702i60 c7702i60 = new C7702i60();
        PS a10 = WS.a(h52.getReference(), h52.d().F0(), c7702i60, c4798y.E());
        ArrayList arrayList = new ArrayList();
        AbstractC8999pu0 b10 = h52.E().S0() ? null : h52.E().b((C4798y<?>) c4798y);
        com.android.tools.r8.graph.M2 p10 = h52.p();
        C8854p10 b11 = C8854p10.b();
        p10.getClass();
        C10340xw0 c10340xw0 = new C10340xw0(0, AbstractC8999pu0.a(p10, b11, (C4798y<?>) c4798y), null);
        arrayList.add(c10340xw0);
        c7702i60.f48841b.b(c10340xw0.t(), c10340xw0);
        a10.a(c10340xw0.t());
        int i10 = 1;
        while (true) {
            C4516j1 d10 = h52.d();
            if (i10 >= d10.getReference().a(d10.w0())) {
                break;
            }
            com.android.tools.r8.graph.M2 a11 = h52.a(i10);
            C10340xw0 c10340xw02 = new C10340xw0(i10, a11.b((C4798y<?>) c4798y), null);
            arrayList.add(c10340xw02);
            c7702i60.f48841b.b(c10340xw02.t(), c10340xw02);
            int t10 = c10340xw02.t();
            a11.F0();
            a10.a(t10);
            i10++;
        }
        C10340xw0 c10340xw03 = new C10340xw0(i10, AbstractC8999pu0.k(), null);
        c7702i60.f48841b.b(c10340xw03.t(), c10340xw03);
        a10.a(180, Collections.singletonList(this.f49556f), Collections.singletonList(c10340xw0));
        int i11 = i10 + 1;
        C9231rG c9231rG = new C9231rG(((C9398sG) this.f49557g.o()).f52324c);
        int a12 = this.f49557g.f39474c - C8704o7.a(true ^ (this.f49558h != null));
        int[] iArr = new int[a12];
        int[] iArr2 = new int[a12];
        int size = (i11 - arrayList.size()) + 3;
        for (int i12 = 0; i12 < a12; i12++) {
            iArr[i12] = c9231rG.a().f44050b;
            iArr2[i12] = size;
            size += 2;
        }
        a10.a(170, Collections.singletonList(new LS(iArr, iArr2)), Collections.singletonList(c10340xw03));
        int i13 = i10 + 2;
        C9508sx0 c9508sx0 = this.f49558h;
        int i14 = 185;
        if (c9508sx0 != null) {
            com.android.tools.r8.graph.A2 a22 = c9508sx0.f52490b;
            c10215xA.getClass();
            a10.a(207, Collections.singletonList(((com.android.tools.r8.graph.A2) c10215xA.a(a22, h52.getReference(), EnumC8071kK.f49583g).f41111a).a(c10215xA.d(c9508sx0.f52489a.s0()), c10215xA.f43776c)), arrayList);
        } else {
            DG dg2 = this.f49557g;
            com.android.tools.r8.graph.A2 c10 = c10215xA.c((com.android.tools.r8.graph.A2) dg2.get(dg2.d()));
            if (h52.getHolder().isInterface()) {
                a10.a(185, Collections.singletonList(c10), arrayList);
            } else {
                a10.a(182, Collections.singletonList(c10), arrayList);
            }
        }
        if (h52.E().S0()) {
            a10.b();
        } else {
            C10340xw0 c10340xw04 = new C10340xw0(i13, b10, null);
            c7702i60.f48841b.b(c10340xw04.t(), c10340xw04);
            a10.a(176, Collections.EMPTY_LIST, Collections.singletonList(c10340xw04));
        }
        int i15 = i10 + 4;
        int i16 = 0;
        while (i16 < a12) {
            com.android.tools.r8.graph.A2 c11 = c10215xA.c((com.android.tools.r8.graph.A2) this.f49557g.get(iArr[i16]));
            if (h52.getHolder().isInterface()) {
                a10.a(i14, Collections.singletonList(c11), arrayList);
            } else {
                a10.a(182, Collections.singletonList(c11), arrayList);
            }
            if (h52.E().S0()) {
                a10.b();
            } else {
                C10340xw0 c10340xw05 = new C10340xw0(i15, b10, null);
                c7702i60.f48841b.b(c10340xw05.t(), c10340xw05);
                a10.a(176, Collections.EMPTY_LIST, Collections.singletonList(c10340xw05));
            }
            i15 += 2;
            i16++;
            i14 = 185;
        }
        return new C7887jD(a10.d(), c10215xA);
    }

    @Override
    public final void l(int i10) {
        throw new C5417Jv0();
    }

    @Override
    public final String toString() {
        return "IncompleteVirtuallyMergedMethodCode";
    }
}
