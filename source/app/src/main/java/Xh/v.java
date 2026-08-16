package Xh;

import hi.C13486b;
import java.io.IOException;
import java.util.Enumeration;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.C14538r0;
import oh.C14539s;
import oh.G;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class v extends AbstractC14545v {

    public C14539s f29157b;

    public C13486b f29158c;

    public AbstractC14551y f29159d;

    public G f29160e;

    public AbstractC14508c f29161f;

    public v(C13486b c13486b, InterfaceC14516g interfaceC14516g) throws IOException {
        this(c13486b, interfaceC14516g, null, null);
    }

    public static int C(C14539s c14539s) {
        int O10 = c14539s.O();
        if (O10 < 0 || O10 > 1) {
            throw new IllegalArgumentException("invalid version for private key info");
        }
        return O10;
    }

    public static v v(Object obj) {
        if (obj instanceof v) {
            return (v) obj;
        }
        if (obj != null) {
            return new v(oh.E.G(obj));
        }
        return null;
    }

    public static v w(M m10, boolean z10) {
        return v(oh.E.H(m10, z10));
    }

    public AbstractC14508c A() {
        return this.f29161f;
    }

    public C14539s B() {
        return this.f29157b;
    }

    public boolean D() {
        return this.f29161f != null;
    }

    public InterfaceC14516g E() throws IOException {
        return oh.B.B(this.f29159d.H());
    }

    public InterfaceC14516g F() throws IOException {
        AbstractC14508c abstractC14508c = this.f29161f;
        if (abstractC14508c == null) {
            return null;
        }
        return oh.B.B(abstractC14508c.J());
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(5);
        c14518h.a(this.f29157b);
        c14518h.a(this.f29158c);
        c14518h.a(this.f29159d);
        G g10 = this.f29160e;
        if (g10 != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) g10));
        }
        AbstractC14508c abstractC14508c = this.f29161f;
        if (abstractC14508c != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) abstractC14508c));
        }
        return new G0(c14518h);
    }

    public G u() {
        return this.f29160e;
    }

    public AbstractC14551y x() {
        return new C0(this.f29159d.H());
    }

    public C13486b y() {
        return this.f29158c;
    }

    public int z() {
        return this.f29159d.I();
    }

    public v(C13486b c13486b, InterfaceC14516g interfaceC14516g, G g10) throws IOException {
        this(c13486b, interfaceC14516g, g10, null);
    }

    public v(C13486b c13486b, InterfaceC14516g interfaceC14516g, G g10, byte[] bArr) throws IOException {
        this.f29157b = new C14539s(bArr != null ? org.bouncycastle.util.b.f102316b : org.bouncycastle.util.b.f102315a);
        this.f29158c = c13486b;
        this.f29159d = new C0(interfaceC14516g);
        this.f29160e = g10;
        this.f29161f = bArr == null ? null : new C14538r0(bArr);
    }

    public v(oh.E e10) {
        Enumeration J10 = e10.J();
        C14539s F10 = C14539s.F(J10.nextElement());
        this.f29157b = F10;
        int C10 = C(F10);
        this.f29158c = C13486b.v(J10.nextElement());
        this.f29159d = AbstractC14551y.F(J10.nextElement());
        int i10 = -1;
        while (J10.hasMoreElements()) {
            M m10 = (M) J10.nextElement();
            int g10 = m10.g();
            if (g10 <= i10) {
                throw new IllegalArgumentException("invalid optional field in private key info");
            }
            if (g10 == 0) {
                this.f29160e = G.G(m10, false);
            } else {
                if (g10 != 1) {
                    throw new IllegalArgumentException("unknown optional field in private key info");
                }
                if (C10 < 1) {
                    throw new IllegalArgumentException("'publicKey' requires version v2(1) or later");
                }
                this.f29161f = AbstractC14508c.I(m10, false);
            }
            i10 = g10;
        }
    }
}
