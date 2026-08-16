package uh;

import java.io.IOException;
import oh.AbstractC14551y;
import oh.C14539s;
import oh.InterfaceC14516g;
import org.bouncycastle.asn1.ASN1ParsingException;

public class C15614e {

    public oh.F f120662a;

    public C14539s f120663b;

    public InterfaceC14516g f120664c;

    public boolean f120665d;

    public boolean f120666e;

    public C15614e(oh.F f10) throws IOException {
        this.f120662a = f10;
        C14539s F10 = C14539s.F(f10.readObject());
        this.f120663b = F10;
        if (!F10.J(0)) {
            throw new ASN1ParsingException("AuthEnvelopedData version number must be 0");
        }
    }

    public oh.H a() throws IOException {
        if (this.f120664c == null) {
            this.f120664c = this.f120662a.readObject();
        }
        InterfaceC14516g interfaceC14516g = this.f120664c;
        if (interfaceC14516g instanceof oh.N) {
            this.f120664c = null;
            return (oh.H) oh.V.B((oh.N) interfaceC14516g, 1, false, 17);
        }
        if (this.f120666e) {
            return null;
        }
        throw new ASN1ParsingException("authAttrs must be present with non-data content");
    }

    public C15627s b() throws IOException {
        if (this.f120664c == null) {
            this.f120664c = this.f120662a.readObject();
        }
        InterfaceC14516g interfaceC14516g = this.f120664c;
        if (interfaceC14516g == null) {
            return null;
        }
        this.f120664c = null;
        C15627s c15627s = new C15627s((oh.F) interfaceC14516g);
        this.f120666e = InterfaceC15621l.f120705m8.A(c15627s.b());
        return c15627s;
    }

    public AbstractC14551y c() throws IOException {
        if (this.f120664c == null) {
            this.f120664c = this.f120662a.readObject();
        }
        InterfaceC14516g interfaceC14516g = this.f120664c;
        this.f120664c = null;
        return AbstractC14551y.F(interfaceC14516g.r());
    }

    public I d() throws IOException {
        this.f120665d = true;
        if (this.f120664c == null) {
            this.f120664c = this.f120662a.readObject();
        }
        InterfaceC14516g interfaceC14516g = this.f120664c;
        if (interfaceC14516g instanceof oh.N) {
            oh.N n10 = (oh.N) interfaceC14516g;
            if (n10.p(0)) {
                oh.F f10 = (oh.F) n10.d(false, 16);
                this.f120664c = null;
                return I.w(f10.c());
            }
        }
        return null;
    }

    public oh.H e() throws IOException {
        if (!this.f120665d) {
            d();
        }
        if (this.f120664c == null) {
            this.f120664c = this.f120662a.readObject();
        }
        oh.H h10 = (oh.H) this.f120664c;
        this.f120664c = null;
        return h10;
    }

    public oh.H f() throws IOException {
        if (this.f120664c == null) {
            this.f120664c = this.f120662a.readObject();
        }
        InterfaceC14516g interfaceC14516g = this.f120664c;
        if (interfaceC14516g == null) {
            return null;
        }
        this.f120664c = null;
        return (oh.H) oh.V.B((oh.N) interfaceC14516g, 2, false, 17);
    }

    public C14539s g() {
        return this.f120663b;
    }
}
