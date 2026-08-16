package Bg;

public class s {

    public Cg.d f1818a;

    public Cg.c f1819b;

    public boolean f1820c;

    public Cg.e f1821d;

    public boolean f1822e;

    public boolean f1823f;

    public Cg.a f1824g;

    public Cg.b f1825h;

    public boolean f1826i;

    public long f1827j;

    public String f1828k;

    public String f1829l;

    public long f1830m;

    public long f1831n;

    public boolean f1832o;

    public boolean f1833p;

    public String f1834q;

    public String f1835r;

    public a f1836s;

    public h f1837t;

    public boolean f1838u;

    public enum a {
        INCLUDE_LINK_ONLY,
        INCLUDE_LINKED_FILE_ONLY,
        INCLUDE_LINK_AND_LINKED_FILE
    }

    public s() {
        this.f1818a = Cg.d.DEFLATE;
        this.f1819b = Cg.c.NORMAL;
        this.f1820c = false;
        this.f1821d = Cg.e.NONE;
        this.f1822e = true;
        this.f1823f = true;
        this.f1824g = Cg.a.KEY_STRENGTH_256;
        this.f1825h = Cg.b.TWO;
        this.f1826i = true;
        this.f1830m = 0L;
        this.f1831n = -1L;
        this.f1832o = true;
        this.f1833p = true;
        this.f1836s = a.INCLUDE_LINKED_FILE_ONLY;
    }

    public void A(boolean z10) {
        this.f1820c = z10;
    }

    public void B(Cg.e eVar) {
        this.f1821d = eVar;
    }

    public void C(long j10) {
        this.f1827j = j10;
    }

    public void D(long j10) {
        this.f1831n = j10;
    }

    public void E(h hVar) {
        this.f1837t = hVar;
    }

    public void F(String str) {
        this.f1835r = str;
    }

    public void G(String str) {
        this.f1829l = str;
    }

    public void H(boolean z10) {
        this.f1826i = z10;
    }

    public void I(long j10) {
        if (j10 < 0) {
            this.f1830m = 0L;
        } else {
            this.f1830m = j10;
        }
    }

    public void J(boolean z10) {
        this.f1833p = z10;
    }

    public void K(boolean z10) {
        this.f1822e = z10;
    }

    public void L(boolean z10) {
        this.f1823f = z10;
    }

    public void M(String str) {
        this.f1834q = str;
    }

    public void N(a aVar) {
        this.f1836s = aVar;
    }

    public void O(boolean z10) {
        this.f1838u = z10;
    }

    public void P(boolean z10) {
        this.f1832o = z10;
    }

    public Cg.a a() {
        return this.f1824g;
    }

    public Cg.b b() {
        return this.f1825h;
    }

    public Cg.c c() {
        return this.f1819b;
    }

    public Cg.d d() {
        return this.f1818a;
    }

    public String e() {
        return this.f1828k;
    }

    public Cg.e f() {
        return this.f1821d;
    }

    public long g() {
        return this.f1827j;
    }

    public long h() {
        return this.f1831n;
    }

    public h i() {
        return this.f1837t;
    }

    public String j() {
        return this.f1835r;
    }

    public String k() {
        return this.f1829l;
    }

    public long l() {
        return this.f1830m;
    }

    public String m() {
        return this.f1834q;
    }

    public a n() {
        return this.f1836s;
    }

    public boolean o() {
        return this.f1820c;
    }

    public boolean p() {
        return this.f1826i;
    }

    public boolean q() {
        return this.f1833p;
    }

    public boolean r() {
        return this.f1822e;
    }

    public boolean s() {
        return this.f1823f;
    }

    public boolean t() {
        return this.f1838u;
    }

    public boolean u() {
        return this.f1832o;
    }

    public void v(Cg.a aVar) {
        this.f1824g = aVar;
    }

    public void w(Cg.b bVar) {
        this.f1825h = bVar;
    }

    public void x(Cg.c cVar) {
        this.f1819b = cVar;
    }

    public void y(Cg.d dVar) {
        this.f1818a = dVar;
    }

    public void z(String str) {
        this.f1828k = str;
    }

    public s(s sVar) {
        this.f1818a = Cg.d.DEFLATE;
        this.f1819b = Cg.c.NORMAL;
        this.f1820c = false;
        this.f1821d = Cg.e.NONE;
        this.f1822e = true;
        this.f1823f = true;
        this.f1824g = Cg.a.KEY_STRENGTH_256;
        this.f1825h = Cg.b.TWO;
        this.f1826i = true;
        this.f1830m = 0L;
        this.f1831n = -1L;
        this.f1832o = true;
        this.f1833p = true;
        this.f1836s = a.INCLUDE_LINKED_FILE_ONLY;
        this.f1818a = sVar.d();
        this.f1819b = sVar.c();
        this.f1820c = sVar.o();
        this.f1821d = sVar.f();
        this.f1822e = sVar.r();
        this.f1823f = sVar.s();
        this.f1824g = sVar.a();
        this.f1825h = sVar.b();
        this.f1826i = sVar.p();
        this.f1827j = sVar.g();
        this.f1828k = sVar.e();
        this.f1829l = sVar.k();
        this.f1830m = sVar.l();
        this.f1831n = sVar.h();
        this.f1832o = sVar.u();
        this.f1833p = sVar.q();
        this.f1834q = sVar.m();
        this.f1835r = sVar.j();
        this.f1836s = sVar.n();
        this.f1837t = sVar.i();
        this.f1838u = sVar.t();
    }
}
