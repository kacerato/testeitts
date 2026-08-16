package Wl;

public class A {

    public h f27797a;

    public y f27798b;

    public y[] f27799c;

    public y[] f27800d;

    public A(h hVar, y yVar) {
        this.f27797a = hVar;
        this.f27798b = yVar;
        b();
        a();
    }

    public static void e(y[] yVarArr, int i10, int i11) {
        y yVar = yVarArr[i10];
        yVarArr[i10] = yVarArr[i11];
        yVarArr[i11] = yVar;
    }

    public final void a() {
        int m10;
        int n10 = this.f27798b.n();
        y[] yVarArr = new y[n10];
        int i10 = n10 - 1;
        for (int i11 = i10; i11 >= 0; i11--) {
            yVarArr[i11] = new y(this.f27799c[i11]);
        }
        this.f27800d = new y[n10];
        while (i10 >= 0) {
            this.f27800d[i10] = new y(this.f27797a, i10);
            i10--;
        }
        for (int i12 = 0; i12 < n10; i12++) {
            if (yVarArr[i12].m(i12) == 0) {
                int i13 = i12 + 1;
                boolean z10 = false;
                while (i13 < n10) {
                    if (yVarArr[i13].m(i12) != 0) {
                        e(yVarArr, i12, i13);
                        e(this.f27800d, i12, i13);
                        i13 = n10;
                        z10 = true;
                    }
                    i13++;
                }
                if (!z10) {
                    throw new ArithmeticException("Squaring matrix is not invertible.");
                }
            }
            int j10 = this.f27797a.j(yVarArr[i12].m(i12));
            yVarArr[i12].E(j10);
            this.f27800d[i12].E(j10);
            for (int i14 = 0; i14 < n10; i14++) {
                if (i14 != i12 && (m10 = yVarArr[i14].m(i12)) != 0) {
                    y F10 = yVarArr[i12].F(m10);
                    y F11 = this.f27800d[i12].F(m10);
                    yVarArr[i14].d(F10);
                    this.f27800d[i14].d(F11);
                }
            }
        }
    }

    public final void b() {
        int i10;
        int n10 = this.f27798b.n();
        this.f27799c = new y[n10];
        int i11 = 0;
        while (true) {
            i10 = n10 >> 1;
            if (i11 >= i10) {
                break;
            }
            int i12 = i11 << 1;
            int[] iArr = new int[i12 + 1];
            iArr[i12] = 1;
            this.f27799c[i11] = new y(this.f27797a, iArr);
            i11++;
        }
        while (i10 < n10) {
            int i13 = i10 << 1;
            int[] iArr2 = new int[i13 + 1];
            iArr2[i13] = 1;
            this.f27799c[i10] = new y(this.f27797a, iArr2).t(this.f27798b);
            i10++;
        }
    }

    public y[] c() {
        return this.f27800d;
    }

    public y[] d() {
        return this.f27799c;
    }
}
