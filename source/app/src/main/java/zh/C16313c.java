package zh;

import hi.C13479C;
import hi.C13510w;
import hi.W;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import th.L;

public class C16313c {

    public static final int f131375k = 1;

    public static final int f131376l = 0;

    public static final int f131377m = 1;

    public static final int f131378n = 2;

    public static final int f131379o = 3;

    public int f131380a = 1;

    public g f131381b;

    public C13510w f131382c;

    public C14539s f131383d;

    public j f131384e;

    public L f131385f;

    public W f131386g;

    public G f131387h;

    public E f131388i;

    public C13479C f131389j;

    public C16313c(g gVar, C13510w c13510w, C14539s c14539s, j jVar) {
        this.f131381b = gVar;
        this.f131382c = c13510w;
        this.f131383d = c14539s;
        this.f131384e = jVar;
    }

    public C16312b a() {
        C14518h c14518h = new C14518h(10);
        if (this.f131380a != 1) {
            c14518h.a(new C14539s(this.f131380a));
        }
        c14518h.a(this.f131381b);
        c14518h.a(this.f131382c);
        c14518h.a(this.f131383d);
        c14518h.a(this.f131384e);
        L l10 = this.f131385f;
        if (l10 != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) l10));
        }
        W w10 = this.f131386g;
        if (w10 != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) w10));
        }
        G g10 = this.f131387h;
        if (g10 != null) {
            c14518h.a(new K0(false, 2, (InterfaceC14516g) g10));
        }
        E e10 = this.f131388i;
        if (e10 != null) {
            c14518h.a(new K0(false, 3, (InterfaceC14516g) e10));
        }
        C13479C c13479c = this.f131389j;
        if (c13479c != null) {
            c14518h.a(c13479c);
        }
        return C16312b.z(new G0(c14518h));
    }

    public void b(n[] nVarArr) {
        this.f131388i = new G0(nVarArr);
    }

    public void c(g gVar) {
        this.f131381b = gVar;
    }

    public void d(L l10) {
        this.f131385f = l10;
    }

    public void e(C13479C c13479c) {
        this.f131389j = c13479c;
    }

    public void f(C13510w c13510w) {
        this.f131382c = c13510w;
    }

    public void g(W w10) {
        this.f131386g = w10;
    }

    public void h(G g10) {
        this.f131387h = g10;
    }

    public void i(j jVar) {
        this.f131384e = jVar;
    }

    public void j(C14539s c14539s) {
        this.f131383d = c14539s;
    }

    public void k(int i10) {
        this.f131380a = i10;
    }
}
