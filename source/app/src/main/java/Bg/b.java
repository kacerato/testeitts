package Bg;

import java.util.List;

public abstract class b extends q {

    public int f1733b;

    public byte[] f1734c;

    public Cg.d f1735d;

    public long f1736e;

    public int f1740i;

    public int f1741j;

    public String f1742k;

    public boolean f1743l;

    public boolean f1745n;

    public p f1746o;

    public a f1747p;

    public boolean f1748q;

    public List<i> f1749r;

    public boolean f1750s;

    public long f1737f = 0;

    public long f1738g = 0;

    public long f1739h = 0;

    public Cg.e f1744m = Cg.e.NONE;

    public void A(boolean z10) {
        this.f1750s = z10;
    }

    public void B(boolean z10) {
        this.f1743l = z10;
    }

    public void C(Cg.e eVar) {
        this.f1744m = eVar;
    }

    public void D(List<i> list) {
        this.f1749r = list;
    }

    public void E(int i10) {
        this.f1741j = i10;
    }

    public void F(String str) {
        this.f1742k = str;
    }

    public void G(int i10) {
        this.f1740i = i10;
    }

    public void H(boolean z10) {
        this.f1748q = z10;
    }

    public void I(byte[] bArr) {
        this.f1734c = bArr;
    }

    public void J(long j10) {
        this.f1736e = j10;
    }

    public void K(long j10) {
        this.f1739h = j10;
    }

    public void L(int i10) {
        this.f1733b = i10;
    }

    public void M(p pVar) {
        this.f1746o = pVar;
    }

    public a c() {
        return this.f1747p;
    }

    public long d() {
        return this.f1738g;
    }

    public Cg.d e() {
        return this.f1735d;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof b)) {
            return j().equals(((b) obj).j());
        }
        return false;
    }

    public long f() {
        return this.f1737f;
    }

    public Cg.e g() {
        return this.f1744m;
    }

    public List<i> h() {
        return this.f1749r;
    }

    public int i() {
        return this.f1741j;
    }

    public String j() {
        return this.f1742k;
    }

    public int k() {
        return this.f1740i;
    }

    public byte[] l() {
        return this.f1734c;
    }

    public long m() {
        return this.f1736e;
    }

    public long n() {
        return Fg.h.f(this.f1736e);
    }

    public long o() {
        return this.f1739h;
    }

    public int p() {
        return this.f1733b;
    }

    public p q() {
        return this.f1746o;
    }

    public boolean r() {
        return this.f1745n;
    }

    public boolean s() {
        return this.f1750s;
    }

    public boolean t() {
        return this.f1743l;
    }

    public boolean u() {
        return this.f1748q;
    }

    public void v(a aVar) {
        this.f1747p = aVar;
    }

    public void w(long j10) {
        this.f1738g = j10;
    }

    public void x(Cg.d dVar) {
        this.f1735d = dVar;
    }

    public void y(long j10) {
        this.f1737f = j10;
    }

    public void z(boolean z10) {
        this.f1745n = z10;
    }
}
