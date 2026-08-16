package bl;

public class l {

    public k[] f33496a;

    public C3900a f33497b;

    public int f33498c;

    public int f33499d;

    public int f33500e;

    public int f33501f;

    public l() throws Exception {
        throw new Exception("Requires Parameter");
    }

    public void a(l lVar) {
        for (int i10 = 0; i10 < this.f33500e; i10++) {
            e(i10).a(lVar.e(i10));
        }
    }

    public boolean b(int i10) {
        for (int i11 = 0; i11 < this.f33500e; i11++) {
            if (e(i11).c(i10)) {
                return true;
            }
        }
        return false;
    }

    public void c() {
        for (int i10 = 0; i10 < this.f33500e; i10++) {
            e(i10).d();
        }
    }

    public void d(l lVar) {
        for (int i10 = 0; i10 < this.f33500e; i10++) {
            e(i10).e(lVar.e(i10));
        }
    }

    public k e(int i10) {
        return this.f33496a[i10];
    }

    public void f() {
        for (int i10 = 0; i10 < this.f33500e; i10++) {
            e(i10).h();
        }
    }

    public int g(l lVar, l lVar2) {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f33500e; i11++) {
            i10 += e(i11).m(lVar.e(i11), lVar2.e(i11));
        }
        return i10;
    }

    public byte[] h() {
        byte[] bArr = new byte[this.f33500e * this.f33497b.q()];
        for (int i10 = 0; i10 < this.f33500e; i10++) {
            System.arraycopy(e(i10).F(), 0, bArr, this.f33497b.q() * i10, this.f33497b.q());
        }
        return bArr;
    }

    public void i(k kVar, l lVar) {
        for (int i10 = 0; i10 < this.f33500e; i10++) {
            e(i10).j(kVar, lVar.e(i10));
        }
    }

    public void j() {
        for (int i10 = 0; i10 < this.f33500e; i10++) {
            this.f33496a[i10].n();
        }
    }

    public void k(l lVar) {
        for (int i10 = 0; i10 < this.f33500e; i10++) {
            e(i10).t(lVar.e(i10));
        }
    }

    public void l() {
        for (int i10 = 0; i10 < this.f33500e; i10++) {
            e(i10).u();
        }
    }

    public void m(int i10, k kVar) {
        this.f33496a[i10] = kVar;
    }

    public void n() {
        for (int i10 = 0; i10 < this.f33500e; i10++) {
            e(i10).z();
        }
    }

    public void o(l lVar) {
        for (int i10 = 0; i10 < this.f33500e; i10++) {
            e(i10).A(lVar.e(i10));
        }
    }

    public String p(String str) {
        return str + ": " + toString();
    }

    public void q(byte[] bArr, short s10) {
        int i10 = 0;
        while (i10 < this.f33500e) {
            e(i10).C(bArr, s10);
            i10++;
            s10 = (short) (s10 + 1);
        }
    }

    public void r(l lVar, l lVar2) {
        for (int i10 = 0; i10 < this.f33500e; i10++) {
            e(i10).o(lVar.e(i10), lVar2.e(i10));
        }
    }

    public String toString() {
        String str = "[";
        for (int i10 = 0; i10 < this.f33500e; i10++) {
            str = str + i10 + " " + e(i10).toString();
            if (i10 != this.f33500e - 1) {
                str = str + ",\n";
            }
        }
        return str + "]";
    }

    public l(C3900a c3900a) {
        this.f33497b = c3900a;
        this.f33498c = c3900a.m();
        this.f33500e = c3900a.k();
        this.f33501f = c3900a.l();
        this.f33496a = new k[this.f33500e];
        for (int i10 = 0; i10 < this.f33500e; i10++) {
            this.f33496a[i10] = new k(c3900a);
        }
    }
}
