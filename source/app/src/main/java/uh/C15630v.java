package uh;

import java.io.IOException;
import oh.C14539s;
import oh.InterfaceC14516g;

public class C15630v {

    public oh.F f120748a;

    public C14539s f120749b;

    public InterfaceC14516g f120750c;

    public boolean f120751d;

    public C15630v(oh.F f10) throws IOException {
        this.f120748a = f10;
        this.f120749b = C14539s.F(f10.readObject());
    }

    public C15627s a() throws IOException {
        if (this.f120750c == null) {
            this.f120750c = this.f120748a.readObject();
        }
        InterfaceC14516g interfaceC14516g = this.f120750c;
        if (interfaceC14516g == null) {
            return null;
        }
        this.f120750c = null;
        return new C15627s((oh.F) interfaceC14516g);
    }

    public I b() throws IOException {
        this.f120751d = true;
        if (this.f120750c == null) {
            this.f120750c = this.f120748a.readObject();
        }
        InterfaceC14516g interfaceC14516g = this.f120750c;
        if (interfaceC14516g instanceof oh.N) {
            oh.N n10 = (oh.N) interfaceC14516g;
            if (n10.p(0)) {
                oh.F f10 = (oh.F) n10.d(false, 16);
                this.f120750c = null;
                return I.w(f10.c());
            }
        }
        return null;
    }

    public oh.H c() throws IOException {
        if (!this.f120751d) {
            b();
        }
        if (this.f120750c == null) {
            this.f120750c = this.f120748a.readObject();
        }
        oh.H h10 = (oh.H) this.f120750c;
        this.f120750c = null;
        return h10;
    }

    public oh.H d() throws IOException {
        if (this.f120750c == null) {
            this.f120750c = this.f120748a.readObject();
        }
        InterfaceC14516g interfaceC14516g = this.f120750c;
        if (interfaceC14516g == null) {
            return null;
        }
        this.f120750c = null;
        return (oh.H) oh.V.B((oh.N) interfaceC14516g, 1, false, 17);
    }

    public C14539s e() {
        return this.f120749b;
    }
}
