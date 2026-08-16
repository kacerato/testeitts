package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4554l1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.NoSuchElementException;
import java.util.OptionalInt;

public class C5256Hb0 {

    public static final boolean f40797c = true;

    public final C9106qa0 f40798a;

    public final C5485La0 f40799b;

    public C5256Hb0(C9106qa0 c9106qa0, C5485La0 c5485La0) {
        this.f40798a = c9106qa0;
        this.f40799b = c5485La0;
    }

    public static AbstractC4905Ba0 a(com.android.tools.r8.graph.H5 h52, C10340xw0 c10340xw0) {
        C10340xw0 i10 = c10340xw0.i();
        if (!i10.j()) {
            AbstractC10561zE abstractC10561zE = i10.f53886c;
            abstractC10561zE.getClass();
            if (abstractC10561zE instanceof C7957jh) {
                return new C5716Pa0(abstractC10561zE.F().f49303l);
            }
            if (abstractC10561zE.x1()) {
                C9960vh K10 = abstractC10561zE.K();
                C4460g1 a10 = h52.getHolder().a(K10.u2());
                if (a10 != null) {
                    return new HT(a10.getReference());
                }
                return new C6631bj(K10.u2(), h52.p());
            }
            if (abstractC10561zE instanceof C9820uq) {
                C9820uq O10 = abstractC10561zE.O();
                com.android.tools.r8.graph.J2 j22 = O10.f52961l;
                ZY zy = O10.f52962m;
                if (j22.p0()) {
                    zy.getClass();
                    if (zy instanceof C8169kw) {
                        C4554l1 l02 = j22.l0();
                        if (h52.getHolder().f36251k.f37700b.b(l02) != null) {
                            return new HT(l02);
                        }
                        return new C6631bj(l02.f38298g, h52.p());
                    }
                }
            } else if (abstractC10561zE.R1()) {
                C7405gK i02 = abstractC10561zE.i0();
                if (i02.f54321f.isEmpty()) {
                    return new C4963Ca0(i02.B2());
                }
            } else if (abstractC10561zE instanceof C5576Mo0) {
                return new C5021Da0(abstractC10561zE.K0().getField());
            }
        }
        throw new C5198Gb0();
    }

    public final C10340xw0 b() {
        throw new C5198Gb0();
    }

    public final C9773ua0 a(com.android.tools.r8.graph.H5 h52, C10340xw0 c10340xw0, C5650Nw0 c5650Nw0) {
        OptionalInt empty;
        Object obj;
        Object obj2;
        Object obj3;
        try {
            C9439sa0 c9439sa0 = new C9439sa0(h52);
            AbstractC6331Zr0<C5198Gb0> a10 = a(c10340xw0);
            int a11 = a10.a(new InterfaceC6492as0() {
                @Override
                public final int a() {
                    return C5256Hb0.this.a();
                }
            });
            c9439sa0.f52383b = a11;
            int a12 = a10.a(new InterfaceC6492as0() {
                @Override
                public final int a() {
                    return C5256Hb0.this.a();
                }
            });
            if (a12 == 0) {
                c9439sa0.a();
                c9439sa0.b();
                return new C9773ua0(h52, c9439sa0.f52383b, c9439sa0.f52384c, c9439sa0.f52385d, c9439sa0.f52386e);
            }
            int a13 = a10.a(new InterfaceC6492as0() {
                @Override
                public final int a() {
                    return C5256Hb0.this.a();
                }
            });
            int a14 = a10.a(new InterfaceC6492as0() {
                @Override
                public final int a() {
                    return C5256Hb0.this.a();
                }
            });
            for (int i10 = 4; i10 < 10; i10++) {
                a10.a(new InterfaceC6492as0() {
                    @Override
                    public final int a() {
                        return C5256Hb0.this.a();
                    }
                });
            }
            if (c5650Nw0 != null) {
                Iterator it = c5650Nw0.b().iterator();
                for (int i11 = 0; i11 < a13; i11++) {
                    InterfaceC7158es0 interfaceC7158es0 = new InterfaceC7158es0() {
                        @Override
                        public final Object get() {
                            return C5256Hb0.this.b();
                        }
                    };
                    if (it.hasNext()) {
                        obj2 = it.next();
                    } else {
                        obj2 = interfaceC7158es0.get();
                    }
                    AbstractC4905Ba0 a15 = a(h52, (C10340xw0) obj2);
                    if (a15.f()) {
                        InterfaceC7158es0 interfaceC7158es02 = new InterfaceC7158es0() {
                            @Override
                            public final Object get() {
                                return C5256Hb0.this.b();
                            }
                        };
                        if (it.hasNext()) {
                            obj3 = it.next();
                        } else {
                            obj3 = interfaceC7158es02.get();
                        }
                        AbstractC4905Ba0 a16 = a(h52, (C10340xw0) obj3);
                        if (a16.f()) {
                            c9439sa0.a(a15.b(), a16.b());
                        } else {
                            throw new C5198Gb0();
                        }
                    } else {
                        throw new C5198Gb0();
                    }
                }
                for (int i12 = 0; i12 < a14; i12++) {
                    InterfaceC7158es0 interfaceC7158es03 = new InterfaceC7158es0() {
                        @Override
                        public final Object get() {
                            return C5256Hb0.this.b();
                        }
                    };
                    if (it.hasNext()) {
                        obj = it.next();
                    } else {
                        obj = interfaceC7158es03.get();
                    }
                    AbstractC4905Ba0 a17 = a(h52, (C10340xw0) obj);
                    if (a17.f()) {
                        AbstractC8772oa0 b10 = a17.b();
                        if (c9439sa0.f52385d == null) {
                            c9439sa0.f52385d = new LinkedList();
                        }
                        c9439sa0.f52385d.add(b10);
                    } else {
                        throw new C5198Gb0();
                    }
                }
                boolean z10 = C5832Ra0.f43938a;
                boolean z11 = true;
                if ((a11 & 1) == 0) {
                    z11 = false;
                }
                for (int i13 = 0; i13 < a12; i13++) {
                    int a18 = a10.a(new InterfaceC6492as0() {
                        @Override
                        public final int a() {
                            return C5256Hb0.this.a();
                        }
                    });
                    int a19 = a10.a(new InterfaceC6492as0() {
                        @Override
                        public final int a() {
                            return C5256Hb0.this.a();
                        }
                    });
                    C8939pa0 a20 = this.f40798a.a(a19);
                    if (a20.e() == a19) {
                        if (a20.a(z11)) {
                            empty = OptionalInt.of(a10.a(new InterfaceC6492as0() {
                                @Override
                                public final int a() {
                                    return C5256Hb0.this.a();
                                }
                            }));
                        } else {
                            empty = OptionalInt.empty();
                        }
                        int a21 = a20.a(z11, this.f40798a);
                        try {
                            ArrayList arrayList = new ArrayList(a21);
                            ArrayList arrayList2 = new ArrayList(a21);
                            while (a21 > 0) {
                                if (it.hasNext()) {
                                    arrayList2.add(it.next());
                                    a21--;
                                } else {
                                    throw new NoSuchElementException();
                                }
                            }
                            int size = arrayList2.size();
                            int i14 = 0;
                            while (i14 < size) {
                                Object obj4 = arrayList2.get(i14);
                                i14++;
                                arrayList.add(a(h52, (C10340xw0) obj4));
                            }
                            c9439sa0.a(new C8605na0(a18, a20, empty, arrayList));
                        } catch (NoSuchElementException unused) {
                            throw new C5198Gb0();
                        }
                    } else {
                        throw new C5325If("Unexpected proto field type `" + a19 + "`");
                    }
                }
                if (!a10.a() && !it.hasNext()) {
                    c9439sa0.a();
                    c9439sa0.b();
                    return new C9773ua0(c9439sa0.f52382a, c9439sa0.f52383b, c9439sa0.f52384c, c9439sa0.f52385d, c9439sa0.f52386e);
                }
                throw new C5198Gb0();
            }
            throw new C5198Gb0();
        } catch (C5198Gb0 | C9606ta0 unused2) {
            if (f40797c) {
                return null;
            }
            throw new AssertionError();
        }
    }

    public final int a() {
        throw new C5198Gb0();
    }

    public static AbstractC6331Zr0<C5198Gb0> a(C10340xw0 c10340xw0) throws C5198Gb0 {
        if (!c10340xw0.j() && c10340xw0.f53886c.x1()) {
            return new C5140Fb0(c10340xw0.f53886c.K().u2());
        }
        throw new C5198Gb0();
    }
}
