package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C6166Wu0 {

    public static final boolean f45572e = true;

    public final C4798y f45573a;

    public final Map f45574b;

    public final M70 f45575c;

    public final IdentityHashMap f45576d;

    public C6166Wu0(C4798y c4798y, Map map, IdentityHashMap identityHashMap) {
        this.f45573a = c4798y;
        this.f45574b = map;
        this.f45575c = M70.b(c4798y);
        this.f45576d = identityHashMap;
    }

    public final void a(ExecutorService executorService) {
        C5467Kr0.a(((C4514j) this.f45573a.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6166Wu0.this.a((com.android.tools.r8.graph.H2) obj);
            }
        }, this.f45573a.E().G(), executorService);
        a();
        this.f45575c.a(this.f45573a);
    }

    public final void b(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        this.f45575c.a(h53, h52);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.android.tools.r8.internal.YS[], java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v9 */
    public final WS b(final com.android.tools.r8.graph.H5 h52, final WS ws) {
        C6899dH c6899dH = new C6899dH(16);
        if (h52.d().j1() && this.f45574b.containsKey(h52.getHolder().a1())) {
            c6899dH.a(0, h52.getHolder().a1());
        }
        C7089eT it = ws.iterator();
        while (it.hasNext()) {
            InterfaceC6923dT next = it.next();
            if (next.a() == 187) {
                com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) ws.f45405g[next.o()];
                if (this.f45574b.containsKey(m22)) {
                    c6899dH.a(next.a(ws), m22);
                }
            }
        }
        if (!c6899dH.isEmpty()) {
            X7 x72 = new X7();
            C10092wT c10092wT = new C10092wT(x72);
            final ArrayList arrayList = new ArrayList();
            C9115qd0 c9115qd0 = new C9115qd0();
            C7089eT it2 = ws.iterator();
            while (it2.hasNext()) {
                InterfaceC6923dT next2 = it2.next();
                C6109Vu0 a10 = a(h52, ws, c10092wT, next2, c6899dH);
                if (a10 != null) {
                    com.android.tools.r8.graph.H5 b10 = ((C6223Xu0) this.f45576d.get(a10.f45207c)).b(a10.f45207c, a10.f45205a, this.f45574b, new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            C6166Wu0.this.b(h52, (com.android.tools.r8.graph.H5) obj);
                        }
                    });
                    if (b10.v() != a10.f45205a.w0()) {
                        if (f45572e || b10.v() > a10.f45205a.w0()) {
                            return a(h52, ws);
                        }
                        throw new AssertionError();
                    }
                    int intValue = ((Integer) c9115qd0.computeIfAbsent(b10.getReference(), new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            return C6166Wu0.a(List.this, ws, (com.android.tools.r8.graph.A2) obj);
                        }
                    })).intValue();
                    boolean z10 = C8707o8.f51173a;
                    int m10 = next2.m();
                    c10092wT.a(205, m10 + 8);
                    C8707o8.a(intValue, (InterfaceC9041q8) new TQ0(c10092wT));
                    C8707o8.a(a10.f45206b, (InterfaceC9041q8) new TQ0(c10092wT));
                    while (true) {
                        int i10 = m10 - 1;
                        if (m10 > 0) {
                            c10092wT.b(next2.j());
                            m10 = i10;
                        }
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                YS[] ysArr = ws.f45405g;
                boolean z11 = X3.f45604a;
                if (!arrayList.isEmpty()) {
                    if (arrayList.size() == 1) {
                        ysArr = X3.b(ysArr, arrayList.get(0));
                    } else {
                        int length = ysArr.length;
                        ysArr = Arrays.copyOf((Object[]) ysArr, arrayList.size() + length);
                        for (int i11 = 0; i11 < arrayList.size(); i11++) {
                            ysArr[length + i11] = arrayList.get(i11);
                        }
                    }
                }
                return new WS(ysArr, ws.f45406h, ws.f45407i, x72.f45623a.toByteArray(), ws.f45409k, ws.f45410l, ws.f45411m, ws.f45403e, ws.f45404f, ws.f45412n);
            }
        }
        return ws;
    }

    public final void a(final com.android.tools.r8.graph.H2 h22) {
        h22.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6166Wu0.this.a((com.android.tools.r8.graph.H5) obj);
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6166Wu0.this.a(h22, (C4516j1) obj);
            }
        });
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22, C4516j1 c4516j1) {
        return c4516j1.b1() && c4516j1.Q0().A0() && a(h22, c4516j1, c4516j1.Q0().o0(), this.f45574b);
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        WS o02 = h52.d().Q0().o0();
        WS b10 = b(h52, o02);
        if (U30.a(o02, b10)) {
            h52.a(b10, this.f45573a);
        }
    }

    public static boolean a(com.android.tools.r8.graph.H2 h22, C4516j1 c4516j1, WS ws, final Map map) {
        if (c4516j1.j1() && map.containsKey(h22.a1())) {
            return true;
        }
        return X3.a((Object[]) ws.f45405g, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6166Wu0.a(Map.this, (YS) obj);
            }
        });
    }

    public static boolean a(Map map, YS ys) {
        return (ys instanceof com.android.tools.r8.graph.M2) && map.containsKey(ys);
    }

    public static Integer a(List list, WS ws, com.android.tools.r8.graph.A2 a22) {
        list.add(a22);
        return Integer.valueOf((list.size() + ws.f45405g.length) - 1);
    }

    public final WS a(final com.android.tools.r8.graph.H5 h52, WS ws) {
        com.android.tools.r8.graph.M2 u22;
        C4798y c4798y = this.f45573a;
        ws.getClass();
        C7215fB a10 = ws.a(h52, c4798y, EW.b(c4798y));
        C7549hB p10 = a10.p();
        while (true) {
            QJ qj2 = (QJ) p10.a(new A11());
            if (qj2 != null) {
                if (qj2.C2().i().d(new C7680hz0())) {
                    u22 = qj2.C2().i().r().w0().u2();
                } else if (qj2.C2().f53893j && h52.d().j1()) {
                    u22 = h52.getHolder().a1();
                }
                com.android.tools.r8.graph.A2 B22 = qj2.B2();
                if (this.f45574b.containsKey(u22) && !u22.a(B22.s0())) {
                    boolean z10 = qj2.C2().f53893j;
                    boolean z11 = f45572e;
                    if (!z11 && !B22.b(this.f45573a.b())) {
                        throw new AssertionError();
                    }
                    if (!h52.d().j1() || !B22.s0().a(h52.p()) || !z10) {
                        com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) this.f45574b.get(u22);
                        if (!z11 && h22 == null) {
                            throw new AssertionError();
                        }
                        if (((C4514j) this.f45573a.f()).c(B22.s0(), h22.getType())) {
                            continue;
                        } else {
                            com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) this.f45574b.get(u22);
                            com.android.tools.r8.graph.H5 b10 = ((C6223Xu0) this.f45576d.get(h23)).b(h23, B22, this.f45574b, new Consumer() {
                                @Override
                                public final void accept(Object obj) {
                                    C6166Wu0.this.a(h52, (com.android.tools.r8.graph.H5) obj);
                                }
                            });
                            boolean z12 = QJ.f43538p;
                            PJ pj2 = (PJ) new PJ().a(qj2.f54321f);
                            pj2.f44718d = b10.getReference();
                            if (b10.v() > B22.w0()) {
                                p10.previous();
                                C10340xw0 a11 = p10.a(a10, this.f45573a.E(), 0, AbstractC8999pu0.k());
                                C4516j1 d10 = b10.d();
                                ArrayList arrayList = new ArrayList(d10.getReference().a(d10.w0()));
                                arrayList.addAll(qj2.f54321f);
                                while (true) {
                                    int size = arrayList.size();
                                    C4516j1 d11 = b10.d();
                                    if (size >= d11.getReference().a(d11.w0())) {
                                        break;
                                    }
                                    arrayList.add(a11);
                                }
                                AbstractC10561zE next = p10.next();
                                if (!f45572e && next != qj2) {
                                    throw new AssertionError();
                                }
                                pj2.a(arrayList);
                            }
                            p10.a(pj2.c(), (C10696a) null);
                        }
                    }
                }
            } else {
                return new C9717uB(this.f45573a).a(a10, C9875v8.b(), C8659ns0.c());
            }
        }
    }

    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        this.f45575c.a(h53, h52);
    }

    public final C6109Vu0 a(com.android.tools.r8.graph.H5 h52, WS ws, C10092wT c10092wT, InterfaceC6923dT interfaceC6923dT, C6899dH c6899dH) {
        int i10;
        int a10 = interfaceC6923dT.a();
        if (C8089kT.e(a10)) {
            c10092wT.a(a10);
            return null;
        }
        int m10 = interfaceC6923dT.m();
        int i11 = -1;
        if (a10 == 205) {
            int o10 = interfaceC6923dT.o();
            com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) ws.f45405g[o10];
            if (a22.b(this.f45573a.b())) {
                int k10 = interfaceC6923dT.k();
                int intValue = ((Integer) ws.f45403e.a().a(k10, interfaceC6923dT.a(ws))).intValue();
                com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) c6899dH.get(intValue);
                if (m22 != null && !m22.a(a22.s0())) {
                    r4 = intValue == 0 ? (char) 1 : (char) 0;
                    boolean z10 = f45572e;
                    if (!z10 && !a22.b(this.f45573a.b())) {
                        throw new AssertionError();
                    }
                    if (!h52.d().j1() || !a22.s0().a(h52.p()) || r4 == 0) {
                        com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) this.f45574b.get(m22);
                        if (!z10 && h22 == null) {
                            throw new AssertionError();
                        }
                        if (!((C4514j) this.f45573a.f()).c(a22.s0(), h22.getType())) {
                            return new C6109Vu0(a22, k10, (com.android.tools.r8.graph.H2) this.f45574b.get(m22));
                        }
                    }
                }
                r4 = 2;
                i10 = k10;
            } else {
                i10 = -1;
                r4 = 1;
            }
            i11 = o10;
        } else {
            i10 = -1;
        }
        c10092wT.a(a10, m10);
        if (!f45572e && r4 > 2) {
            throw new AssertionError();
        }
        if (r4 > 0) {
            C8707o8.a(i11, (InterfaceC9041q8) new TQ0(c10092wT));
            if (r4 == 2) {
                C8707o8.a(i10, (InterfaceC9041q8) new TQ0(c10092wT));
            }
        }
        int m11 = interfaceC6923dT.m();
        while (true) {
            int i12 = m11 - 1;
            if (m11 <= 0) {
                return null;
            }
            c10092wT.b(interfaceC6923dT.j());
            m11 = i12;
        }
    }

    public final void a() {
        C4875Al0.a(this.f45576d.values()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C6223Xu0) obj).a();
            }
        });
    }
}
