package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4347a2;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.UnaryOperator;

public final class C7319fq0 extends AbstractC5055Do0 {

    public static final boolean f48118e;

    public static final boolean f48119f = true;

    public final C4798y f48120a;

    public final C4724u1 f48121b;

    public final boolean f48122c;

    public final AbstractC8552nC f48123d;

    static {
        f48118e = System.getProperty("com.android.tools.r8.debug.StringMethodOptimizer") != null;
    }

    public C7319fq0(C4798y c4798y) {
        this.f48120a = c4798y;
        C4724u1 b10 = c4798y.b();
        this.f48121b = b10;
        C8570nJ E10 = c4798y.E();
        this.f48122c = c4798y.m() && !E10.f50690i1 && E10.T() && E10.W();
        this.f48123d = new C8051kC(4).a(b10.f37828B4.f36632d, b10.f38174v4.f37655g).a(b10.f38198y4.f36263d, b10.f38174v4.f37655g).a(b10.f37880I4.f37575d, b10.f38174v4.f37655g).a(b10.f37836C4.f37173d, b10.f38174v4.f37658j).a(b10.f38206z4.f36285d, b10.f38174v4.f37650b).a(b10.f38190x4.f38220f, b10.f38174v4.f37649a).a(b10.f37820A4.f36523d, b10.f38174v4.f37657i).a(b10.f37901L4.f36437e, b10.f38174v4.f37656h).a();
    }

    public static com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.L2 l22) {
        return l22;
    }

    public final com.android.tools.r8.graph.L2 b(com.android.tools.r8.graph.L2 l22) {
        C4724u1 c4724u1 = this.f48121b;
        String l23 = l22.toString();
        String trim = l23.trim();
        return trim.equals(l23) ? l22 : c4724u1.b(trim);
    }

    @Override
    public final com.android.tools.r8.graph.M2 getType() {
        return this.f48121b.f38052g2;
    }

    public static void a(C7215fB c7215fB, String str) {
        System.err.println(str + " method=" + ((Object) c7215fB.j().getReference()));
    }

    public static void a(C7215fB c7215fB, EE ee2, VJ vj2, InterfaceC6270Yp0 interfaceC6270Yp0) {
        com.android.tools.r8.graph.L2 q10 = vj2.b(0).q();
        if (q10 != null && vj2.b(1).J() && vj2.b(2).J()) {
            ee2.a(c7215fB, interfaceC6270Yp0.a(q10, vj2.b(1).o(), vj2.b(2).o()));
        }
    }

    public static void a(C7215fB c7215fB, EE ee2, VJ vj2, BiPredicate biPredicate) {
        com.android.tools.r8.graph.L2 q10 = vj2.b(0).q();
        com.android.tools.r8.graph.L2 q11 = vj2.b(1).q();
        if (q10 == null || q11 == null) {
            return;
        }
        ee2.a(c7215fB, biPredicate.test(q10, q11));
    }

    public static void a(C7215fB c7215fB, EE ee2, VJ vj2, InterfaceC6985dq0 interfaceC6985dq0) {
        com.android.tools.r8.graph.L2 q10 = vj2.b(0).q();
        com.android.tools.r8.graph.L2 q11 = vj2.b(1).q();
        if (q10 == null || q11 == null) {
            return;
        }
        ee2.a(c7215fB, interfaceC6985dq0.a(q10, q11));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final EE a(C7215fB c7215fB, Z5 z52, EE ee2, VJ vj2, com.android.tools.r8.graph.H0 h02, C10696a c10696a, Set set) {
        com.android.tools.r8.graph.A2 reference = h02.getReference();
        C4724u1.d dVar = this.f48121b.f37887J4;
        char c10 = (char) h02.getReference().t0().f36562f[0];
        if (c10 != 'c') {
            if (c10 != 'l') {
                if (c10 != 'v') {
                    if (c10 != 'e') {
                        if (c10 != 'f') {
                            if (c10 != 'h') {
                                if (c10 != 'i') {
                                    if (c10 != 's') {
                                        if (c10 == 't') {
                                            if (reference.a(dVar.f38237B)) {
                                                UnaryOperator unaryOperator = new UnaryOperator() {
                                                    @Override
                                                    public final Object apply(Object obj) {
                                                        return C7319fq0.a((com.android.tools.r8.graph.L2) obj);
                                                    }
                                                };
                                                com.android.tools.r8.graph.L2 q10 = vj2.b(0).q();
                                                if (q10 != null) {
                                                    a(c7215fB, ee2, vj2, c10696a, (com.android.tools.r8.graph.L2) unaryOperator.apply(q10));
                                                    return ee2;
                                                }
                                            } else if (reference.a(dVar.f38238C)) {
                                                UnaryOperator unaryOperator2 = new UnaryOperator() {
                                                    @Override
                                                    public final Object apply(Object obj) {
                                                        return C7319fq0.this.b((com.android.tools.r8.graph.L2) obj);
                                                    }
                                                };
                                                com.android.tools.r8.graph.L2 q11 = vj2.b(0).q();
                                                if (q11 != null) {
                                                    a(c7215fB, ee2, vj2, c10696a, (com.android.tools.r8.graph.L2) unaryOperator2.apply(q11));
                                                    return ee2;
                                                }
                                            }
                                        }
                                    } else {
                                        if (reference.a(dVar.f38245g)) {
                                            a(c7215fB, ee2, vj2, new BiPredicate() {
                                                @Override
                                                public final boolean test(Object obj, Object obj2) {
                                                    return ((com.android.tools.r8.graph.L2) obj).j((com.android.tools.r8.graph.L2) obj2);
                                                }
                                            });
                                            return ee2;
                                        }
                                        if (reference.a(dVar.f38246h)) {
                                            InterfaceC6653bq0 interfaceC6653bq0 = new InterfaceC6653bq0() {
                                                @Override
                                                public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.L2 l22, int i10) {
                                                    return C7319fq0.this.a(l22, i10);
                                                }
                                            };
                                            com.android.tools.r8.graph.L2 q12 = vj2.b(0).q();
                                            if (q12 != null && vj2.b(1).J()) {
                                                a(c7215fB, ee2, vj2, c10696a, interfaceC6653bq0.a(q12, vj2.b(1).o()));
                                                return ee2;
                                            }
                                        } else if (reference.a(dVar.f38247i)) {
                                            InterfaceC6327Zp0 interfaceC6327Zp0 = new InterfaceC6327Zp0() {
                                                @Override
                                                public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.L2 l22, int i10, int i11) {
                                                    return C7319fq0.this.a(l22, i10, i11);
                                                }
                                            };
                                            com.android.tools.r8.graph.L2 q13 = vj2.b(0).q();
                                            if (q13 != null && vj2.b(1).J() && vj2.b(2).J()) {
                                                a(c7215fB, ee2, vj2, c10696a, interfaceC6327Zp0.a(q13, vj2.b(1).o(), vj2.b(2).o()));
                                                return ee2;
                                            }
                                        }
                                    }
                                } else if (reference.a(dVar.f38252n)) {
                                    InterfaceC6486aq0 interfaceC6486aq0 = new InterfaceC6486aq0() {
                                        @Override
                                        public final int a(com.android.tools.r8.graph.L2 l22, int i10) {
                                            return l22.l(i10);
                                        }
                                    };
                                    com.android.tools.r8.graph.L2 q14 = vj2.b(0).q();
                                    if (q14 != null && vj2.b(1).J()) {
                                        ee2.a(c7215fB, interfaceC6486aq0.a(q14, vj2.b(1).o()));
                                        return ee2;
                                    }
                                } else {
                                    if (reference.a(dVar.f38253o)) {
                                        a(c7215fB, ee2, vj2, new InterfaceC6270Yp0() {
                                            @Override
                                            public final int a(com.android.tools.r8.graph.L2 l22, int i10, int i11) {
                                                return l22.f(i10, i11);
                                            }
                                        });
                                        return ee2;
                                    }
                                    if (reference.a(dVar.f38254p)) {
                                        a(c7215fB, ee2, vj2, new InterfaceC6985dq0() {
                                            @Override
                                            public final int a(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.L2 l23) {
                                                return l22.f(l23);
                                            }
                                        });
                                        return ee2;
                                    }
                                    if (reference.a(dVar.f38255q)) {
                                        InterfaceC6819cq0 interfaceC6819cq0 = new InterfaceC6819cq0() {
                                            @Override
                                            public final int a(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.L2 l23, int i10) {
                                                return l22.a(l23, i10);
                                            }
                                        };
                                        com.android.tools.r8.graph.L2 q15 = vj2.b(0).q();
                                        com.android.tools.r8.graph.L2 q16 = vj2.b(1).q();
                                        if (q15 != null && q16 != null && vj2.b(2).J()) {
                                            ee2.a(c7215fB, interfaceC6819cq0.a(q15, q16, vj2.b(2).o()));
                                            return ee2;
                                        }
                                    } else if (reference.a(dVar.f38240b)) {
                                        Predicate predicate = new Predicate() {
                                            @Override
                                            public final boolean test(Object obj) {
                                                return ((com.android.tools.r8.graph.L2) obj).isEmpty();
                                            }
                                        };
                                        com.android.tools.r8.graph.L2 q17 = vj2.b(0).q();
                                        if (q17 != null) {
                                            ee2.a(c7215fB, predicate.test(q17));
                                            return ee2;
                                        }
                                    }
                                }
                            } else if (reference.a(dVar.f38262x)) {
                                InterfaceC7152eq0 interfaceC7152eq0 = new InterfaceC7152eq0() {
                                    @Override
                                    public final int a(com.android.tools.r8.graph.L2 l22) {
                                        return l22.n0();
                                    }
                                };
                                com.android.tools.r8.graph.L2 q18 = vj2.b(0).q();
                                if (q18 != null) {
                                    ee2.a(c7215fB, interfaceC7152eq0.a(q18));
                                    return ee2;
                                }
                            }
                        } else if (reference.a(dVar.f38263y) || reference.a(dVar.f38264z)) {
                            return a(c7215fB, ee2, z52, vj2.i0(), c10696a);
                        }
                    } else {
                        if (reference.a(dVar.f38248j)) {
                            a(c7215fB, ee2, vj2, new BiPredicate() {
                                @Override
                                public final boolean test(Object obj, Object obj2) {
                                    return ((com.android.tools.r8.graph.L2) obj).d((com.android.tools.r8.graph.L2) obj2);
                                }
                            });
                            return ee2;
                        }
                        if (reference.a(dVar.f38249k)) {
                            WJ f02 = vj2.f0();
                            if (this.f48120a.f().i()) {
                                com.android.tools.r8.graph.H5 j10 = c7215fB.j();
                                C10340xw0 i10 = f02.C2().i();
                                C10340xw0 i11 = f02.b(1).i();
                                if (a(i10, i11, j10) || a(i11, i10, j10)) {
                                    ee2.a(c7215fB, false);
                                    return ee2;
                                }
                            }
                            a(c7215fB, ee2, vj2, new BiPredicate() {
                                @Override
                                public final boolean test(Object obj, Object obj2) {
                                    return ((com.android.tools.r8.graph.L2) obj).g((com.android.tools.r8.graph.L2) obj2);
                                }
                            });
                            return ee2;
                        }
                        if (reference.a(dVar.f38250l)) {
                            a(c7215fB, ee2, vj2, new BiPredicate() {
                                @Override
                                public final boolean test(Object obj, Object obj2) {
                                    return ((com.android.tools.r8.graph.L2) obj).e((com.android.tools.r8.graph.L2) obj2);
                                }
                            });
                            return ee2;
                        }
                    }
                } else if (reference.a(dVar.f38236A)) {
                    C7405gK i02 = vj2.i0();
                    C10340xw0 b10 = i02.b(0);
                    if (b10.c(this.f48120a)) {
                        ee2.a(this.f48120a, c7215fB, this.f48121b.b("null"), c10696a);
                        return ee2;
                    }
                    AbstractC8999pu0 u10 = b10.u();
                    if (u10.t() && u10.a(this.f48121b.f38052g2)) {
                        if (i02.e1()) {
                            i02.d().a(b10, c10696a);
                        }
                        ee2.i();
                        return ee2;
                    }
                }
            } else if (reference.a(dVar.f38256r)) {
                InterfaceC6486aq0 interfaceC6486aq02 = new InterfaceC6486aq0() {
                    @Override
                    public final int a(com.android.tools.r8.graph.L2 l22, int i12) {
                        return l22.m(i12);
                    }
                };
                com.android.tools.r8.graph.L2 q19 = vj2.b(0).q();
                if (q19 != null && vj2.b(1).J()) {
                    ee2.a(c7215fB, interfaceC6486aq02.a(q19, vj2.b(1).o()));
                    return ee2;
                }
            } else {
                if (reference.a(dVar.f38257s)) {
                    a(c7215fB, ee2, vj2, new InterfaceC6270Yp0() {
                        @Override
                        public final int a(com.android.tools.r8.graph.L2 l22, int i12, int i13) {
                            return l22.g(i12, i13);
                        }
                    });
                    return ee2;
                }
                if (reference.a(dVar.f38258t)) {
                    a(c7215fB, ee2, vj2, new InterfaceC6985dq0() {
                        @Override
                        public final int a(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.L2 l23) {
                            return l22.i(l23);
                        }
                    });
                    return ee2;
                }
                if (reference.a(dVar.f38259u)) {
                    InterfaceC6819cq0 interfaceC6819cq02 = new InterfaceC6819cq0() {
                        @Override
                        public final int a(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.L2 l23, int i12) {
                            return l22.b(l23, i12);
                        }
                    };
                    com.android.tools.r8.graph.L2 q20 = vj2.b(0).q();
                    com.android.tools.r8.graph.L2 q21 = vj2.b(1).q();
                    if (q20 != null && q21 != null && vj2.b(2).J()) {
                        ee2.a(c7215fB, interfaceC6819cq02.a(q20, q21, vj2.b(2).o()));
                        return ee2;
                    }
                } else if (reference.a(dVar.f38241c)) {
                    InterfaceC7152eq0 interfaceC7152eq02 = new InterfaceC7152eq0() {
                        @Override
                        public final int a(com.android.tools.r8.graph.L2 l22) {
                            return l22.o0();
                        }
                    };
                    com.android.tools.r8.graph.L2 q22 = vj2.b(0).q();
                    if (q22 != null) {
                        ee2.a(c7215fB, interfaceC7152eq02.a(q22));
                        return ee2;
                    }
                }
            }
        } else {
            if (reference.a(dVar.f38260v)) {
                a(c7215fB, ee2, vj2, new InterfaceC6985dq0() {
                    @Override
                    public final int a(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.L2 l23) {
                        return l22.h(l23);
                    }
                });
                return ee2;
            }
            if (reference.a(dVar.f38261w)) {
                a(c7215fB, ee2, vj2, new InterfaceC6985dq0() {
                    @Override
                    public final int a(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.L2 l23) {
                        return l22.b(l23);
                    }
                });
                return ee2;
            }
            if (reference.a(dVar.f38244f)) {
                a(c7215fB, ee2, vj2, new BiPredicate() {
                    @Override
                    public final boolean test(Object obj, Object obj2) {
                        return ((com.android.tools.r8.graph.L2) obj).c((com.android.tools.r8.graph.L2) obj2);
                    }
                });
                return ee2;
            }
            if (reference.a(dVar.f38251m)) {
                a(c7215fB, ee2, vj2, new BiPredicate() {
                    @Override
                    public final boolean test(Object obj, Object obj2) {
                        return ((com.android.tools.r8.graph.L2) obj).g((com.android.tools.r8.graph.L2) obj2);
                    }
                });
            }
        }
        return ee2;
    }

    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.L2 l22, int i10) {
        if (i10 < 0 || i10 > l22.f36561e) {
            return null;
        }
        C4724u1 c4724u1 = this.f48121b;
        String l23 = l22.toString();
        String substring = l23.substring(i10);
        return substring.equals(l23) ? l22 : c4724u1.b(substring);
    }

    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.L2 l22, int i10, int i11) {
        if (i10 < 0 || i10 > i11 || i11 > l22.f36561e) {
            return null;
        }
        C4724u1 c4724u1 = this.f48121b;
        String l23 = l22.toString();
        String substring = l23.substring(i10, i11);
        return substring.equals(l23) ? l22 : c4724u1.b(substring);
    }

    public final void a(C7215fB c7215fB, EE ee2, VJ vj2, final C10696a c10696a, com.android.tools.r8.graph.L2 l22) {
        if (!f48119f && !vj2.b(0).L()) {
            throw new AssertionError();
        }
        if (l22 == null) {
            return;
        }
        if (l22.g(vj2.b(0).q())) {
            if (vj2.e1()) {
                vj2.d().a(vj2.b(0), c10696a);
                vj2.b(0).a0().forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C7319fq0.a(C10696a.this, (C7201f60) obj);
                    }
                });
            }
            ee2.i();
            return;
        }
        ee2.a(this.f48120a, c7215fB, l22, c10696a);
    }

    public static void a(C10696a c10696a, C7201f60 c7201f60) {
        c7201f60.getClass();
        c7201f60.a((C6382aB) null, c10696a, C6628bi.b(), EnumC6871d70.f47287c);
    }

    public final boolean a(C10340xw0 c10340xw0) {
        if (c10340xw0.c(this.f48120a)) {
            return true;
        }
        if (!c10340xw0.d(new J21())) {
            return false;
        }
        C4554l1 field = c10340xw0.f53886c.K0().getField();
        C4347a2 c4347a2 = this.f48121b.f38127p5;
        return field.a(c4347a2.f37041a) || field.a(c4347a2.f37042b) || field.a(c4347a2.f37043c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x0146, code lost:
    
        if (r8 != false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0172, code lost:
    
        if (r8.a(r16.f48121b.f38020c2) == false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0184, code lost:
    
        if (r8.a(r16.f48121b.f37968V1) != false) goto L87;
     */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0332 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final EE a(C7215fB c7215fB, EE ee2, Z5 z52, C7405gK c7405gK, C10696a c10696a) {
        List b10;
        C10340xw0 c10340xw0;
        com.android.tools.r8.graph.A2 a22;
        com.android.tools.r8.graph.A2 a23;
        boolean z10;
        C10340xw0 c10340xw02;
        boolean z11;
        com.android.tools.r8.graph.E0 g10;
        boolean z12;
        if (this.f48122c) {
            boolean a10 = c7405gK.B2().a(this.f48121b.f37887J4.f38264z);
            C10340xw0 i10 = c7405gK.b(a10 ? 1 : 0).i();
            if (!i10.L()) {
                if (f48118e) {
                    a(c7215fB, "optimizeFormat: Non-Const Spec");
                    return ee2;
                }
            } else {
                AbstractC10561zE r10 = i10.r();
                String l22 = r10.K().u2().toString();
                boolean z13 = true;
                boolean z14 = a10 && a(c7405gK.b(0).i());
                C6213Xp0 a11 = C6213Xp0.a(l22, z14);
                if (a11 == null) {
                    if (f48118e) {
                        a(c7215fB, "optimizeFormat: Unsupported format with allowNumbers=" + z14);
                        return ee2;
                    }
                } else {
                    C10340xw0 b11 = c7405gK.b((a10 ? 1 : 0) + 1);
                    if (b11.c(this.f48120a)) {
                        b10 = Collections.EMPTY_LIST;
                    } else {
                        C5650Nw0 a12 = AbstractC5708Ow0.a(b11, c7405gK);
                        if (a12 != null) {
                            b10 = a12.b();
                        }
                    }
                    int size = b10.size();
                    int i11 = a11.f45831b;
                    if (size >= i11) {
                        if (i11 == 0) {
                            ee2.a(this.f48120a, c7215fB, this.f48121b.b(((C6156Wp0) a11.f45830a.get(0)).f45548a), c10696a);
                            if (f48118e) {
                                a(c7215fB, "String.format(): Optimized no placeholders");
                                return ee2;
                            }
                        } else {
                            ArrayList arrayList = a11.f45830a;
                            int size2 = arrayList.size();
                            int i12 = 0;
                            while (i12 < size2) {
                                Object obj = arrayList.get(i12);
                                i12++;
                                C6156Wp0 c6156Wp0 = (C6156Wp0) obj;
                                if (!c6156Wp0.a() || (c10340xw02 = (C10340xw0) b10.get(c6156Wp0.f45549b)) == null || c10340xw02.c(this.f48120a)) {
                                    z10 = z13;
                                } else {
                                    char c10 = c6156Wp0.f45550c;
                                    AbstractC8999pu0 u10 = c10340xw02.u();
                                    if (c10 == 'b') {
                                        z10 = true;
                                        if (u10.t()) {
                                        }
                                        z11 = false;
                                    } else if (c10 != 'd') {
                                        if (!f48119f && c10 != 's') {
                                            throw new AssertionError();
                                        }
                                        C4724u1 c4724u1 = this.f48121b;
                                        u10.getClass();
                                        if (u10.a(c4724u1.f38052g2)) {
                                            z10 = true;
                                        } else {
                                            C6949de b12 = u10.b();
                                            if (b12 == null || (g10 = this.f48120a.g(b12.E())) == null || !g10.p1()) {
                                                z10 = true;
                                                z12 = false;
                                            } else {
                                                z10 = true;
                                                z12 = !u10.b(this.f48121b.f37935Q3.b(this.f48120a), this.f48120a);
                                            }
                                        }
                                        z11 = z10;
                                    } else {
                                        z10 = true;
                                        if (!u10.a(this.f48121b.f38004a2)) {
                                            if (!u10.a(this.f48121b.f38012b2)) {
                                                if (!u10.a(this.f48121b.f37975W1)) {
                                                }
                                            }
                                        }
                                        z11 = z10;
                                    }
                                    if (!z11) {
                                        if (f48118e) {
                                            a(c7215fB, String.format("String.format(): Unsupported param %s type %%%s: %s", Integer.valueOf(c6156Wp0.f45549b), Character.valueOf(c6156Wp0.f45550c), c10340xw02.u()));
                                        }
                                    }
                                }
                                z13 = z10;
                            }
                            ArrayList arrayList2 = new ArrayList();
                            boolean z15 = C9603tZ.f52626m;
                            C9436sZ c9436sZ = new C9436sZ();
                            c9436sZ.f52377d = this.f48121b.f37857F2;
                            c9436sZ.f52322b = c7405gK.getPosition();
                            com.android.tools.r8.graph.M2 m22 = this.f48121b.f37857F2;
                            C4798y c4798y = this.f48120a;
                            C8854p10 b13 = C8854p10.b();
                            m22.getClass();
                            AbstractC8999pu0 a13 = AbstractC8999pu0.a(m22, b13, (C4798y<?>) c4798y);
                            C4515j0 c4515j0 = null;
                            c9436sZ.f52321a = c7215fB.a(a13, (C4515j0) null);
                            C9436sZ c9436sZ2 = (C9436sZ) c9436sZ.a();
                            C9603tZ c9603tZ = new C9603tZ(c9436sZ2.f52377d, c9436sZ2.f52321a);
                            B60 b60 = c9436sZ2.f52322b;
                            if (b60 != null) {
                                c9603tZ.b(b60);
                            }
                            C10340xw0 d10 = c9603tZ.d();
                            arrayList2.add(c9603tZ);
                            boolean z16 = QJ.f43538p;
                            PJ pj2 = new PJ();
                            pj2.f44718d = this.f48121b.f38174v4.f37663o;
                            PJ pj3 = (PJ) pj2.a(d10);
                            pj3.f52322b = c7405gK.getPosition();
                            arrayList2.add(pj3.c());
                            ArrayList arrayList3 = a11.f45830a;
                            int size3 = arrayList3.size();
                            int i13 = 0;
                            while (i13 < size3) {
                                Object obj2 = arrayList3.get(i13);
                                i13++;
                                C6156Wp0 c6156Wp02 = (C6156Wp0) obj2;
                                if (c6156Wp02.f45548a != null) {
                                    C9793uh c9793uh = new C9793uh();
                                    c9793uh.f52917d = this.f48121b.b(c6156Wp02.f45548a);
                                    c9793uh.f52322b = r10.getPosition();
                                    c9793uh.f52321a = c7215fB.a(AbstractC8999pu0.a((C4798y<?>) this.f48120a, C8854p10.b()), c4515j0);
                                    C9960vh c9960vh = new C9960vh(c9793uh.f52321a, c9793uh.f52917d);
                                    B60 b602 = c9793uh.f52322b;
                                    if (b602 != null) {
                                        c9960vh.b(b602);
                                    }
                                    arrayList2.add(c9960vh);
                                    c10340xw0 = c9960vh.d();
                                    a23 = this.f48121b.f38174v4.f37660l;
                                } else {
                                    c10340xw0 = (C10340xw0) b10.get(c6156Wp02.f45549b);
                                    if (c10340xw0 == null || c10340xw0.c(this.f48120a)) {
                                        C9793uh c9793uh2 = new C9793uh();
                                        c9793uh2.f52917d = this.f48121b.b(c6156Wp02.f45550c == 'b' ? "false" : "null");
                                        c9793uh2.f52322b = r10.getPosition();
                                        c9793uh2.f52321a = c7215fB.a(AbstractC8999pu0.a((C4798y<?>) this.f48120a, C8854p10.b()), (C4515j0) null);
                                        C9960vh c9960vh2 = new C9960vh(c9793uh2.f52321a, c9793uh2.f52917d);
                                        B60 b603 = c9793uh2.f52322b;
                                        if (b603 != null) {
                                            c9960vh2.b(b603);
                                        }
                                        arrayList2.add(c9960vh2);
                                        c10340xw0 = c9960vh2.d();
                                        a23 = this.f48121b.f38174v4.f37660l;
                                    } else {
                                        C10340xw0 i14 = c10340xw0.i();
                                        C7405gK i02 = i14.j() ? null : i14.f53886c.i0();
                                        if (i02 != null) {
                                            a23 = (com.android.tools.r8.graph.A2) this.f48123d.get(i02.B2());
                                            if (a23 != null) {
                                                c10340xw0 = i02.b(0);
                                                if (a23 != null) {
                                                    AbstractC8999pu0 u11 = c10340xw0.u();
                                                    C4724u1 c4724u12 = this.f48121b;
                                                    u11.getClass();
                                                    if (u11.a(c4724u12.f38052g2)) {
                                                        a23 = this.f48121b.f38174v4.f37660l;
                                                    } else {
                                                        a23 = this.f48121b.f38174v4.f37659k;
                                                    }
                                                }
                                                boolean z17 = C8405mK.f50258o;
                                                C8238lK c8238lK = new C8238lK();
                                                c8238lK.f44718d = a23;
                                                c8238lK.f52322b = c7405gK.getPosition();
                                                arrayList2.add(((C8238lK) c8238lK.a(Arrays.asList(d10, c10340xw0))).c());
                                                c4515j0 = null;
                                            } else {
                                                a22 = a23;
                                            }
                                        } else {
                                            a22 = null;
                                        }
                                        a23 = a22;
                                        if (a23 != null) {
                                        }
                                        boolean z172 = C8405mK.f50258o;
                                        C8238lK c8238lK2 = new C8238lK();
                                        c8238lK2.f44718d = a23;
                                        c8238lK2.f52322b = c7405gK.getPosition();
                                        arrayList2.add(((C8238lK) c8238lK2.a(Arrays.asList(d10, c10340xw0))).c());
                                        c4515j0 = null;
                                    }
                                }
                                boolean z1722 = C8405mK.f50258o;
                                C8238lK c8238lK22 = new C8238lK();
                                c8238lK22.f44718d = a23;
                                c8238lK22.f52322b = c7405gK.getPosition();
                                arrayList2.add(((C8238lK) c8238lK22.a(Arrays.asList(d10, c10340xw0))).c());
                                c4515j0 = null;
                            }
                            boolean z18 = C8405mK.f50258o;
                            C8238lK c8238lK3 = new C8238lK();
                            c8238lK3.f44718d = this.f48121b.f38174v4.f37666r;
                            c8238lK3.f52322b = c7405gK.getPosition();
                            C8238lK c8238lK4 = (C8238lK) c8238lK3.a(d10);
                            c8238lK4.f52321a = c7215fB.a(this.f48121b.f38052g2.b(this.f48120a), (C4515j0) null);
                            ee2.a(c8238lK4.c(), c10696a);
                            ee2.previous();
                            EE a14 = ee2.a(c7215fB, z52, arrayList2, this.f48120a.E());
                            if (f48118e) {
                                a(c7215fB, "String.format(): Optimized.");
                            }
                            return a14;
                        }
                    }
                }
            }
        }
        return ee2;
    }

    public final boolean a(C10340xw0 c10340xw0, C10340xw0 c10340xw02, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.H0 e10;
        if (!c10340xw0.j() && !c10340xw02.j()) {
            AbstractC10561zE abstractC10561zE = c10340xw0.f53886c;
            if (abstractC10561zE.T1() && (e10 = abstractC10561zE.k0().e(this.f48120a, h52)) != null && e10.getReference() == this.f48121b.f37922O4.f36323e) {
                AbstractC10561zE abstractC10561zE2 = c10340xw02.f53886c;
                abstractC10561zE2.getClass();
                if (!(abstractC10561zE2 instanceof C9820uq)) {
                    return false;
                }
                C9820uq O10 = c10340xw02.f53886c.O();
                com.android.tools.r8.graph.J2 j22 = O10.f52961l;
                j22.getClass();
                if ((j22 instanceof com.android.tools.r8.graph.M2) && this.f48120a.f().m().j(j22.o0()) && !O10.f52962m.d()) {
                    return true;
                }
            }
        }
        return false;
    }
}
