package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C9875v8;
import java.util.ArrayList;
import java.util.Iterator;

public class C5937Sv {

    public final C4798y f44333a;

    public final C6224Xv f44334b;

    public final C6338Zv f44335c;

    public final C5128Ew f44336d;

    public final C5186Fw f44337e;

    public C5937Sv(C4798y c4798y) {
        C8570nJ E10 = c4798y.E();
        this.f44333a = c4798y;
        this.f44335c = E10.f50588C ? new C6338Zv() : null;
        this.f44334b = E10.f50591D ? new C6224Xv(c4798y) : null;
        this.f44336d = new C5128Ew(c4798y);
        this.f44337e = new C5186Fw(c4798y);
    }

    public void a(C7215fB c7215fB, C9875v8.a aVar, AbstractC8028k40 abstractC8028k40, AbstractC6931dX abstractC6931dX) {
        C6224Xv c6224Xv;
        if (abstractC6931dX.f()) {
            if (c7215fB.f47902i.b() || c7215fB.f47902i.a(49)) {
                for (AbstractC10561zE abstractC10561zE : c7215fB.q()) {
                    if (abstractC10561zE.E1()) {
                        AbstractC7670hw S10 = abstractC10561zE.S();
                        com.android.tools.r8.graph.F5 o10 = ((C4514j) this.f44333a.f()).c(S10.getField()).o();
                        if (o10 != null) {
                            C6224Xv c6224Xv2 = this.f44334b;
                            if (c6224Xv2 != null && S10.F1()) {
                                c6224Xv2.a(o10, S10.value());
                            }
                            if (this.f44335c != null) {
                                C4460g1 d10 = o10.d();
                                if (d10.getReference().f37449i.L0()) {
                                    int i10 = -1;
                                    if (d10.f37207l.h() != -1 && S10.D1()) {
                                        C10340xw0 d11 = S10.d();
                                        if (d11.V() <= 0) {
                                            Iterator<AbstractC10561zE> it = d11.b0().iterator();
                                            int i11 = 0;
                                            while (true) {
                                                if (!it.hasNext()) {
                                                    i10 = i11;
                                                    break;
                                                }
                                                AbstractC10561zE next = it.next();
                                                if (!C6338Zv.a(next, d10)) {
                                                    if (!(next instanceof C9523t2)) {
                                                        break;
                                                    }
                                                    ArrayList arrayList = next.u().f54321f;
                                                    C10340xw0 i12 = ((C10340xw0) arrayList.get(1 - arrayList.indexOf(d11))).i();
                                                    if (i12.j() || !i12.f53886c.w1()) {
                                                        break;
                                                    } else {
                                                        i11 |= i12.f53886c.J().u2();
                                                    }
                                                }
                                            }
                                        }
                                        abstractC8028k40.a(d10, i10);
                                    }
                                }
                            }
                            C5128Ew c5128Ew = this.f44336d;
                            if (c5128Ew != null) {
                                c5128Ew.a(S10, aVar, c7215fB.j());
                            }
                            C5186Fw c5186Fw = this.f44337e;
                            if (c5186Fw != null) {
                                c5186Fw.a(S10, o10, aVar);
                            }
                        }
                    } else if (abstractC10561zE.c2()) {
                        C9603tZ w02 = abstractC10561zE.w0();
                        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f44333a.g(w02.f52627k));
                        if (a10 != null && (c6224Xv = this.f44334b) != null) {
                            c6224Xv.a(w02, a10, c7215fB.j());
                        }
                    }
                }
            }
        }
    }

    public C5937Sv(C4798y<? extends C4514j> c4798y, C6224Xv c6224Xv, C6338Zv c6338Zv, C5128Ew c5128Ew, C5186Fw c5186Fw) {
        this.f44333a = c4798y;
        this.f44334b = c6224Xv;
        this.f44335c = c6338Zv;
        this.f44336d = c5128Ew;
        this.f44337e = c5186Fw;
    }
}
