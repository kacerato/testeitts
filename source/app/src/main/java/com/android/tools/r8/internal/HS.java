package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.EW;
import java.util.function.Consumer;

public abstract class HS {
    public static C7215fB a(com.android.tools.r8.graph.H5 h52, WS ws, AbstractC6423aT abstractC6423aT, C4798y c4798y, B60 b60, com.android.tools.r8.graph.proto.j jVar, EW.a aVar) {
        int i10;
        SS ss;
        int i11;
        final GS gs = new GS(ws, h52.getReference(), h52.d().F0(), c4798y, abstractC6423aT, b60, jVar);
        com.android.tools.r8.graph.proto.c cVar = gs.f40491h.f37623b;
        gs.f40494k = gs.e(-1);
        if (h52.d().w0()) {
            i10 = 0;
        } else {
            if (!GS.f40485s && cVar.b(0) != 0) {
                throw new AssertionError();
            }
            gs.d(h52.p());
            i10 = 1;
        }
        int a10 = ((com.android.tools.r8.graph.proto.c.a(Integer.MAX_VALUE, cVar.f37604a) + h52.C().size()) + (1 ^ (h52.d().w0() ? 1 : 0))) - gs.f40491h.f37622a.size();
        int i12 = 0;
        while (i10 < a10) {
            com.android.tools.r8.graph.proto.b a11 = cVar.a(i10);
            if (a11.c()) {
                i11 = i10 + 1;
                gs.b(i10, a11.a().e());
                i12++;
            } else if (a11 instanceof com.android.tools.r8.graph.proto.k) {
                com.android.tools.r8.graph.proto.k b10 = a11.b();
                int a12 = cVar.f37606c.a(i10 - i12);
                if (!GS.f40485s && h52.a(a12) != b10.e()) {
                    throw new AssertionError();
                }
                i11 = i10 + 1;
                gs.b(i10, b10.f());
            } else {
                i11 = i10 + 1;
                gs.b(i10, h52.a(cVar.f37606c.a(i10 - i12)));
            }
            i10 = i11;
        }
        for (AbstractC4952Bv abstractC4952Bv : gs.f40491h.f37622a) {
            com.android.tools.r8.graph.M2 a13 = h52.a(cVar.f37606c.a(i10 - i12));
            if (abstractC4952Bv.a()) {
                AbstractC8999pu0 m10 = a13.Q0() ? AbstractC8999pu0.m() : a13.b(gs.f40486c);
                AbstractC6423aT abstractC6423aT2 = gs.f40489f;
                gs.a(false, abstractC6423aT2.a(abstractC6423aT2.f46543b.a(), m10));
            } else {
                gs.b(i10, a13);
                i10++;
            }
        }
        int i13 = gs.f40499p;
        SS[] ssArr = gs.f40500q;
        if (i13 < ssArr.length) {
            gs.f40499p = i13 + 1;
            ss = ssArr[i13];
        } else {
            ss = null;
        }
        gs.f40498o = ss;
        gs.j();
        ws.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((InterfaceC6923dT) obj).a(GS.this);
            }
        });
        C7215fB a14 = gs.a(h52, aVar);
        new C8331lu0(c4798y, a14, false).c();
        return a14;
    }
}
