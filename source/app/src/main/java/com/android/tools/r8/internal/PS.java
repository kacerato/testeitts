package com.android.tools.r8.internal;

import com.android.tools.r8.internal.B60;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.BiConsumer;

public class PS<V, EV> {

    public static final int f43214p = Float.floatToRawIntBits(0.0f);

    public static final int f43215q = Float.floatToRawIntBits(1.0f);

    public static final int f43216r = Float.floatToRawIntBits(2.0f);

    public static final long f43217s = Double.doubleToRawLongBits(0.0d);

    public static final long f43218t = Double.doubleToRawLongBits(1.0d);

    public static final boolean f43219u = true;

    public final boolean f43220a;

    public final X7 f43221b;

    public final C10092wT f43222c;

    public final C9115qd0 f43223d;

    public final ArrayList f43224e;

    public int f43225f;

    public int f43226g;

    public final AbstractC6590bT f43227h;

    public C9374s8 f43228i;

    public C6899dH f43229j;

    public B60 f43230k;

    public B60 f43231l;

    public final C6899dH f43232m;

    public final HashMap f43233n;

    public final C6899dH f43234o;

    public PS(com.android.tools.r8.graph.A2 a22, boolean z10, AbstractC6590bT abstractC6590bT, C8570nJ c8570nJ) {
        X7 x72 = new X7();
        this.f43221b = x72;
        this.f43222c = new C10092wT(x72);
        this.f43225f = 0;
        this.f43226g = 0;
        this.f43232m = new C6899dH(16);
        this.f43233n = new HashMap();
        this.f43234o = new C6899dH(16);
        this.f43220a = c8570nJ.P();
        c8570nJ.m();
        this.f43223d = new C9115qd0();
        this.f43224e = new ArrayList();
        this.f43227h = abstractC6590bT;
        B60.c.a a10 = B60.c.t().a(0).a(a22);
        a10.f38816e = z10;
        B60.c a11 = a10.a();
        this.f43230k = a11;
        this.f43231l = a11;
    }

    public final void a(YS ys) {
        C9115qd0 c9115qd0 = this.f43223d;
        int i10 = c9115qd0.f51828i;
        Integer num = (Integer) c9115qd0.putIfAbsent(ys, Integer.valueOf(i10));
        if (num != null) {
            i10 = num.intValue();
        }
        if (!f43219u) {
            boolean z10 = C8707o8.f51173a;
        }
        C10092wT c10092wT = this.f43222c;
        Objects.requireNonNull(c10092wT);
        C8707o8.a(i10, (InterfaceC9041q8) new TQ0(c10092wT));
    }

    public final PS b(long j10) {
        if (j10 == 0) {
            c();
            this.f43222c.a(9);
            return this;
        }
        if (j10 == 1) {
            c();
            this.f43222c.a(10);
            return this;
        }
        c();
        C10092wT c10092wT = this.f43222c;
        boolean z10 = C8707o8.f51173a;
        c10092wT.a(201, 8);
        C10092wT c10092wT2 = this.f43222c;
        Objects.requireNonNull(c10092wT2);
        C8707o8.a(j10, new TQ0(c10092wT2));
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x006c, code lost:
    
        if (((com.android.tools.r8.internal.RS) r2).f43902d == r1.f()) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int c() {
        B60 b60 = this.f43230k;
        B60 b602 = this.f43231l;
        b60.getClass();
        if (!InterfaceC7166ev.a(b60, b602)) {
            int i10 = this.f43226g;
            B60 b603 = this.f43230k;
            if (!f43219u && !this.f43224e.isEmpty() && ((SS) AT.b(this.f43224e)).f44210b >= i10) {
                throw new AssertionError();
            }
            b603.getClass();
            if (((b603 instanceof B60.b) || (b603 instanceof B60.c)) && !b603.k()) {
                if (!this.f43224e.isEmpty() || b603.f() != 0) {
                    if (!this.f43224e.isEmpty()) {
                        SS ss = (SS) AT.b(this.f43224e);
                        if (ss instanceof RS) {
                        }
                    }
                    this.f43224e.add(new RS(i10, b603.f()));
                }
            } else {
                this.f43224e.add(new TS(i10, b603));
            }
            this.f43231l = this.f43230k;
        }
        C9374s8 c9374s8 = this.f43228i;
        if (c9374s8 != null) {
            this.f43229j.a(this.f43226g, c9374s8);
            this.f43228i = null;
        }
        int i11 = this.f43226g;
        this.f43226g = i11 + 1;
        return i11;
    }

    public final void d(int i10) {
        c();
        C10092wT c10092wT = this.f43222c;
        boolean z10 = C8707o8.f51173a;
        c10092wT.a(228, 4);
        C10092wT c10092wT2 = this.f43222c;
        Objects.requireNonNull(c10092wT2);
        C8707o8.a(i10, (InterfaceC9041q8) new TQ0(c10092wT2));
    }

    public final void e(int i10) {
        C10092wT c10092wT = this.f43222c;
        Objects.requireNonNull(c10092wT);
        C8707o8.a(i10, (InterfaceC9041q8) new TQ0(c10092wT));
    }

    public final void f(int i10) {
        C10092wT c10092wT = this.f43222c;
        Objects.requireNonNull(c10092wT);
        C8707o8.a(i10, (InterfaceC9041q8) new TQ0(c10092wT));
    }

    public WS<EV> d() {
        C9115qd0 c9115qd0 = this.f43223d;
        final YS[] ysArr = new YS[c9115qd0.f51828i];
        c9115qd0.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                PS.a(ysArr, (YS) obj, (Integer) obj2);
            }
        });
        QS qs = this.f43233n.isEmpty() ? null : new QS(this.f43233n, this.f43234o);
        VS vs = this.f43232m.isEmpty() ? null : new VS(this.f43232m);
        ArrayList arrayList = this.f43224e;
        return new WS<>(ysArr, (SS[]) arrayList.toArray(new SS[arrayList.size()]), this.f43225f, this.f43221b.f45623a.toByteArray(), this.f43226g, vs, qs, this.f43227h.a(), this.f43220a, this.f43229j);
    }

    public final PS a(int i10) {
        if (!f43219u && this.f43225f != i10) {
            throw new AssertionError();
        }
        this.f43225f++;
        return this;
    }

    public final PS b() {
        c();
        this.f43222c.a(177);
        return this;
    }

    public PS<V, EV> a() {
        c();
        this.f43222c.a(1);
        return this;
    }

    public final PS b(int i10) {
        if (i10 == f43214p) {
            c();
            this.f43222c.a(11);
            return this;
        }
        if (i10 == f43215q) {
            c();
            this.f43222c.a(12);
            return this;
        }
        if (i10 == f43216r) {
            c();
            this.f43222c.a(13);
            return this;
        }
        c();
        C10092wT c10092wT = this.f43222c;
        boolean z10 = C8707o8.f51173a;
        c10092wT.a(202, 4);
        C10092wT c10092wT2 = this.f43222c;
        Objects.requireNonNull(c10092wT2);
        C8707o8.a(i10, (InterfaceC9041q8) new TQ0(c10092wT2));
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final PS a(int i10, List list, List list2) {
        int c10 = c();
        Iterator it = list.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            i11 += 4;
        }
        for (int i12 = 0; i12 < list2.size(); i12++) {
            this.f43227h.a().a().a(this.f43225f + c10, this.f43227h.a((AbstractC6590bT) list2.get(i12)));
            boolean z10 = C8707o8.f51173a;
            i11 += 4;
        }
        this.f43222c.a(i10, i11);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            a((YS) it2.next());
        }
        for (int i13 = 0; i13 < list2.size(); i13++) {
            f(this.f43227h.a().a().a(this.f43225f + c10, this.f43227h.a((AbstractC6590bT) list2.get(i13))));
        }
        return this;
    }

    public final void b(T10 t10, C10340xw0 c10340xw0) {
        int i10;
        int i11 = IS.f41103b[t10.ordinal()];
        if (i11 == 1 || i11 == 2 || i11 == 3 || i11 == 4) {
            i10 = 218;
        } else {
            if (i11 != 5) {
                throw new C5417Jv0("Unexpected type: " + ((Object) t10));
            }
            i10 = 219;
        }
        a(i10, Collections.EMPTY_LIST, Collections.singletonList(c10340xw0));
    }

    public PS<V, EV> c(int i10) {
        if (-1 <= i10 && i10 <= 5) {
            c();
            this.f43222c.a(i10 + 3);
            return this;
        }
        c();
        C10092wT c10092wT = this.f43222c;
        boolean z10 = C8707o8.f51173a;
        c10092wT.a(200, 4);
        C10092wT c10092wT2 = this.f43222c;
        Objects.requireNonNull(c10092wT2);
        C8707o8.a(i10, (InterfaceC9041q8) new TQ0(c10092wT2));
        return this;
    }

    public final PS a(long j10) {
        if (j10 == f43217s) {
            c();
            this.f43222c.a(14);
            return this;
        }
        if (j10 == f43218t) {
            c();
            this.f43222c.a(15);
            return this;
        }
        c();
        C10092wT c10092wT = this.f43222c;
        boolean z10 = C8707o8.f51173a;
        c10092wT.a(203, 8);
        C10092wT c10092wT2 = this.f43222c;
        Objects.requireNonNull(c10092wT2);
        C8707o8.a(j10, new TQ0(c10092wT2));
        return this;
    }

    public final void a(T10 t10, C10340xw0 c10340xw0) {
        int i10;
        switch (IS.f41103b[t10.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                i10 = 116;
                break;
            case 5:
                i10 = 117;
                break;
            case 6:
                i10 = 118;
                break;
            case 7:
                i10 = 119;
                break;
            default:
                throw new C5417Jv0("Unexpected type: " + ((Object) t10));
        }
        a(i10, Collections.EMPTY_LIST, Collections.singletonList(c10340xw0));
    }

    public final void a(T10 t10, C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        int i10;
        switch (IS.f41103b[t10.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                i10 = 108;
                break;
            case 5:
                i10 = 109;
                break;
            case 6:
                i10 = 110;
                break;
            case 7:
                i10 = 111;
                break;
            default:
                throw new C5417Jv0("Unexpected type: " + ((Object) t10));
        }
        a(i10, Collections.EMPTY_LIST, AbstractC7552hC.a(c10340xw0, c10340xw02));
    }

    public final void a(NB nb2, EnumC5477Kw0 enumC5477Kw0, C10340xw0 c10340xw0, W5 w52) {
        int i10;
        switch (IS.f41104c[nb2.ordinal()]) {
            case 1:
                if (!enumC5477Kw0.a()) {
                    i10 = 153;
                    break;
                } else {
                    i10 = 198;
                    break;
                }
            case 2:
                i10 = 156;
                break;
            case 3:
                i10 = 157;
                break;
            case 4:
                i10 = 158;
                break;
            case 5:
                i10 = 155;
                break;
            case 6:
                if (!enumC5477Kw0.a()) {
                    i10 = 154;
                    break;
                } else {
                    i10 = 199;
                    break;
                }
            default:
                throw new C5417Jv0("Unexpected if kind: " + ((Object) nb2));
        }
        int c10 = c();
        int a10 = this.f43227h.a(w52);
        int a11 = this.f43227h.a().a().a(c10 + this.f43225f, this.f43227h.a((AbstractC6590bT) c10340xw0));
        boolean z10 = C8707o8.f51173a;
        this.f43222c.a(i10, 8);
        e(a10);
        f(a11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(NB nb2, EnumC5477Kw0 enumC5477Kw0, ArrayList arrayList, W5 w52) {
        int i10;
        switch (IS.f41104c[nb2.ordinal()]) {
            case 1:
                if (!enumC5477Kw0.a()) {
                    i10 = 159;
                    break;
                } else {
                    i10 = 165;
                    break;
                }
            case 2:
                i10 = 162;
                break;
            case 3:
                i10 = 163;
                break;
            case 4:
                i10 = 164;
                break;
            case 5:
                i10 = 161;
                break;
            case 6:
                if (!enumC5477Kw0.a()) {
                    i10 = 160;
                    break;
                } else {
                    i10 = 166;
                    break;
                }
            default:
                throw new C5417Jv0("Unexpected if kind " + ((Object) nb2));
        }
        int c10 = c();
        int a10 = this.f43227h.a(w52);
        int a11 = this.f43227h.a().a().a(this.f43225f + c10, this.f43227h.a((AbstractC6590bT) arrayList.get(0)));
        int a12 = this.f43227h.a().a().a(c10 + this.f43225f, this.f43227h.a((AbstractC6590bT) arrayList.get(1)));
        boolean z10 = C8707o8.f51173a;
        this.f43222c.a(i10, 12);
        e(a10);
        f(a11);
        f(a12);
    }

    public static void a(YS[] ysArr, YS ys, Integer num) {
        ysArr[num.intValue()] = ys;
    }

    public static int a(EnumC9283re enumC9283re, T10 t10) {
        int i10 = IS.f41103b[t10.ordinal()];
        if (i10 == 5) {
            return 148;
        }
        if (i10 == 6) {
            return enumC9283re == EnumC9283re.f52081d ? 149 : 150;
        }
        if (i10 == 7) {
            return enumC9283re == EnumC9283re.f52081d ? 151 : 152;
        }
        throw new C5417Jv0("Cmp has unknown type " + ((Object) t10));
    }

    public final void a(YV yv, C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        int i10;
        switch (yv) {
            case f45995b:
                i10 = 50;
                break;
            case f45996c:
                i10 = 51;
                break;
            case f45997d:
                i10 = 52;
                break;
            case f45998e:
                i10 = 53;
                break;
            case f45999f:
                i10 = 46;
                break;
            case f46000g:
                i10 = 48;
                break;
            case f46001h:
                i10 = 47;
                break;
            case f46002i:
                i10 = 49;
                break;
            default:
                throw new C5417Jv0("Unexpected object or imprecise member type: " + ((Object) yv));
        }
        a(i10, Collections.EMPTY_LIST, AbstractC7552hC.a(c10340xw0, c10340xw02));
    }

    public final void a(YV yv, C10340xw0 c10340xw0, C10340xw0 c10340xw02, C10340xw0 c10340xw03) {
        int i10;
        switch (yv) {
            case f45995b:
                i10 = 83;
                break;
            case f45996c:
                i10 = 84;
                break;
            case f45997d:
                i10 = 85;
                break;
            case f45998e:
                i10 = 86;
                break;
            case f45999f:
                i10 = 79;
                break;
            case f46000g:
                i10 = 81;
                break;
            case f46001h:
                i10 = 80;
                break;
            case f46002i:
                i10 = 82;
                break;
            default:
                throw new C5417Jv0("Unexpected imprecise member type: " + ((Object) yv));
        }
        a(i10, Collections.EMPTY_LIST, AbstractC7552hC.a(c10340xw0, c10340xw02, c10340xw03));
    }

    public final void a(int i10, com.android.tools.r8.graph.M2 m22) {
        c();
        boolean z10 = C8707o8.f51173a;
        this.f43222c.a(217, 8);
        a(m22);
        C10092wT c10092wT = this.f43222c;
        Objects.requireNonNull(c10092wT);
        C8707o8.a(i10, (InterfaceC9041q8) new TQ0(c10092wT));
    }
}
