package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiFunction;
import java.util.function.Function;

public class C4907Bb extends AbstractC7936ja {

    public static final boolean f38942g = true;

    public final a f38943c;

    public final C8103ka f38944d;

    public final int[] f38945e;

    public final ArrayList f38946f;

    public enum a {
        f38947b,
        f38948c;

        a() {
        }
    }

    public C4907Bb(a aVar, C8103ka c8103ka, int[] iArr, ArrayList arrayList) {
        this.f38943c = aVar;
        this.f38944d = c8103ka;
        this.f38945e = iArr;
        this.f38946f = arrayList;
        boolean z10 = f38942g;
        if (!z10 && aVar == a.f38947b && iArr.length != arrayList.size()) {
            throw new AssertionError();
        }
        if (!z10 && aVar == a.f38948c && iArr.length != 1) {
            throw new AssertionError();
        }
    }

    @Override
    public final int B() {
        return this.f38943c == a.f38947b ? 171 : 170;
    }

    @Override
    public final boolean R() {
        return true;
    }

    public final C8103ka W() {
        return this.f38944d;
    }

    public List<Integer> X() {
        int[] iArr = this.f38945e;
        int length = iArr.length;
        CH ch2 = new CH(length);
        System.arraycopy(iArr, 0, ch2.f39176b, 0, length);
        ch2.f39177c = length;
        return ch2;
    }

    public a Y() {
        return this.f38943c;
    }

    public final List Z() {
        return this.f38946f;
    }

    @Override
    public final AbstractC6333Zs0 a(final BiFunction biFunction, W9 w92, H9 h92) {
        return AbstractC6495at0.a(h92, this.f38946f, biFunction).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4907Bb.this.a(biFunction, (C6276Ys0) obj);
            }
        });
    }

    @Override
    public final int y() {
        int i10 = AbstractC4849Ab.f38635a[this.f38943c.ordinal()];
        if (i10 == 1) {
            return (this.f38945e.length * 8) + 8;
        }
        if (i10 != 2) {
            throw new C5417Jv0();
        }
        int i11 = this.f38945e[0];
        return (((((this.f38946f.size() + i11) - 1) - i11) + 1) * 4) + 16;
    }

    public final AbstractC6333Zs0 a(BiFunction biFunction, C6276Ys0 c6276Ys0) {
        return (AbstractC6333Zs0) biFunction.apply(this.f38944d, c6276Ys0.f());
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, final com.android.tools.r8.graph.O o10) {
        if (f38942g || this.f38943c == ((C4907Bb) w92).f38943c) {
            return abstractC8953pf.a(this, (C4907Bb) w92, (InterfaceC5638Nq0<C4907Bb>) new InterfaceC5638Nq0() {
                @Override
                public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                    C4907Bb.a(com.android.tools.r8.graph.O.this, abstractC5754Pq0);
                }
            });
        }
        throw new AssertionError();
    }

    public static void a(com.android.tools.r8.graph.O o10, AbstractC5754Pq0 abstractC5754Pq0) {
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C4907Bb) obj).W();
            }
        };
        InterfaceC5407Jq0 a10 = o10.a();
        abstractC5754Pq0.a(function, a10, a10).d(new Function() {
            @Override
            public final Object apply(Object obj) {
                int[] iArr;
                iArr = ((C4907Bb) obj).f38945e;
                return iArr;
            }
        }).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C4907Bb) obj).Z();
            }
        }, o10.a());
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        C9547tA c9547tA = (C9547tA) abstractC9213rA;
        c9547tA.f52553a.a(this.f38945e.length);
        int i10 = 0;
        while (true) {
            int[] iArr = this.f38945e;
            if (i10 >= iArr.length) {
                return;
            }
            c9547tA.f52553a.a(iArr[i10]);
            i10++;
        }
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        XQ[] xqArr = new XQ[this.f38946f.size()];
        for (int i10 = 0; i10 < this.f38946f.size(); i10++) {
            xqArr[i10] = ((C8103ka) this.f38946f.get(i10)).V();
        }
        int i11 = AbstractC4849Ab.f38635a[this.f38943c.ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                return;
            }
            int i12 = this.f38945e[0];
            ex.a(i12, (this.f38946f.size() + i12) - 1, this.f38944d.V(), xqArr);
        } else {
            ex.a(this.f38944d.V(), this.f38945e, xqArr);
        }
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        int[] iArr = new int[this.f38946f.size()];
        for (int i10 = 0; i10 < this.f38946f.size(); i10++) {
            iArr[i10] = c7607hb.a((C8103ka) this.f38946f.get(i10));
        }
        c6382aB.a(c9775ub.a().f51280a, this.f38945e, c7607hb.a(this.f38944d), iArr);
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return h92.a(c4798y, o82, c4798y.b().f37884J1);
    }
}
