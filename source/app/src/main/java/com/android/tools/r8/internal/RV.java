package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4725u2;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.shaking.C11245i;
import java.util.Iterator;
import java.util.function.BiFunction;

public abstract class RV {

    public static final boolean f43913d = true;

    public final com.android.tools.r8.androidapi.a f43914a;

    public final C4798y f43915b;

    public final C8570nJ f43916c;

    public RV(C4798y c4798y) {
        this.f43914a = c4798y.f38404S;
        this.f43915b = c4798y;
        this.f43916c = c4798y.E();
    }

    public static C4554l1 a(InterfaceC4403d1 interfaceC4403d1, com.android.tools.r8.graph.F0 f02, C4554l1 c4554l1) {
        if (f02 instanceof com.android.tools.r8.graph.F5) {
            return f02.getReference();
        }
        com.android.tools.r8.graph.M2 a10 = a(f02.getHolder(), interfaceC4403d1, f02.getReference(), c4554l1.s0(), new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((com.android.tools.r8.graph.E0) obj).b((C4554l1) obj2);
            }
        });
        return a10 != null ? c4554l1.a(a10, interfaceC4403d1.b()) : c4554l1;
    }

    public final boolean a(com.android.tools.r8.graph.A4 a42, final Z4.c cVar, AbstractC8374m80 abstractC8374m80) {
        if (a42.getHolder().w1() && a42.d().H0()) {
            return true;
        }
        return AbstractC9907vK.a(abstractC8374m80, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return RV.this.a(cVar, (com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:125:0x0206, code lost:
    
        return (com.android.tools.r8.graph.A2) r2.getReference();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0028, code lost:
    
        if (r1.a(com.android.tools.r8.internal.C2.N) == false) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.H0 h02, Z4.c cVar, AbstractC8374m80 abstractC8374m80, EnumC8071kK enumC8071kK, com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.M2 a10;
        boolean d10;
        com.android.tools.r8.graph.E0 g10;
        boolean z10 = f43913d;
        if (!z10 && (h02 instanceof com.android.tools.r8.graph.H5)) {
            throw new AssertionError();
        }
        enumC8071kK.getClass();
        if (enumC8071kK == EnumC8071kK.f49580d) {
            return a22;
        }
        if (enumC8071kK.d()) {
            C8570nJ c8570nJ = this.f43916c;
            c8570nJ.getClass();
        }
        com.android.tools.r8.graph.A4 a42 = null;
        if (enumC8071kK.e()) {
            C8570nJ c8570nJ2 = this.f43916c;
            c8570nJ2.getClass();
            if (c8570nJ2.a(C2.L)) {
                if (!z10 && cVar.d().e0()) {
                    throw new AssertionError();
                }
                com.android.tools.r8.graph.E0 e02 = cVar.f37020b;
                while (e02 != null && !e02.f0()) {
                    e02 = this.f43915b.g(e02.a1());
                }
                if (e02 == null) {
                    if (!f43913d && !cVar.d().isInterface()) {
                        throw new AssertionError();
                    }
                } else {
                    C4725u2 G10 = e02.G();
                    while (G10 != null) {
                        if (!G2.a(G10, this.f43915b)) {
                            com.android.tools.r8.graph.M2 a11 = a(cVar.d(), this.f43915b, h02.getReference(), a22.s0(), new BiFunction() {
                                @Override
                                public final Object apply(Object obj, Object obj2) {
                                    return ((com.android.tools.r8.graph.E0) obj).b((com.android.tools.r8.graph.A2) obj2);
                                }
                            });
                            if (a11 == null || (g10 = this.f43915b.g(a11)) == null) {
                                return a22;
                            }
                            if (g10 == h02.getHolder()) {
                                return h02.getReference();
                            }
                            com.android.tools.r8.graph.A2 reference = h02.getReference();
                            C4724u1 b10 = this.f43915b.b();
                            reference.getClass();
                            return reference.a(g10.S(), b10);
                        }
                        if (!G10.i1()) {
                            break;
                        }
                        com.android.tools.r8.graph.E0 g11 = this.f43915b.g(G10.a1());
                        G10 = g11 != null ? g11.G() : null;
                    }
                }
            }
        }
        while (cVar != null) {
            com.android.tools.r8.graph.H0 a12 = com.android.tools.r8.graph.H0.a(cVar.f37021c, cVar.f37022d);
            Z4.c a13 = cVar.a(cVar.d());
            boolean z11 = false;
            if ((a12 instanceof com.android.tools.r8.graph.A4) && (this.f43916c.P() || !a12.getAccessFlags().k())) {
                com.android.tools.r8.graph.A4 a43 = (com.android.tools.r8.graph.A4) a12;
                if (a(a43, a13, abstractC8374m80) && (!a12.getHolder().isInterface() || !enumC8071kK.d())) {
                    C8570nJ c8570nJ3 = this.f43916c;
                    c8570nJ3.getClass();
                    if (!c8570nJ3.a(C2.L_MR1) || !a12.getAccessFlags().H() || !enumC8071kK.d()) {
                        com.android.tools.r8.androidapi.a aVar = this.f43914a;
                        C8570nJ c8570nJ4 = this.f43916c;
                        if (!aVar.a()) {
                            if (!G2.f40376a && c8570nJ4.a().f40654a) {
                                throw new AssertionError();
                            }
                        } else {
                            if (!G2.f40376a && !c8570nJ4.a().f40654a) {
                                throw new AssertionError();
                            }
                            com.android.tools.r8.graph.A2 reference2 = a43.getReference();
                            int i10 = com.android.tools.r8.androidapi.f.f35602a;
                            com.android.tools.r8.androidapi.h hVar = com.android.tools.r8.androidapi.h.f35609b;
                            com.android.tools.r8.androidapi.f a14 = aVar.a(reference2, hVar);
                            if (!a14.U()) {
                                com.android.tools.r8.androidapi.f a15 = aVar.a(a22, hVar);
                                if (!a15.U()) {
                                    d10 = a15.a(a14).b(c8570nJ4.z()).d();
                                    if (d10) {
                                        z11 = true;
                                    }
                                }
                            }
                        }
                        d10 = false;
                        if (d10) {
                        }
                    }
                }
            }
            if (z11) {
                a42 = a12.Z();
            }
            if (!this.f43915b.f38412e.f57488a.containsKey(a12.getReference())) {
                com.android.tools.r8.graph.E0 holder = a12.getHolder();
                if (!h02.d().J0() || holder.isInterface() || holder.a1() == null) {
                    break;
                }
                cVar = ((C11245i) this.f43915b.f()).a(holder.a1(), a22).o();
            } else {
                break;
            }
        }
        return (a22.s0().E0() || (a10 = a(h02.getHolder(), this.f43915b, h02.getReference(), a22.s0(), new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((com.android.tools.r8.graph.E0) obj).b((com.android.tools.r8.graph.A2) obj2);
            }
        })) == null) ? a22 : a22.a(a10, this.f43915b.b());
    }

    public final boolean a(Z4.c cVar, com.android.tools.r8.graph.H5 h52) {
        C4798y c4798y = this.f43915b;
        return AbstractC4420e.a(cVar.c(), cVar.a(), h52, c4798y, (C4514j) c4798y.f()).d();
    }

    public static com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.E0 e02, InterfaceC4403d1 interfaceC4403d1, AbstractC4744v2 abstractC4744v2, com.android.tools.r8.graph.M2 m22, BiFunction biFunction) {
        if (e02.isInterface()) {
            return a(interfaceC4403d1, abstractC4744v2, m22, biFunction);
        }
        com.android.tools.r8.graph.E0 a10 = interfaceC4403d1.a(m22);
        while (a10 != null && a10.e0()) {
            a10 = interfaceC4403d1.a(a10.d0(), a10.a1());
        }
        if (a10 != null) {
            return a10.getType();
        }
        return null;
    }

    public static com.android.tools.r8.graph.M2 a(InterfaceC4403d1 interfaceC4403d1, AbstractC4744v2 abstractC4744v2, com.android.tools.r8.graph.M2 m22, BiFunction biFunction) {
        com.android.tools.r8.graph.M2 a10;
        com.android.tools.r8.graph.E0 g10 = interfaceC4403d1.g(m22);
        if (g10 == null) {
            return null;
        }
        if (g10.e0() || ((AbstractC4479h1) biFunction.apply(g10, abstractC4744v2)) == null) {
            if (g10.i1() && (a10 = a(interfaceC4403d1, abstractC4744v2, g10.a1(), biFunction)) != null) {
                if (!g10.v1()) {
                    return a10;
                }
            } else {
                Iterator<com.android.tools.r8.graph.M2> it = g10.R0().iterator();
                while (it.hasNext()) {
                    com.android.tools.r8.graph.M2 a11 = a(interfaceC4403d1, abstractC4744v2, it.next(), biFunction);
                    if (a11 != null) {
                        if (!g10.v1()) {
                            return a11;
                        }
                    }
                }
                return null;
            }
        }
        return m22;
    }
}
