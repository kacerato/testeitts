package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AL;
import com.android.tools.r8.internal.AbstractC6750cQ;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.BL;
import com.android.tools.r8.internal.C10420yQ;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5480Ky;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C7698i5;
import com.android.tools.r8.internal.C8751oQ;
import com.android.tools.r8.internal.DQ;
import com.android.tools.r8.internal.InterfaceC7495gt0;
import com.android.tools.r8.internal.WB;
import com.android.tools.r8.internal.XY;
import com.android.tools.r8.internal.Y6;
import com.android.tools.r8.shaking.InterfaceC11195f0;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C10836p0 implements InterfaceC11195f0 {

    public static final C6190Xe0 f55425i;

    public final C10420yQ f55426a;

    public final AbstractC10877x f55427b;

    public final C10836p0 f55428c;

    public final C10836p0 f55429d;

    public final AbstractC7552hC f55430e;

    public final AbstractC7552hC f55431f;

    public final J f55432g;

    public final boolean f55433h;

    static {
        int i10 = AbstractC7552hC.f48487c;
        f55425i = C6190Xe0.f45779e;
    }

    public C10836p0(C10420yQ c10420yQ, AbstractC10877x abstractC10877x, C10836p0 c10836p0, C10836p0 c10836p02, AbstractC7552hC abstractC7552hC, AbstractC7552hC abstractC7552hC2, J j10, boolean z10) {
        this.f55426a = c10420yQ;
        this.f55427b = abstractC10877x;
        this.f55428c = c10836p0;
        this.f55429d = c10836p02;
        this.f55430e = abstractC7552hC;
        this.f55431f = abstractC7552hC2;
        this.f55432g = j10;
        this.f55433h = z10;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C10836p0 a(C4724u1 c4724u1, C5094Ef0 c5094Ef0, C10420yQ c10420yQ) {
        AbstractC10877x c10872w;
        AbstractC10877x abstractC10877x;
        List<DQ> b10;
        AbstractC7552hC b11;
        C8751oQ d10;
        J j10;
        if (c10420yQ == null) {
            return null;
        }
        AbstractC6750cQ abstractC6750cQ = c10420yQ.f54009b;
        int i10 = 0;
        if (abstractC6750cQ instanceof AbstractC6750cQ.a) {
            String a10 = ((AbstractC6750cQ.a) abstractC6750cQ).a();
            boolean startsWith = a10.startsWith(".");
            String l10 = C4932Bl.l(startsWith ? a10.substring(1) : a10);
            if (C4932Bl.y(l10)) {
                abstractC10877x = new C10852s(C10853s0.a(l10, c4724u1, l10, false), startsWith);
                C10836p0 a11 = a(c4724u1, c5094Ef0, c10420yQ.a());
                C10836p0 a12 = a(c4724u1, c5094Ef0, c10420yQ.e());
                b10 = c10420yQ.b();
                if (!b10.isEmpty()) {
                    b11 = f55425i;
                } else {
                    int i11 = AbstractC7552hC.f48487c;
                    Object[] objArr = new Object[4];
                    for (DQ dq : b10) {
                        C10847r0 c10847r0 = new C10847r0(dq.b(), a(c4724u1, c5094Ef0, dq.a()));
                        int i12 = i10 + 1;
                        if (objArr.length < i12) {
                            objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i12));
                        }
                        objArr[i10] = c10847r0;
                        i10 = i12;
                    }
                    b11 = AbstractC7552hC.b(i10, objArr);
                }
                AbstractC7552hC abstractC7552hC = b11;
                AbstractC7552hC a13 = C10823n.a(BL.a(c10420yQ), c4724u1);
                d10 = c10420yQ.d();
                if (d10 != null) {
                    j10 = J.f55079c;
                } else {
                    j10 = new J(d10.b(), a(c4724u1, c5094Ef0, d10.a()));
                }
                return new C10836p0(c10420yQ, abstractC10877x, a11, a12, abstractC7552hC, a13, j10, BL.b(c10420yQ));
            }
            c10872w = new C10867v(a10);
        } else if (abstractC6750cQ instanceof AbstractC6750cQ.b) {
            c10872w = new C10857t(((AbstractC6750cQ.b) abstractC6750cQ).a());
        } else if (abstractC6750cQ instanceof AbstractC6750cQ.c) {
            c10872w = new C10862u(((AbstractC6750cQ.c) abstractC6750cQ).a());
        } else {
            c5094Ef0.warning(T.a(abstractC6750cQ.toString()));
            c10872w = new C10872w(abstractC6750cQ.toString());
        }
        abstractC10877x = c10872w;
        C10836p0 a112 = a(c4724u1, c5094Ef0, c10420yQ.a());
        C10836p0 a122 = a(c4724u1, c5094Ef0, c10420yQ.e());
        b10 = c10420yQ.b();
        if (!b10.isEmpty()) {
        }
        AbstractC7552hC abstractC7552hC2 = b11;
        AbstractC7552hC a132 = C10823n.a(BL.a(c10420yQ), c4724u1);
        d10 = c10420yQ.d();
        if (d10 != null) {
        }
        return new C10836p0(c10420yQ, abstractC10877x, a112, a122, abstractC7552hC2, a132, j10, BL.b(c10420yQ));
    }

    public final boolean b(Consumer consumer, C4798y c4798y) {
        final C10420yQ c10420yQ = new C10420yQ(0);
        consumer.accept(c10420yQ);
        C10420yQ c10420yQ2 = this.f55426a;
        XY[] xyArr = C7698i5.f48805a;
        Y6 y62 = C7698i5.f48800V;
        y62.a(c10420yQ, xyArr[46], y62.a(c10420yQ2, xyArr[46]));
        Y6 y63 = C7698i5.f48801W;
        y63.a(c10420yQ, xyArr[47], y63.a(c10420yQ2, xyArr[47]));
        Y6 y64 = C7698i5.f48802X;
        y64.a(c10420yQ, xyArr[48], y64.a(c10420yQ2, xyArr[48]));
        boolean a10 = this.f55427b.a(c10420yQ, c4798y) | AbstractC10752b0.a(c4798y, this.f55428c, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10420yQ.this.a((C10420yQ) obj);
            }
        }, new K0()) | AbstractC10752b0.a(c4798y, this.f55429d, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10420yQ.this.b((C10420yQ) obj);
            }
        }, new K0()) | AbstractC10752b0.a(c4798y, this.f55430e, c10420yQ.b(), new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return Boolean.valueOf(((C10847r0) obj).b((Consumer) obj2, (C4798y) obj3));
            }
        }) | this.f55432g.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10420yQ.this.a((C8751oQ) obj);
            }
        }, c4798y);
        if (this.f55431f.isEmpty() && !this.f55433h) {
            return a10;
        }
        boolean a11 = a10 | AbstractC10752b0.a(c4798y, this.f55431f, BL.a(c10420yQ), new y4());
        AL.a(c10420yQ).f52343a = this.f55433h;
        return a11;
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        this.f55427b.a(interfaceC4403d1);
        C10836p0 c10836p0 = this.f55428c;
        if (c10836p0 != null) {
            c10836p0.a(interfaceC4403d1);
        }
        C10836p0 c10836p02 = this.f55429d;
        if (c10836p02 != null) {
            c10836p02.a(interfaceC4403d1);
        }
        C5480Ky.a((Iterable) this.f55430e, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10836p0.a((C10847r0) obj);
            }
        }, (Object) interfaceC4403d1);
        this.f55432g.a(interfaceC4403d1);
        C5480Ky.a((Iterable) this.f55431f, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10836p0.a((C10823n) obj);
            }
        }, (Object) interfaceC4403d1);
    }

    public static Consumer a(final C10847r0 c10847r0) {
        Objects.requireNonNull(c10847r0);
        return new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10847r0.this.a((InterfaceC4403d1) obj);
            }
        };
    }

    public static Consumer a(C10823n c10823n) {
        Objects.requireNonNull(c10823n);
        return new z4(c10823n);
    }
}
