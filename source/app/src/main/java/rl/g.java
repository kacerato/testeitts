package Rl;

import Wl.A;
import Wl.x;
import Wl.y;

public class g extends d {

    public int f22885d;

    public int f22886e;

    public Wl.h f22887f;

    public y f22888g;

    public x f22889h;

    public Wl.e f22890i;

    public y[] f22891j;

    public g(int i10, int i11, Wl.h hVar, y yVar, Wl.e eVar, x xVar, String str) {
        super(true, str);
        this.f22885d = i10;
        this.f22886e = i11;
        this.f22887f = hVar;
        this.f22888g = yVar;
        this.f22890i = eVar;
        this.f22889h = xVar;
        this.f22891j = new A(hVar, yVar).c();
    }

    public Wl.h e() {
        return this.f22887f;
    }

    public y f() {
        return this.f22888g;
    }

    public Wl.e g() {
        return this.f22890i;
    }

    public int h() {
        return this.f22886e;
    }

    public int i() {
        return this.f22885d;
    }

    public x j() {
        return this.f22889h;
    }

    public y[] k() {
        return this.f22891j;
    }

    public int l() {
        return this.f22888g.n();
    }

    public g(int i10, int i11, Wl.h hVar, y yVar, x xVar, String str) {
        this(i10, i11, hVar, yVar, Wl.s.b(hVar, yVar), xVar, str);
    }
}
