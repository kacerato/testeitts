package com.android.tools.r8.internal;

import com.android.tools.r8.internal.C4907Bb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class C9569tI extends AbstractC6489ar0 {

    public static final boolean f52577p = true;

    public final int[] f52578o;

    public C9569tI(C10340xw0 c10340xw0, int[] iArr, int[] iArr2, int i10) {
        super(c10340xw0, iArr2, i10);
        this.f52578o = iArr;
        boolean z10 = f52577p;
        if (z10) {
            return;
        }
        if (!z10) {
            for (int i11 = 0; i11 < v2(); i11++) {
                if (!AbstractC6489ar0.f46638n && this.f46639l[i11] == this.f46640m) {
                    throw new AssertionError();
                }
            }
        }
        int i12 = 1;
        if (!z10 && iArr.length < 1) {
            throw new AssertionError();
        }
        if (!z10 && iArr.length > 65535) {
            throw new AssertionError();
        }
        if (!z10 && iArr.length != v2()) {
            throw new AssertionError();
        }
        while (true) {
            int[] iArr3 = this.f52578o;
            if (i12 >= iArr3.length) {
                return;
            }
            if (!f52577p && iArr3[i12 - 1] >= iArr3[i12]) {
                throw new AssertionError();
            }
            i12++;
        }
    }

    @Override
    public final boolean M1() {
        return true;
    }

    @Override
    public final C9569tI Z() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        return false;
    }

    @Override
    public final int p2() {
        return 255;
    }

    @Override
    public final int q2() {
        return 255;
    }

    @Override
    public final int r2() {
        return 31;
    }

    @Override
    public final String toString() {
        StringBuilder sb2 = new StringBuilder(super.toString());
        sb2.append(System.lineSeparator());
        for (int i10 = 0; i10 < v2(); i10++) {
            sb2.append("          ");
            sb2.append(this.f52578o[i10]);
            sb2.append(" -> ");
            sb2.append(b(i10).r());
            sb2.append(System.lineSeparator());
        }
        sb2.append("          F -> ");
        sb2.append(u2().q());
        return sb2.toString();
    }

    public final InterfaceC10068wH w2() {
        DG dg2 = new DG();
        int i10 = 0;
        while (true) {
            int[] iArr = this.f52578o;
            if (i10 >= iArr.length) {
                return dg2;
            }
            dg2.a(iArr[i10], b(i10));
            i10++;
        }
    }

    public int[] x2() {
        return this.f52578o;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        int b10 = c5458Kn.f41765d.b((C10340xw0) this.f54321f.get(0), this.f54322g);
        if (a(EnumC9738uJ.f52833b)) {
            C9656tr c9656tr = new C9656tr(b10);
            if (!C5458Kn.f41761r && c5458Kn.f41778q != u2()) {
                throw new AssertionError();
            }
            c5458Kn.f41768g.add(new C5342In(this, c9656tr));
            c5458Kn.a(this, c9656tr);
            return;
        }
        C8324ls c8324ls = new C8324ls(b10);
        if (!C5458Kn.f41761r && c5458Kn.f41778q != u2()) {
            throw new AssertionError();
        }
        c5458Kn.f41768g.add(new C5342In(this, c8324ls));
        c5458Kn.a(this, c8324ls);
    }

    @Override
    public final void a(PS ps) {
        C10340xw0 c10340xw0 = (C10340xw0) this.f54321f.get(0);
        int[] x22 = x2();
        InterfaceC10068wH w22 = w2();
        u2();
        ps.getClass();
        int[] iArr = new int[x22.length];
        for (int i10 = 0; i10 < x22.length; i10++) {
            iArr[i10] = ps.f43227h.a((W5) ((DG) w22).get(x22[i10]));
        }
        ps.a(170, Collections.singletonList(new LS(x22, iArr)), Collections.singletonList(c10340xw0));
    }

    public static long a(int[] iArr) {
        return (iArr[iArr.length - 1] - iArr[0]) + 1;
    }

    public static boolean a(EnumC9738uJ enumC9738uJ, long j10) {
        return j10 <= (enumC9738uJ.a() ? 4294967295L : Sg.b.f23266s);
    }

    public static long a(EnumC9738uJ enumC9738uJ, int[] iArr) {
        long j10;
        long j11;
        long length = iArr.length;
        long j12 = (enumC9738uJ.a() ? length * 8 : (length * 4) + 2) + (enumC9738uJ.a() ? 12 : 3);
        if (a(enumC9738uJ, a(iArr))) {
            boolean z10 = f52577p;
            if (!z10 && !a(enumC9738uJ, a(iArr))) {
                throw new AssertionError();
            }
            long a10 = a(iArr);
            if (!enumC9738uJ.a()) {
                j11 = (a10 * 2) + 4;
            } else {
                if (!z10 && a10 > 4294967295L) {
                    throw new AssertionError();
                }
                j11 = a10 * 4;
            }
            j10 = (enumC9738uJ.a() ? 16 : 3) + j11;
            if (j10 < j11) {
                j10 = 2147483647L;
            }
        } else {
            j10 = Long.MAX_VALUE;
        }
        return Math.min(j12, j10);
    }

    public final boolean a(EnumC9738uJ enumC9738uJ) {
        long j10;
        if (!a(enumC9738uJ, a(this.f52578o))) {
            return false;
        }
        int[] iArr = this.f52578o;
        boolean z10 = f52577p;
        if (!z10 && !a(enumC9738uJ, a(iArr))) {
            throw new AssertionError();
        }
        long a10 = a(iArr);
        if (!enumC9738uJ.a()) {
            j10 = (a10 * 2) + 4;
        } else {
            if (!z10 && a10 > 4294967295L) {
                throw new AssertionError();
            }
            j10 = a10 * 4;
        }
        long length = this.f52578o.length;
        return j10 <= (enumC9738uJ.a() ? length * 8 : (length * 4) + 2);
    }

    @Override
    public final void a(NT nt) {
        nt.a(this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        C8103ka a10 = c7543h9.a(u2());
        ArrayList arrayList = new ArrayList(v2());
        List<W5> v10 = b().v();
        int i10 = 0;
        if (a(EnumC9738uJ.f52835d)) {
            int[] iArr = this.f52578o;
            int i11 = iArr[0];
            int i12 = iArr[iArr.length - 1];
            for (long j10 = i11; j10 <= i12; j10++) {
                if (j10 == this.f52578o[i10]) {
                    arrayList.add(c7543h9.a(v10.get(this.f46639l[i10])));
                    i10++;
                } else {
                    arrayList.add(a10);
                }
            }
            if (!f52577p && i10 != v2()) {
                throw new AssertionError();
            }
            c7543h9.a(new C4907Bb(C4907Bb.a.f38948c, a10, new int[]{i11}, arrayList), this);
            return;
        }
        int[] iArr2 = this.f46639l;
        int length = iArr2.length;
        while (i10 < length) {
            arrayList.add(c7543h9.a(v10.get(iArr2[i10])));
            i10++;
        }
        c7543h9.a(new C4907Bb(C4907Bb.a.f38947b, a10, this.f52578o, arrayList), this);
    }
}
