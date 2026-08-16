package com.android.tools.r8.internal;

import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Comparator;
import java.util.Iterator;
import java.util.function.IntPredicate;

public final class C6822cr0 {

    public static final boolean f47186h = true;

    public final W5 f47187a;

    public final AbstractC6489ar0 f47188b;

    public W5 f47190d;

    public C6901dI f47193g;

    public int f47189c = -1;

    public boolean f47191e = true;

    public boolean f47192f = false;

    public C6822cr0(AbstractC6489ar0 abstractC6489ar0) {
        this.f47187a = abstractC6489ar0.b();
        this.f47188b = abstractC6489ar0;
    }

    public final boolean a(int i10) {
        int i11 = this.f47189c;
        if (i11 >= 0) {
            return i10 == i11;
        }
        if (this.f47193g != null) {
            return !r0.h(i10);
        }
        if (f47186h || !this.f47191e) {
            return true;
        }
        throw new AssertionError();
    }

    public final void b() {
        C6901dI c6901dI;
        int i10;
        int i11;
        AbstractC10561zE c8319lq0;
        C6901dI c6901dI2;
        if (!f47186h && (c6901dI2 = this.f47193g) != null && c6901dI2.isEmpty()) {
            throw new AssertionError();
        }
        if (this.f47193g == null && this.f47189c < 0 && this.f47191e) {
            return;
        }
        int size = this.f47187a.v().size();
        IntPredicate a10 = a();
        CH ch2 = new CH(16);
        for (int i12 = 0; i12 < this.f47187a.v().size(); i12++) {
            if (a10.test(i12)) {
                W5 w52 = this.f47187a.v().get(i12);
                W5 w53 = this.f47187a;
                w52.getClass();
                w52.a(w53, (C10696a) null, C6628bi.b(), EnumC6871d70.f47287c);
                ch2.add(i12);
                if (w52.u().isEmpty()) {
                    this.f47192f = true;
                }
            }
        }
        ch2.sort(Comparator.naturalOrder());
        this.f47187a.a(ch2);
        if (this.f47189c >= 0 || ((c6901dI = this.f47193g) != null && c6901dI.f47357g == this.f47188b.v2())) {
            if (!f47186h && this.f47189c >= 0 && this.f47190d == null) {
                throw new AssertionError();
            }
            this.f47188b.d(new C4960Bz());
            return;
        }
        int[] iArr = new int[size];
        Iterator o10 = ch2.o(0);
        while (o10.hasNext()) {
            iArr[((X) o10).r()] = 1;
        }
        for (int i13 = 1; i13 < size; i13++) {
            iArr[i13] = iArr[i13] + iArr[i13 - 1];
        }
        int v22 = this.f47188b.v2();
        if (!this.f47191e) {
            int v23 = this.f47188b.v2() - 1;
            while (true) {
                if (v23 < 0) {
                    break;
                }
                if (a(v23)) {
                    v22 = v23;
                    break;
                }
                v23--;
            }
        }
        C6901dI c6901dI3 = this.f47193g;
        int v24 = this.f47188b.v2() - (C8704o7.a(!this.f47191e) + (c6901dI3 != null ? c6901dI3.f47357g : 0));
        int[] iArr2 = new int[v24];
        int i14 = 0;
        for (int i15 = 0; i15 < v22; i15++) {
            if (a(i15)) {
                int i16 = this.f47188b.f46639l[i15];
                int i17 = i16 - iArr[i16];
                iArr2[i14] = i17;
                if (!f47186h && i17 >= this.f47187a.v().size()) {
                    throw new AssertionError();
                }
                i14++;
            }
        }
        if (this.f47191e) {
            i10 = this.f47188b.f46640m;
            i11 = iArr[i10];
        } else {
            i10 = this.f47188b.f46639l[v22];
            i11 = iArr[i10];
        }
        int i18 = i10 - i11;
        if (this.f47188b.M1()) {
            C9569tI Z10 = this.f47188b.Z();
            int[] iArr3 = new int[v24];
            int i19 = 0;
            for (int i20 = 0; i20 < v22; i20++) {
                if (a(i20)) {
                    iArr3[i19] = Z10.f52578o[i20];
                    i19++;
                }
            }
            c8319lq0 = new C9569tI((C10340xw0) this.f47188b.f54321f.get(0), iArr3, iArr2, i18);
        } else {
            if (!f47186h && !this.f47188b.k2()) {
                throw new AssertionError();
            }
            C8319lq0 O02 = this.f47188b.O0();
            com.android.tools.r8.graph.L2[] l2Arr = new com.android.tools.r8.graph.L2[v24];
            int i21 = 0;
            for (int i22 = 0; i22 < v22; i22++) {
                if (a(i22)) {
                    l2Arr[i21] = O02.f50122o[i22];
                    i21++;
                }
            }
            c8319lq0 = new C8319lq0((C10340xw0) this.f47188b.f54321f.get(0), l2Arr, iArr2, i18);
        }
        this.f47188b.d(c8319lq0);
    }

    public final IntPredicate a() {
        final int[] iArr = new int[this.f47187a.v().size()];
        for (int i10 = 0; i10 < this.f47188b.v2(); i10++) {
            if (a(i10)) {
                int i11 = this.f47188b.f46639l[i10];
                iArr[i11] = iArr[i11] + 1;
            }
        }
        if (this.f47191e) {
            int i12 = this.f47188b.f46640m;
            iArr[i12] = iArr[i12] + 1;
        }
        Iterator it = this.f47187a.f45292e.a().iterator();
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            iArr[intValue] = iArr[intValue] + 1;
        }
        return new IntPredicate() {
            @Override
            public final boolean test(int i13) {
                return C6822cr0.a(iArr, i13);
            }
        };
    }

    public static boolean a(int[] iArr, int i10) {
        return iArr[i10] == 0;
    }
}
