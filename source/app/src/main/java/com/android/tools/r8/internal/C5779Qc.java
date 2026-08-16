package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.D3;
import com.android.tools.r8.references.MethodReference;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;

public final class C5779Qc implements InterfaceC5005Cs0, BZ {

    public static final AbstractC7552hC f43634e = AbstractC7552hC.a(O9.class, C10546z9.class, M9.class, C10546z9.class, C10109wb.class);

    public static final AbstractC7552hC f43635f = AbstractC7552hC.a(C10546z9.class, C9271ra.class, C10109wb.class);

    public static final AbstractC7552hC f43636g = AbstractC7552hC.a(C8938pa.class, C10546z9.class, C10546z9.class, Z8.class);

    public final C4724u1 f43637a;

    public final C8696o40 f43638b;

    public final com.android.tools.r8.graph.L2 f43639c;

    public final List f43640d;

    public C5779Qc(C4798y c4798y) {
        C8696o40 c8696o40 = C8696o40.f51162b;
        final C4724u1 b10 = c4798y.b();
        this.f43637a = b10;
        this.f43638b = c8696o40;
        this.f43639c = b10.b("ENABLED");
        this.f43640d = (List) c4798y.E().f50681f1.f38524c.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4724u1.this.a((MethodReference) obj);
            }
        }).collect(Collectors.toList());
    }

    @Override
    public final void a(C4554l1 c4554l1, D3.a aVar, final com.android.tools.r8.graph.H5 h52, final com.android.tools.r8.shaking.L0 l02) {
        if ((c4554l1.t0().g(this.f43637a.f37890K0) && c4554l1.getType().a(this.f43637a.f37849E1)) || c4554l1.a(this.f43637a.f38007a5.f55312e.f55297b)) {
            this.f43640d.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    com.android.tools.r8.shaking.L0.this.b(h52, (com.android.tools.r8.graph.A2) obj);
                }
            });
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x0186, code lost:
    
        if (r11.getField().f38298g == r16.f43637a.f37890K0) goto L113;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.D5 d52, com.android.tools.r8.shaking.N n10) {
        int i10;
        F9 f92;
        int i11;
        C4516j1 d10 = h52.d();
        if (d10.b1() && d10.Q0().t0()) {
            com.android.tools.r8.graph.G V10 = d10.Q0().V();
            if (d10.f1()) {
                int i12 = 0;
                int i13 = 0;
                while (true) {
                    if (i13 >= V10.E0().size()) {
                        break;
                    }
                    W9 w92 = V10.E0().get(i13);
                    if (w92.L()) {
                        C7437ga j10 = w92.j();
                        if (j10.W() == 182 && j10.V() == this.f43637a.f37922O4.f36319a) {
                            int i14 = i13 + 1;
                            AbstractC7552hC abstractC7552hC = f43634e;
                            int i15 = i12;
                            int i16 = i14;
                            W9 w93 = null;
                            while (i16 < V10.E0().size() && i15 < abstractC7552hC.size()) {
                                w93 = V10.E0().get(i16);
                                w93.getClass();
                                if (!(w93 instanceof C8103ka) && !w93.K() && !(w93 instanceof C5541Ma)) {
                                    if (w93.getClass() != abstractC7552hC.get(i15)) {
                                        Class<?> cls = w93.getClass();
                                        AbstractC7552hC abstractC7552hC2 = f43636g;
                                        if (cls == abstractC7552hC2.get(i12)) {
                                            int i17 = i16;
                                            while (i17 < V10.E0().size() && (i11 = i17 - i16) < abstractC7552hC2.size()) {
                                                if (V10.E0().get(i17).getClass() != abstractC7552hC2.get(i11)) {
                                                    break;
                                                } else {
                                                    i17++;
                                                }
                                            }
                                            if (i17 - i16 == abstractC7552hC2.size()) {
                                                i16 += f43636g.size();
                                                if (i16 >= V10.E0().size()) {
                                                    break;
                                                } else {
                                                    w93 = V10.E0().get(i16);
                                                }
                                            }
                                        }
                                        w93.getClass();
                                        if (!(w93 instanceof C8103ka) && !w93.K() && !(w93 instanceof C5541Ma)) {
                                            if (w93.getClass() != abstractC7552hC.get(i15)) {
                                                break;
                                            }
                                        }
                                    }
                                    i15++;
                                }
                                i16++;
                                i12 = 0;
                            }
                            F9 f10 = i15 == abstractC7552hC.size() ? w93.f() : null;
                            if (f10 == null) {
                                AbstractC7552hC abstractC7552hC3 = f43635f;
                                int i18 = 0;
                                W9 w94 = null;
                                while (i14 < V10.E0().size() && i18 < abstractC7552hC3.size()) {
                                    w94 = V10.E0().get(i14);
                                    w94.getClass();
                                    if (!(w94 instanceof C10443yb) && !(w94 instanceof C8938pa)) {
                                        if (w94.getClass() != abstractC7552hC3.get(i18)) {
                                            break;
                                        } else {
                                            i18++;
                                        }
                                    }
                                    i14++;
                                }
                                f92 = i18 == abstractC7552hC3.size() ? w94.f() : null;
                            } else {
                                f92 = f10;
                            }
                            if (f92 != null) {
                                if (f92.B() == 179) {
                                }
                            }
                        }
                    }
                    if (w92.Q()) {
                        break;
                    }
                    i13++;
                    i12 = 0;
                }
                if (h52.p() == this.f43637a.f38007a5.f55312e.f55296a) {
                    List<W9> E02 = h52.d().Q0().V().E0();
                    for (i10 = 1; i10 < E02.size(); i10++) {
                        W9 w95 = E02.get(i10 - 1);
                        if (w95.L()) {
                            C7437ga j11 = w95.j();
                            if (j11.W() == 182 && j11.V() == this.f43637a.f37922O4.f36319a && E02.get(i10).I()) {
                                F9 f11 = E02.get(i10).f();
                                if (f11.B() == 179 && f11.getField().f38298g == this.f43639c) {
                                    this.f43638b.getClass();
                                    d10.T0().f45466u |= 128;
                                    return;
                                }
                            }
                        }
                        if (w95.Q()) {
                            return;
                        }
                    }
                }
            }
        }
    }
}
