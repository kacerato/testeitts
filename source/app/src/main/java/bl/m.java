package bl;

public class m {

    public k[] f33502a;

    public C3900a f33503b;

    public int f33504c;

    public int f33505d;

    public int f33506e;

    public int f33507f;

    public m() throws Exception {
        throw new Exception("Requires Parameter");
    }

    public void a(m mVar) {
        for (int i10 = 0; i10 < this.f33506e; i10++) {
            e(i10).a(mVar.e(i10));
        }
    }

    public boolean b(int i10) {
        for (int i11 = 0; i11 < this.f33506e; i11++) {
            if (e(i11).c(i10)) {
                return true;
            }
        }
        return false;
    }

    public void c(m mVar) {
        for (int i10 = 0; i10 < this.f33506e; i10++) {
            for (int i11 = 0; i11 < 256; i11++) {
                mVar.e(i10).x(i11, e(i10).f(i11));
            }
        }
    }

    public void d(byte[] bArr, int i10) {
        for (int i11 = 0; i11 < this.f33506e; i11++) {
            this.f33502a[i11].B(bArr, (short) ((i10 << 8) + i11));
        }
    }

    public k e(int i10) {
        return this.f33502a[i10];
    }

    public void f() {
        for (int i10 = 0; i10 < this.f33506e; i10++) {
            e(i10).h();
        }
    }

    public void g(k kVar, m mVar) {
        for (int i10 = 0; i10 < this.f33506e; i10++) {
            e(i10).j(kVar, mVar.e(i10));
        }
    }

    public void h() {
        for (int i10 = 0; i10 < this.f33506e; i10++) {
            this.f33502a[i10].n();
        }
    }

    public void i() {
        for (int i10 = 0; i10 < this.f33506e; i10++) {
            e(i10).u();
        }
    }

    public String j(String str) {
        return str + ": " + toString();
    }

    public void k(byte[] bArr, short s10) {
        int i10 = 0;
        while (i10 < this.f33506e) {
            e(i10).C(bArr, s10);
            i10++;
            s10 = (short) (s10 + 1);
        }
    }

    public void l(byte[] bArr, short s10) {
        for (int i10 = 0; i10 < this.f33506e; i10++) {
            e(i10).D(bArr, (short) ((this.f33506e * s10) + i10));
        }
    }

    public String toString() {
        String str = "\n[";
        for (int i10 = 0; i10 < this.f33506e; i10++) {
            str = str + "Inner Matrix " + i10 + " " + e(i10).toString();
            if (i10 != this.f33506e - 1) {
                str = str + ",\n";
            }
        }
        return str + "]";
    }

    public m(C3900a c3900a) {
        this.f33503b = c3900a;
        this.f33504c = c3900a.m();
        this.f33506e = c3900a.l();
        this.f33507f = c3900a.k();
        this.f33502a = new k[this.f33506e];
        for (int i10 = 0; i10 < this.f33506e; i10++) {
            this.f33502a[i10] = new k(c3900a);
        }
    }
}
