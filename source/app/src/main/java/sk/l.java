package Sk;

import Qk.F;
import Xh.C;
import Xh.C3326a;
import Xh.C3329d;
import Xh.t;
import Xh.v;
import hi.C13505q;
import hi.r;
import java.io.IOException;
import li.C14145g;
import li.C14146h;
import oh.C0;
import oh.C14518h;
import oh.C14549x;
import oh.I0;
import oh.InterfaceC14516g;

public class l {

    public C14549x f23625a;

    public InterfaceC14516g f23626b;

    public C14518h f23627c;

    public l(v vVar) {
        this.f23627c = new C14518h();
        this.f23625a = t.f29072X3;
        this.f23626b = vVar;
    }

    public l a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f23627c.a(new C3326a(c14549x, new I0(interfaceC14516g)));
        return this;
    }

    public k b() {
        return new k(new C(this.f23625a, this.f23626b, new I0(this.f23627c)));
    }

    public l(v vVar, F f10) {
        this.f23627c = new C14518h();
        this.f23625a = t.f29076Y3;
        this.f23626b = new o(vVar).a(f10).f();
    }

    public l(C13505q c13505q) throws IOException {
        this.f23627c = new C14518h();
        this.f23625a = t.f29080Z3;
        this.f23626b = new C3329d(t.f29124n2, new C0(c13505q.getEncoded()));
    }

    public l(r rVar) throws IOException {
        this.f23627c = new C14518h();
        this.f23625a = t.f29084a4;
        this.f23626b = new C3329d(t.f29133r2, new C0(rVar.getEncoded()));
    }

    public l(C14145g c14145g) throws IOException {
        this(c14145g.r());
    }

    public l(C14146h c14146h) throws IOException {
        this(c14146h.x());
    }
}
