package uh;

import hi.C13486b;
import java.io.IOException;
import oh.AbstractC14551y;
import oh.C14539s;
import oh.InterfaceC14516g;

public class C15616g {

    public oh.F f120676a;

    public C14539s f120677b;

    public InterfaceC14516g f120678c;

    public boolean f120679d;

    public C15616g(oh.F f10) throws IOException {
        this.f120676a = f10;
        this.f120677b = C14539s.F(f10.readObject());
    }

    public oh.H a() throws IOException {
        if (this.f120678c == null) {
            this.f120678c = this.f120676a.readObject();
        }
        InterfaceC14516g interfaceC14516g = this.f120678c;
        if (!(interfaceC14516g instanceof oh.N)) {
            return null;
        }
        this.f120678c = null;
        return (oh.H) oh.V.B((oh.N) interfaceC14516g, 2, false, 17);
    }

    public C13486b b() throws IOException {
        if (this.f120678c == null) {
            this.f120678c = this.f120676a.readObject();
        }
        InterfaceC14516g interfaceC14516g = this.f120678c;
        if (!(interfaceC14516g instanceof oh.N)) {
            return null;
        }
        C13486b w10 = C13486b.w((oh.M) interfaceC14516g.r(), false);
        this.f120678c = null;
        return w10;
    }

    public C15625p c() throws IOException {
        if (this.f120678c == null) {
            this.f120678c = this.f120676a.readObject();
        }
        InterfaceC14516g interfaceC14516g = this.f120678c;
        if (interfaceC14516g == null) {
            return null;
        }
        this.f120678c = null;
        return new C15625p((oh.F) interfaceC14516g);
    }

    public AbstractC14551y d() throws IOException {
        if (this.f120678c == null) {
            this.f120678c = this.f120676a.readObject();
        }
        InterfaceC14516g interfaceC14516g = this.f120678c;
        this.f120678c = null;
        return AbstractC14551y.F(interfaceC14516g.r());
    }

    public C13486b e() throws IOException {
        if (this.f120678c == null) {
            this.f120678c = this.f120676a.readObject();
        }
        InterfaceC14516g interfaceC14516g = this.f120678c;
        if (interfaceC14516g == null) {
            return null;
        }
        this.f120678c = null;
        return C13486b.v(((oh.F) interfaceC14516g).r());
    }

    public I f() throws IOException {
        this.f120679d = true;
        if (this.f120678c == null) {
            this.f120678c = this.f120676a.readObject();
        }
        InterfaceC14516g interfaceC14516g = this.f120678c;
        if (interfaceC14516g instanceof oh.N) {
            oh.N n10 = (oh.N) interfaceC14516g;
            if (n10.p(0)) {
                oh.F f10 = (oh.F) n10.d(false, 16);
                this.f120678c = null;
                return I.w(f10.c());
            }
        }
        return null;
    }

    public oh.H g() throws IOException {
        if (!this.f120679d) {
            f();
        }
        if (this.f120678c == null) {
            this.f120678c = this.f120676a.readObject();
        }
        oh.H h10 = (oh.H) this.f120678c;
        this.f120678c = null;
        return h10;
    }

    public oh.H h() throws IOException {
        if (this.f120678c == null) {
            this.f120678c = this.f120676a.readObject();
        }
        InterfaceC14516g interfaceC14516g = this.f120678c;
        if (interfaceC14516g == null) {
            return null;
        }
        this.f120678c = null;
        return (oh.H) oh.V.B((oh.M) interfaceC14516g, 3, false, 17);
    }

    public C14539s i() {
        return this.f120677b;
    }
}
