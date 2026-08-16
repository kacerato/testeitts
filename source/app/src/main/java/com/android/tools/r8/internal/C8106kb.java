package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.function.BiFunction;

public class C8106kb extends W9 {

    public static final boolean f49674d = true;

    public final a f49675c;

    public enum a {
        Pop(87),
        Pop2(88),
        Dup(89),
        DupX1(90),
        DupX2(91),
        Dup2(92),
        Dup2X1(93),
        Dup2X2(94),
        Swap(95);


        public final int f49686b;

        a(int i10) {
            this.f49686b = i10;
        }
    }

    public C8106kb(a aVar) {
        this.f49675c = aVar;
    }

    public static H9 b(O8 o82, S60 s60, H9 h92, S60 s602) {
        return h92.a(o82, s60).a(o82, s602).a(o82, s60);
    }

    public static H9 c(O8 o82, H9 h92, S60 s60, S60 s602) {
        return h92.a(o82, s602).a(o82, s60);
    }

    public static H9 d(O8 o82, H9 h92, S60 s60, S60 s602) {
        return h92.a(o82, s60).a(o82, s602).a(o82, s60).a(o82, s602);
    }

    public static H9 e(O8 o82, H9 h92, S60 s60) {
        return h92.a(o82, s60).a(o82, s60);
    }

    @Override
    public final boolean A() {
        return false;
    }

    @Override
    public final int B() {
        return this.f49675c.f49686b;
    }

    public a V() {
        return this.f49675c;
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
    }

    @Override
    public final int y() {
        return 1;
    }

    public static C8106kb a(int i10) {
        switch (i10) {
            case 87:
                return new C8106kb(a.Pop);
            case 88:
                return new C8106kb(a.Pop2);
            case 89:
                return new C8106kb(a.Dup);
            case 90:
                return new C8106kb(a.DupX1);
            case 91:
                return new C8106kb(a.DupX2);
            case 92:
                return new C8106kb(a.Dup2);
            case 93:
                return new C8106kb(a.Dup2X1);
            case 94:
                return new C8106kb(a.Dup2X2);
            case 95:
                return new C8106kb(a.Swap);
            default:
                throw new C5417Jv0("Invalid opcode for CfStackInstruction");
        }
    }

    public static H9 b(O8 o82, S60 s60, H9 h92, S60 s602, S60 s603) {
        return h92.a(o82, s60).a(o82, s602).a(o82, s603).a(o82, s60);
    }

    public static H9 c(O8 o82, S60 s60, H9 h92, S60 s602) {
        return h92.a(o82, s60).a(o82, s602).a(o82, s60);
    }

    public static H9 b(O8 o82, S60 s60, S60 s602, H9 h92, S60 s603) {
        return h92.a(o82, s60).a(o82, s602).a(o82, s603).a(o82, s60).a(o82, s602);
    }

    public static void b(C6382aB c6382aB, C9775ub c9775ub, C8774ob c8774ob, C8774ob c8774ob2, C8774ob c8774ob3) {
        c9775ub.getClass();
        C8774ob a10 = c9775ub.a(c8774ob2.f51283d);
        C8774ob a11 = c9775ub.a(c8774ob.f51283d);
        C8774ob a12 = c9775ub.a(c8774ob3.f51283d);
        C8774ob a13 = c9775ub.a(c8774ob2.f51283d);
        C8774ob a14 = c9775ub.a(c8774ob.f51283d);
        EnumC5477Kw0 enumC5477Kw0 = c8774ob.f51281b;
        int i10 = a14.f51280a;
        int i11 = c8774ob.f51280a;
        c6382aB.getClass();
        c6382aB.a(EnumC5592Mw0.a(enumC5477Kw0), i10, i11);
        EnumC5477Kw0 enumC5477Kw02 = c8774ob2.f51281b;
        c6382aB.a(EnumC5592Mw0.a(enumC5477Kw02), a13.f51280a, c8774ob2.f51280a);
        EnumC5477Kw0 enumC5477Kw03 = c8774ob3.f51281b;
        c6382aB.a(EnumC5592Mw0.a(enumC5477Kw03), a12.f51280a, c8774ob3.f51280a);
        EnumC5477Kw0 enumC5477Kw04 = c8774ob.f51281b;
        c6382aB.a(EnumC5592Mw0.a(enumC5477Kw04), a11.f51280a, a14.f51280a);
        EnumC5477Kw0 enumC5477Kw05 = c8774ob2.f51281b;
        c6382aB.a(EnumC5592Mw0.a(enumC5477Kw05), a10.f51280a, a13.f51280a);
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        com.android.tools.r8.graph.O.a(this, w92);
        return 0;
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.a(this.f49675c.f49686b);
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        switch (AbstractC7939jb.f49272a[this.f49675c.ordinal()]) {
            case 1:
                C8774ob a10 = c9775ub.a();
                if (!f49674d && a10.f51281b.b()) {
                    throw new AssertionError((Object) "Expected stack type to be single width");
                }
                return;
            case 2:
                if (c9775ub.a().f51281b.b()) {
                    return;
                }
                C8774ob a11 = c9775ub.a();
                if (!f49674d && a11.f51281b.b()) {
                    throw new AssertionError();
                }
                return;
            case 3:
                C8774ob c10 = c9775ub.f52885a.c();
                if (!f49674d && c10.f51281b.b()) {
                    throw new AssertionError();
                }
                EnumC5477Kw0 enumC5477Kw0 = c10.f51281b;
                int i10 = c9775ub.a(c10.f51283d).f51280a;
                int i11 = c10.f51280a;
                c6382aB.getClass();
                c6382aB.a(EnumC5592Mw0.a(enumC5477Kw0), i10, i11);
                return;
            case 4:
                C8774ob a12 = c9775ub.a();
                C8774ob a13 = c9775ub.a();
                boolean z10 = f49674d;
                if (!z10 && a12.f51281b.b()) {
                    throw new AssertionError();
                }
                if (!z10 && a13.f51281b.b()) {
                    throw new AssertionError();
                }
                a(c6382aB, c9775ub, a12, a13);
                return;
            case 5:
                C8774ob a14 = c9775ub.a();
                C8774ob a15 = c9775ub.a();
                boolean z11 = f49674d;
                if (!z11 && a14.f51281b.b()) {
                    throw new AssertionError();
                }
                if (a15.f51281b.b()) {
                    a(c6382aB, c9775ub, a14, a15);
                    return;
                }
                C8774ob a16 = c9775ub.a();
                if (!z11 && a16.f51281b.b()) {
                    throw new AssertionError();
                }
                a(c6382aB, c9775ub, a14, a15, a16);
                return;
            case 6:
                C8774ob c11 = c9775ub.f52885a.c();
                if (c11.f51281b.b()) {
                    EnumC5477Kw0 enumC5477Kw02 = c11.f51281b;
                    int i12 = c9775ub.a(c11.f51283d).f51280a;
                    int i13 = c11.f51280a;
                    c6382aB.getClass();
                    c6382aB.a(EnumC5592Mw0.a(enumC5477Kw02), i12, i13);
                    return;
                }
                C8774ob b10 = c9775ub.f52885a.b(r0.d() - 2);
                EnumC5477Kw0 enumC5477Kw03 = b10.f51281b;
                int i14 = c9775ub.a(b10.f51283d).f51280a;
                int i15 = b10.f51280a;
                c6382aB.getClass();
                c6382aB.a(EnumC5592Mw0.a(enumC5477Kw03), i14, i15);
                c6382aB.a(EnumC5592Mw0.a(c11.f51281b), c9775ub.a(c11.f51283d).f51280a, c11.f51280a);
                return;
            case 7:
                C8774ob a17 = c9775ub.a();
                C8774ob a18 = c9775ub.a();
                boolean z12 = f49674d;
                if (!z12 && a18.f51281b.b()) {
                    throw new AssertionError();
                }
                if (a17.f51281b.b()) {
                    a(c6382aB, c9775ub, a17, a18);
                    return;
                }
                C8774ob a19 = c9775ub.a();
                if (!z12 && a19.f51281b.b()) {
                    throw new AssertionError();
                }
                b(c6382aB, c9775ub, a17, a18, a19);
                return;
            case 8:
                C8774ob a20 = c9775ub.a();
                C8774ob a21 = c9775ub.a();
                if (a20.f51281b.b() && a21.f51281b.b()) {
                    a(c6382aB, c9775ub, a20, a21);
                    return;
                }
                C8774ob a22 = c9775ub.a();
                if (a20.f51281b.b()) {
                    if (!a22.f51281b.b()) {
                        a(c6382aB, c9775ub, a20, a21, a22);
                        return;
                    }
                    throw new C5325If("Invalid dup2x2 with types: wide, single, wide");
                }
                if (!a21.f51281b.b()) {
                    if (a22.f51281b.b()) {
                        b(c6382aB, c9775ub, a20, a21, a22);
                        return;
                    }
                    C8774ob a23 = c9775ub.a();
                    if (!a23.f51281b.b()) {
                        C8774ob a24 = c9775ub.a(a21.f51283d);
                        C8774ob a25 = c9775ub.a(a20.f51283d);
                        C8774ob a26 = c9775ub.a(a23.f51283d);
                        C8774ob a27 = c9775ub.a(a22.f51283d);
                        C8774ob a28 = c9775ub.a(a21.f51283d);
                        C8774ob a29 = c9775ub.a(a20.f51283d);
                        EnumC5477Kw0 enumC5477Kw04 = a20.f51281b;
                        int i16 = a29.f51280a;
                        int i17 = a20.f51280a;
                        c6382aB.getClass();
                        c6382aB.a(EnumC5592Mw0.a(enumC5477Kw04), i16, i17);
                        c6382aB.a(EnumC5592Mw0.a(a21.f51281b), a28.f51280a, a21.f51280a);
                        c6382aB.a(EnumC5592Mw0.a(a22.f51281b), a27.f51280a, a22.f51280a);
                        c6382aB.a(EnumC5592Mw0.a(a23.f51281b), a26.f51280a, a23.f51280a);
                        c6382aB.a(EnumC5592Mw0.a(a29.f51281b), a25.f51280a, a29.f51280a);
                        c6382aB.a(EnumC5592Mw0.a(a28.f51281b), a24.f51280a, a28.f51280a);
                        return;
                    }
                    throw new C5325If("Invalid dup2x2 with types: wide, single, single, single");
                }
                throw new C5325If("Invalid dup2x2 with types: ..., wide, single");
            case 9:
                C8774ob a30 = c9775ub.a();
                C8774ob a31 = c9775ub.a();
                boolean z13 = f49674d;
                if (!z13 && a30.f51281b.b()) {
                    throw new AssertionError();
                }
                if (!z13 && a31.f51281b.b()) {
                    throw new AssertionError();
                }
                a(c6382aB, c9775ub, a30, a31);
                c9775ub.a();
                return;
            default:
                return;
        }
    }

    public static H9 a(O8 o82, H9 h92, S60 s60) {
        return h92.a(o82, s60).a(o82, s60);
    }

    public static H9 a(O8 o82, H9 h92, S60 s60, S60 s602) {
        return h92.a(o82, s602).a(o82, s60).a(o82, s602);
    }

    public static H9 a(O8 o82, S60 s60, H9 h92, S60 s602) {
        return h92.a(o82, s60).a(o82, s602).a(o82, s60);
    }

    public static H9 a(O8 o82, S60 s60, H9 h92, S60 s602, S60 s603) {
        return h92.a(o82, s60).a(o82, s602).a(o82, s603).a(o82, s60);
    }

    public static void a(C6382aB c6382aB, C9775ub c9775ub, C8774ob c8774ob, C8774ob c8774ob2) {
        c9775ub.getClass();
        C8774ob a10 = c9775ub.a(c8774ob.f51283d);
        C8774ob a11 = c9775ub.a(c8774ob2.f51283d);
        C8774ob a12 = c9775ub.a(c8774ob.f51283d);
        EnumC5477Kw0 enumC5477Kw0 = c8774ob.f51281b;
        int i10 = a12.f51280a;
        int i11 = c8774ob.f51280a;
        c6382aB.getClass();
        c6382aB.a(EnumC5592Mw0.a(enumC5477Kw0), i10, i11);
        EnumC5477Kw0 enumC5477Kw02 = c8774ob2.f51281b;
        c6382aB.a(EnumC5592Mw0.a(enumC5477Kw02), a11.f51280a, c8774ob2.f51280a);
        EnumC5477Kw0 enumC5477Kw03 = a12.f51281b;
        c6382aB.a(EnumC5592Mw0.a(enumC5477Kw03), a10.f51280a, a12.f51280a);
    }

    public static H9 a(O8 o82, S60 s60, S60 s602, H9 h92, S60 s603) {
        return h92.a(o82, s60).a(o82, s602).a(o82, s603).a(o82, s60).a(o82, s602);
    }

    public static void a(C6382aB c6382aB, C9775ub c9775ub, C8774ob c8774ob, C8774ob c8774ob2, C8774ob c8774ob3) {
        c9775ub.getClass();
        C8774ob a10 = c9775ub.a(c8774ob.f51283d);
        C8774ob a11 = c9775ub.a(c8774ob3.f51283d);
        C8774ob a12 = c9775ub.a(c8774ob2.f51283d);
        C8774ob a13 = c9775ub.a(c8774ob.f51283d);
        EnumC5477Kw0 enumC5477Kw0 = c8774ob.f51281b;
        int i10 = a13.f51280a;
        int i11 = c8774ob.f51280a;
        c6382aB.getClass();
        c6382aB.a(EnumC5592Mw0.a(enumC5477Kw0), i10, i11);
        EnumC5477Kw0 enumC5477Kw02 = c8774ob2.f51281b;
        c6382aB.a(EnumC5592Mw0.a(enumC5477Kw02), a12.f51280a, c8774ob2.f51280a);
        EnumC5477Kw0 enumC5477Kw03 = c8774ob3.f51281b;
        c6382aB.a(EnumC5592Mw0.a(enumC5477Kw03), a11.f51280a, c8774ob3.f51280a);
        EnumC5477Kw0 enumC5477Kw04 = a13.f51281b;
        c6382aB.a(EnumC5592Mw0.a(enumC5477Kw04), a10.f51280a, a13.f51280a);
    }

    public static H9 a(O8 o82, S60 s60, S60 s602, H9 h92, S60 s603, S60 s604) {
        return h92.a(o82, s60).a(o82, s602).a(o82, s603).a(o82, s604).a(o82, s60).a(o82, s602);
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, final O8 o82) {
        switch (AbstractC7939jb.f49272a[this.f49675c.ordinal()]) {
            case 1:
                return h92.h();
            case 2:
                return h92.a(new InterfaceC7495gt0() {
                    @Override
                    public final Object a(Object obj, Object obj2, Object obj3) {
                        return (H9) C5480Ky.a((H9) obj, (S60) obj2, (S60) obj3);
                    }
                }, new C9900vG0());
            case 3:
                return h92.c(new BiFunction() {
                    @Override
                    public final Object apply(Object obj, Object obj2) {
                        return C8106kb.a(O8.this, (H9) obj, (S60) obj2);
                    }
                });
            case 4:
                return h92.a(new InterfaceC7495gt0() {
                    @Override
                    public final Object a(Object obj, Object obj2, Object obj3) {
                        return C8106kb.a(O8.this, (H9) obj, (S60) obj2, (S60) obj3);
                    }
                });
            case 5:
                return h92.c(new BiFunction() {
                    @Override
                    public final Object apply(Object obj, Object obj2) {
                        H9 a10;
                        a10 = ((H9) obj).a(new InterfaceC7495gt0() {
                            @Override
                            public final Object a(Object obj3, Object obj4, Object obj5) {
                                return C8106kb.b(O8.this, r2, (H9) obj3, (S60) obj4, (S60) obj5);
                            }
                        }, new BiFunction() {
                            @Override
                            public final Object apply(Object obj3, Object obj4) {
                                return C8106kb.b(O8.this, r2, (H9) obj3, (S60) obj4);
                            }
                        });
                        return a10;
                    }
                });
            case 6:
                return h92.a(new InterfaceC7495gt0() {
                    @Override
                    public final Object a(Object obj, Object obj2, Object obj3) {
                        return C8106kb.d(O8.this, (H9) obj, (S60) obj2, (S60) obj3);
                    }
                }, new BiFunction() {
                    @Override
                    public final Object apply(Object obj, Object obj2) {
                        return C8106kb.e(O8.this, (H9) obj, (S60) obj2);
                    }
                });
            case 7:
                return h92.a(new InterfaceC7495gt0() {
                    @Override
                    public final Object a(Object obj, Object obj2, Object obj3) {
                        H9 c10;
                        c10 = ((H9) obj).c(new BiFunction() {
                            @Override
                            public final Object apply(Object obj4, Object obj5) {
                                return C8106kb.b(O8.this, r2, r3, (H9) obj4, (S60) obj5);
                            }
                        });
                        return c10;
                    }
                }, new BiFunction() {
                    @Override
                    public final Object apply(Object obj, Object obj2) {
                        H9 c10;
                        c10 = ((H9) obj).c(new BiFunction() {
                            @Override
                            public final Object apply(Object obj3, Object obj4) {
                                return C8106kb.c(O8.this, r2, (H9) obj3, (S60) obj4);
                            }
                        });
                        return c10;
                    }
                });
            case 8:
                return h92.a(new InterfaceC7495gt0() {
                    @Override
                    public final Object a(Object obj, Object obj2, Object obj3) {
                        H9 a10;
                        a10 = ((H9) obj).a(new InterfaceC7495gt0() {
                            @Override
                            public final Object a(Object obj4, Object obj5, Object obj6) {
                                return C8106kb.a(O8.this, r2, r3, (H9) obj4, (S60) obj5, (S60) obj6);
                            }
                        }, new BiFunction() {
                            @Override
                            public final Object apply(Object obj4, Object obj5) {
                                return C8106kb.a(O8.this, r2, r3, (H9) obj4, (S60) obj5);
                            }
                        });
                        return a10;
                    }
                }, new BiFunction() {
                    @Override
                    public final Object apply(Object obj, Object obj2) {
                        H9 a10;
                        a10 = ((H9) obj).a(new InterfaceC7495gt0() {
                            @Override
                            public final Object a(Object obj3, Object obj4, Object obj5) {
                                return C8106kb.a(O8.this, r2, (H9) obj3, (S60) obj4, (S60) obj5);
                            }
                        }, new BiFunction() {
                            @Override
                            public final Object apply(Object obj3, Object obj4) {
                                return C8106kb.a(O8.this, r2, (H9) obj3, (S60) obj4);
                            }
                        });
                        return a10;
                    }
                });
            case 9:
                return h92.a(new InterfaceC7495gt0() {
                    @Override
                    public final Object a(Object obj, Object obj2, Object obj3) {
                        return C8106kb.c(O8.this, (H9) obj, (S60) obj2, (S60) obj3);
                    }
                });
            default:
                throw new C5417Jv0("Invalid opcode for CfStackInstruction");
        }
    }
}
