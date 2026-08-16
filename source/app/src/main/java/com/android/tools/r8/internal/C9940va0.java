package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.InterfaceC4364b0;
import com.android.tools.r8.graph.proto.c;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C9940va0 extends AbstractC5971Tj {

    public static final boolean f53148i = true;

    public final C10107wa0 f53149f;

    public final C10608za0 f53150g;

    public final C10441ya0 f53151h;

    public C9940va0(C10441ya0 c10441ya0, C10107wa0 c10107wa0, C10608za0 c10608za0) {
        this.f53151h = c10441ya0;
        this.f53149f = c10107wa0;
        this.f53150g = c10608za0;
    }

    @Override
    public final C6276Ys0 a(C5855Rj c5855Rj, List list) {
        final com.android.tools.r8.graph.E0 e02 = (com.android.tools.r8.graph.E0) c5855Rj.f43692a;
        boolean z10 = f53148i;
        if (!z10 && list.size() < 1) {
            com.android.tools.r8.graph.M2 type = e02.getType();
            C10441ya0 c10441ya0 = this.f53151h;
            if (type != c10441ya0.f54045b.f38068i2) {
                C4514j c4514j = (C4514j) c10441ya0.f54044a.f();
                com.android.tools.r8.graph.M2 m22 = e02.f36247g;
                if (m22 == null || !c4514j.h(m22)) {
                    for (com.android.tools.r8.graph.M2 m23 : e02.f36248h.f36675b) {
                        if (!c4514j.h(m23)) {
                        }
                    }
                    throw new AssertionError();
                }
            }
        }
        if (!z10 && list.size() > 1 && !this.f53151h.f54046c.f50640T0) {
            throw new AssertionError();
        }
        final C10274xa0 c10274xa0 = (C10274xa0) c5855Rj.f43973d;
        if (!list.isEmpty()) {
            c10274xa0.f53777a.add((C10274xa0) ((C5855Rj) list.get(0)).f43973d);
        }
        final Map b10 = e02.e0() ? this.f53151h.b(e02.d0(), c10274xa0, this.f53149f) : null;
        com.android.tools.r8.graph.N4 b02 = e02.b0();
        final C10107wa0 c10107wa0 = this.f53149f;
        final C10608za0 c10608za0 = this.f53150g;
        InterfaceC5422Jy interfaceC5422Jy = new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return C9940va0.this.a(e02, c10274xa0, b10, c10107wa0, c10608za0, (C4516j1) obj);
            }
        };
        b02.getClass();
        b02.f36639c = C4516j1.f37311v;
        b02.f36638b.a((Function) interfaceC5422Jy);
        return new C6276Ys0(c10274xa0);
    }

    @Override
    public final AbstractC6333Zs0 a(C5855Rj c5855Rj, final Function function) {
        com.android.tools.r8.graph.E0 e02 = (com.android.tools.r8.graph.E0) c5855Rj.f43692a;
        c5855Rj.f43973d = new C10274xa0();
        if (e02.a1() != null) {
            C4798y c4798y = this.f53151h.f54044a;
            InterfaceC4364b0 f10 = c4798y.f().f(e02.a1());
            Objects.requireNonNull(function);
            f10.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Function.this.apply((com.android.tools.r8.graph.E0) obj);
                }
            });
        }
        return C6276Ys0.f46097c;
    }

    public final C4516j1 a(com.android.tools.r8.graph.E0 e02, C10274xa0 c10274xa0, Map map, C10107wa0 c10107wa0, C10608za0 c10608za0, final C4516j1 c4516j1) {
        com.android.tools.r8.graph.F2 a10;
        final com.android.tools.r8.graph.proto.j jVar;
        K c7561hF;
        com.android.tools.r8.graph.proto.d eVar;
        com.android.tools.r8.graph.F2 Z02 = c4516j1.Z0();
        if (!e02.e0()) {
            C4724u1 c4724u1 = this.f53151h.f54045b;
            com.android.tools.r8.graph.D2 d22 = (com.android.tools.r8.graph.D2) Z02;
            c10274xa0.getClass();
            if (!d22.f36220c.t0().equals(c4724u1.f38067i1)) {
                c10274xa0.f53778b.f51964b.a(d22, d22, true);
                return c4516j1;
            }
        } else {
            if (!f53148i && map == null) {
                throw new AssertionError();
            }
            if (c4516j1.j1()) {
                a10 = (com.android.tools.r8.graph.F2) map.get(Z02);
            } else {
                a10 = c10274xa0.a((com.android.tools.r8.graph.D2) Z02, this.f53151h.f54045b, c10107wa0, true);
            }
            if (Z02.equals(a10)) {
                C4724u1 c4724u12 = this.f53151h.f54045b;
                com.android.tools.r8.graph.D2 d23 = (com.android.tools.r8.graph.D2) Z02;
                c10274xa0.getClass();
                if (!d23.f36220c.t0().equals(c4724u12.f38067i1)) {
                    c10274xa0.f53778b.f51964b.a(d23, d23, true);
                }
            } else {
                com.android.tools.r8.graph.H2 d02 = e02.d0();
                C4724u1 c4724u13 = this.f53151h.f54045b;
                a10.getClass();
                com.android.tools.r8.graph.M2 type = d02.getType();
                type.getClass();
                com.android.tools.r8.graph.A2 a11 = c4724u13.a(type, a10.b(), a10.a());
                if (!C10608za0.f54401d) {
                    c10608za0.getClass();
                    if (c4516j1.getReference() == a11) {
                        throw new AssertionError();
                    }
                }
                c10608za0.f54403b.f51964b.a(c4516j1.getReference(), a11, true);
                if (!c4516j1.V0().equals(a11.x0())) {
                    int i10 = !c4516j1.w0();
                    int a12 = c4516j1.getReference().a(c4516j1.w0());
                    if (a12 <= 30) {
                        c7561hF = new ME();
                    } else {
                        c7561hF = new C7561hF(16);
                    }
                    c7561hF.f41547b = -1;
                    boolean[] zArr = new boolean[a12];
                    for (int i11 = i10; i11 < a12; i11++) {
                        com.android.tools.r8.graph.M2 a13 = c4516j1.getReference().a(i11, c4516j1.w0());
                        int i12 = i10;
                        while (true) {
                            if (i12 >= a12) {
                                break;
                            }
                            if (a13 != a11.a(i12, c4516j1.getAccessFlags().n()) || zArr[i12]) {
                                i12++;
                            } else {
                                if (i11 != i12) {
                                    c7561hF.b(i11, i12);
                                } else {
                                    c7561hF.remove(i11);
                                }
                                zArr[i12] = true;
                            }
                        }
                    }
                    if (c7561hF.isEmpty()) {
                        eVar = com.android.tools.r8.graph.proto.f.f37614a;
                    } else {
                        eVar = new com.android.tools.r8.graph.proto.e(c7561hF);
                    }
                    if (!C10608za0.f54401d && (eVar instanceof com.android.tools.r8.graph.proto.f)) {
                        throw new AssertionError();
                    }
                    c.a a14 = com.android.tools.r8.graph.proto.c.a().a(a12);
                    a14.f37610c = eVar;
                    com.android.tools.r8.graph.proto.c a15 = a14.a();
                    int i13 = AbstractC7552hC.f48487c;
                    jVar = com.android.tools.r8.graph.proto.j.a(C6190Xe0.f45779e, null, a15);
                    c10608za0.f54404c.put(a11, jVar);
                } else {
                    jVar = com.android.tools.r8.graph.proto.j.f37620d;
                }
                return c4516j1.a(a11, this.f53151h.f54045b, new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C9940va0.a(com.android.tools.r8.graph.proto.j.this, c4516j1, (C4516j1.a) obj);
                    }
                });
            }
        }
        return c4516j1;
    }

    public static void a(com.android.tools.r8.graph.proto.j jVar, C4516j1 c4516j1, C4516j1.a aVar) {
        if (jVar.c()) {
            return;
        }
        aVar.a(jVar.a(c4516j1)).f37332d = H3.g.d();
    }
}
