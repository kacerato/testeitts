package kf;

import java.util.Random;
import java.util.logging.Logger;
import jf.f;
import p000if.C13702E;

public class C13978e {

    public static final Logger f95075b = Logger.getLogger(C13978e.class.getName());

    public static final boolean f95076c = false;

    public final int[] f95077a;

    public C13978e(int i10, long j10) {
        C13702E.i(i10, "length", 2, Integer.MAX_VALUE);
        this.f95077a = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            this.f95077a[i11] = i11;
        }
        Random random = new Random(j10);
        for (int i12 = 0; i12 < i10; i12++) {
            b(i12, f.K(random.nextInt(), i10));
        }
    }

    public int a(int i10) {
        return this.f95077a[f.K(i10, this.f95077a.length)];
    }

    public final void b(int i10, int i11) {
        int[] iArr = this.f95077a;
        int i12 = iArr[i10];
        iArr[i10] = iArr[i11];
        iArr[i11] = i12;
    }
}
