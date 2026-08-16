package com.android.tools.r8.kotlin;

import com.android.tools.r8.AbstractC4291c;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AL;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.BL;
import com.android.tools.r8.internal.C10086wQ;
import com.android.tools.r8.internal.C10587zQ;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5480Ky;
import com.android.tools.r8.internal.C7698i5;
import com.android.tools.r8.internal.C8918pQ;
import com.android.tools.r8.internal.C9919vQ;
import com.android.tools.r8.internal.CL;
import com.android.tools.r8.internal.GJ;
import com.android.tools.r8.internal.InterfaceC7495gt0;
import com.android.tools.r8.internal.InterfaceC7584hQ;
import com.android.tools.r8.internal.OL;
import com.android.tools.r8.internal.WB;
import com.android.tools.r8.internal.XY;
import com.android.tools.r8.internal.YH;
import com.android.tools.r8.shaking.InterfaceC11195f0;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C implements InterfaceC11195f0 {

    public static final boolean f55017d = true;

    public final AbstractC7552hC f55018a;

    public final AbstractC7552hC f55019b;

    public final AbstractC7552hC f55020c;

    public C(AbstractC7552hC abstractC7552hC, AbstractC7552hC abstractC7552hC2, AbstractC7552hC abstractC7552hC3) {
        this.f55018a = abstractC7552hC;
        this.f55019b = abstractC7552hC2;
        this.f55020c = abstractC7552hC3;
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0194 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C a(InterfaceC7584hQ interfaceC7584hQ, HashMap hashMap, HashMap hashMap2, C4724u1 c4724u1, C5094Ef0 c5094Ef0, Consumer consumer, X x10) {
        boolean z10;
        Iterator<C9919vQ> it;
        boolean z11;
        C4516j1 c4516j1;
        C4516j1 c4516j12;
        C4516j1 c4516j13;
        C4460g1 c4460g1;
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        int i11 = 0;
        for (C8918pQ c8918pQ : interfaceC7584hQ.a()) {
            OL a10 = BL.a(c8918pQ);
            if (a10 == null) {
                if (!f55017d) {
                    throw new AssertionError();
                }
            } else {
                K a11 = K.a(c8918pQ, c4724u1, c5094Ef0);
                C4516j1 c4516j14 = (C4516j1) hashMap.get(a10.toString());
                if (c4516j14 == null) {
                    int i12 = i11 + 1;
                    if (objArr.length < i12) {
                        objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i12));
                    }
                    objArr[i11] = a11;
                    AbstractC10752b0.a(a10.f42858b);
                    i11 = i12;
                } else {
                    if (C7698i5.f48779A.a(c8918pQ, C7698i5.f48805a[25])) {
                        int i13 = 1;
                        while (true) {
                            int size = c4516j14.V0().size();
                            RoundingMode roundingMode = RoundingMode.CEILING;
                            if (i13 <= YH.a(size, 32)) {
                                C4516j1 c4516j15 = (C4516j1) hashMap.get(AbstractC10752b0.a(a10, i13).toString());
                                if (c4516j15 != null) {
                                    consumer.accept(c4516j15);
                                    break;
                                }
                                i13++;
                            } else {
                                consumer.accept(c4516j14);
                                break;
                            }
                        }
                    }
                    c4516j14.a(a11);
                    x10.a(c4516j14.getReference());
                }
            }
        }
        Object[] objArr2 = new Object[4];
        Iterator<C9919vQ> it2 = interfaceC7584hQ.b().iterator();
        int i14 = 0;
        while (it2.hasNext()) {
            C9919vQ next = it2.next();
            C10745a a12 = C10745a.a(next, c4724u1, c5094Ef0);
            CL a13 = BL.a(next);
            OL b10 = BL.b(next);
            OL c10 = BL.c(next);
            OL a14 = AL.a(next).a();
            if (a13 != null && (c4460g1 = (C4460g1) hashMap2.get(a13.toString())) != null) {
                c4460g1.a(a12);
                x10.a(c4460g1.getReference());
                z10 = true;
                if (b10 != null || (c4516j13 = (C4516j1) hashMap.get(b10.toString())) == null) {
                    it = it2;
                } else {
                    C10086wQ c10086wQ = next.f53103d;
                    XY[] xyArr = C7698i5.f48805a;
                    GJ.c(c10086wQ, "<this>");
                    it = it2;
                    if (C7698i5.f48799U.a(c10086wQ, xyArr[45])) {
                        consumer.accept(c4516j13);
                    }
                    c4516j13.a(new C10794i0(a12, 2));
                    x10.a(c4516j13.getReference());
                    z10 = true;
                }
                if (c10 != null || (c4516j12 = (C4516j1) hashMap.get(c10.toString())) == null) {
                    z11 = true;
                } else {
                    C10086wQ c10086wQ2 = next.f53103d;
                    XY[] xyArr2 = C7698i5.f48805a;
                    GJ.c(c10086wQ2, "<this>");
                    if (C7698i5.f48799U.a(c10086wQ2, xyArr2[45])) {
                        consumer.accept(c4516j12);
                    }
                    z11 = true;
                    c4516j12.a(new C10794i0(a12, 1));
                    x10.a(c4516j12.getReference());
                    z10 = true;
                }
                if (a14 != null && (c4516j1 = (C4516j1) hashMap.get(a14.toString())) != null) {
                    c4516j1.a(new C10794i0(a12, 3));
                    x10.a(c4516j1.getReference());
                    z10 = z11;
                }
                if (!z10) {
                    int i15 = i14 + 1;
                    if (objArr2.length < i15) {
                        objArr2 = Arrays.copyOf(objArr2, WB.a(objArr2.length, i15));
                    }
                    objArr2[i14] = a12;
                    i14 = i15;
                }
                it2 = it;
            }
            z10 = false;
            if (b10 != null) {
            }
            it = it2;
            if (c10 != null) {
            }
            z11 = true;
            if (a14 != null) {
                c4516j1.a(new C10794i0(a12, 3));
                x10.a(c4516j1.getReference());
                z10 = z11;
            }
            if (!z10) {
            }
            it2 = it;
        }
        List<C10587zQ> c11 = interfaceC7584hQ.c();
        int i16 = AbstractC7552hC.f48487c;
        Object[] objArr3 = new Object[4];
        int i17 = 0;
        for (C10587zQ c10587zQ : c11) {
            C10830o0 c10830o0 = new C10830o0(c10587zQ, C10836p0.a(c4724u1, c5094Ef0, c10587zQ.f54377d), C10836p0.a(c4724u1, c5094Ef0, c10587zQ.f54378e), C10842q0.a(c10587zQ.c(), c4724u1, c5094Ef0), C10823n.a(c10587zQ.a(), c4724u1));
            int i18 = i17 + 1;
            if (objArr3.length < i18) {
                objArr3 = Arrays.copyOf(objArr3, WB.a(objArr3.length, i18));
            }
            objArr3[i17] = c10830o0;
            i17 = i18;
        }
        return new C(AbstractC7552hC.b(i17, objArr3), AbstractC7552hC.b(i11, objArr), AbstractC7552hC.b(i14, objArr2));
    }

    public static B b(InterfaceC10788h0 interfaceC10788h0) {
        return new B();
    }

    public static Consumer c(InterfaceC10788h0 interfaceC10788h0) {
        Objects.requireNonNull(interfaceC10788h0);
        return new C10888z0(interfaceC10788h0);
    }

    public final boolean a(Consumer consumer, Consumer consumer2, Consumer consumer3, com.android.tools.r8.graph.H2 h22, C4798y c4798y, X x10) {
        boolean a10 = AbstractC10752b0.a(c4798y, (List) this.f55018a, consumer3, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return Boolean.valueOf(((C10830o0) obj).b((Consumer) obj2, (C4798y) obj3));
            }
        });
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (C4460g1 c4460g1 : h22.I0()) {
            if (c4460g1.f37208m.a()) {
                B b10 = (B) linkedHashMap.computeIfAbsent(c4460g1.f37208m.b(), new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return C.a((InterfaceC10788h0) obj);
                    }
                });
                if (!B.f55005e && b10.f55006a != null) {
                    throw new AssertionError();
                }
                b10.f55006a = c4460g1;
                x10.a(c4460g1.getReference());
            }
        }
        for (C4516j1 c4516j1 : h22.z1()) {
            if (c4516j1.f37323p.j()) {
                a10 |= c4516j1.f37323p.d().a(consumer, c4516j1, c4798y);
                x10.a(c4516j1.getReference());
            } else {
                InterfaceC10788h0 b11 = c4516j1.f37323p.b();
                if (b11 == null) {
                    continue;
                } else {
                    x10.a(c4516j1.getReference());
                    B b12 = (B) linkedHashMap.computeIfAbsent(b11.getReference(), new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            return C.b((InterfaceC10788h0) obj);
                        }
                    });
                    int b13 = AbstractC4291c.b(b11.s());
                    if (b13 == 0) {
                        if (!B.f55005e && b12.f55007b != null) {
                            throw new AssertionError();
                        }
                        b12.f55007b = c4516j1;
                    } else if (b13 == 1) {
                        if (!B.f55005e && b12.f55008c != null) {
                            throw new AssertionError();
                        }
                        b12.f55008c = c4516j1;
                    } else if (b13 != 2) {
                        continue;
                    } else {
                        if (!B.f55005e && b12.f55009d != null) {
                            throw new AssertionError();
                        }
                        b12.f55009d = c4516j1;
                    }
                }
            }
        }
        for (InterfaceC10788h0 interfaceC10788h0 : linkedHashMap.o()) {
            B b14 = (B) linkedHashMap.get(interfaceC10788h0);
            a10 |= interfaceC10788h0.a(consumer2, b14.f55006a, b14.f55008c, b14.f55007b, b14.f55009d, c4798y);
        }
        return AbstractC10752b0.a(c4798y, (List) this.f55019b, consumer, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return Boolean.valueOf(((K) obj).a((Consumer) obj2, (C4798y) obj3));
            }
        }) | a10 | AbstractC10752b0.a(c4798y, (List) this.f55020c, consumer2, (InterfaceC7495gt0) new E0());
    }

    public static B a(InterfaceC10788h0 interfaceC10788h0) {
        return new B();
    }

    public static Consumer a(final C10830o0 c10830o0) {
        Objects.requireNonNull(c10830o0);
        return new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10830o0.this.a((InterfaceC4403d1) obj);
            }
        };
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        C5480Ky.a((Iterable) this.f55018a, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C.a((C10830o0) obj);
            }
        }, (Object) interfaceC4403d1);
        C5480Ky.a((Iterable) this.f55019b, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C.a((K) obj);
            }
        }, (Object) interfaceC4403d1);
        C5480Ky.a((Iterable) this.f55020c, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C.c((InterfaceC10788h0) obj);
            }
        }, (Object) interfaceC4403d1);
    }

    public static Consumer a(final K k10) {
        Objects.requireNonNull(k10);
        return new Consumer() {
            @Override
            public final void accept(Object obj) {
                K.this.a((InterfaceC4403d1) obj);
            }
        };
    }
}
