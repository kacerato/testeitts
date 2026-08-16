package Ah;

import java.io.IOException;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.M;
import oh.r;

public class d extends AbstractC14545v {

    public static final int f587k = 1;

    public static final int f588l = 2;

    public static final int f589m = 4;

    public static final int f590n = 8;

    public static final int f591o = 16;

    public static final int f592p = 32;

    public static final int f593q = 64;

    public static final int f594r = 127;

    public static final int f595s = 127;

    public static final int f596t = 0;

    public static final int f597u = 13;

    public static final int f598v = 13;

    public static final int f599w = 2;

    public r f600b;

    public M f601c;

    public M f602d;

    public n f603e;

    public M f604f;

    public e f605g;

    public M f606h;

    public M f607i;

    public int f608j = 0;

    public d(M m10) throws IOException {
        M(m10);
    }

    public static d C(Object obj) throws IOException {
        if (obj instanceof d) {
            return (d) obj;
        }
        if (obj != null) {
            return new d(M.S(obj, 64));
        }
        return null;
    }

    public int A() {
        return this.f608j;
    }

    public g B() throws IOException {
        if ((this.f608j & 2) == 2) {
            return new g(AbstractC14551y.F(this.f602d.M(false, 4)).H());
        }
        throw new IOException("Certification authority reference not set");
    }

    public n D() {
        return this.f603e;
    }

    public final B E() throws IOException {
        C14518h c14518h = new C14518h(7);
        c14518h.a(this.f601c);
        c14518h.a(this.f602d);
        c14518h.a(i.a(73, this.f603e));
        c14518h.a(this.f604f);
        c14518h.a(this.f605g);
        c14518h.a(this.f606h);
        c14518h.a(this.f607i);
        return i.b(78, new G0(c14518h));
    }

    public final B F() throws IOException {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f601c);
        M m10 = this.f602d;
        if (m10 != null) {
            c14518h.a(m10);
        }
        c14518h.a(i.a(73, this.f603e));
        c14518h.a(this.f604f);
        return i.b(78, new G0(c14518h));
    }

    public final void G(M m10) throws IllegalArgumentException {
        if (m10.m(64, 37)) {
            this.f606h = m10;
            this.f608j |= 32;
        } else {
            throw new IllegalArgumentException("Not an Iso7816Tags.APPLICATION_EFFECTIVE_DATE tag :" + m10.g());
        }
    }

    public final void H(M m10) throws IllegalArgumentException {
        if (!m10.m(64, 36)) {
            throw new IllegalArgumentException("Not an Iso7816Tags.APPLICATION_EXPIRATION_DATE tag");
        }
        this.f607i = m10;
        this.f608j |= 64;
    }

    public final void I(e eVar) {
        this.f605g = eVar;
        this.f608j |= 16;
    }

    public final void J(M m10) throws IllegalArgumentException {
        if (!m10.m(64, 32)) {
            throw new IllegalArgumentException("Not an Iso7816Tags.CARDHOLDER_NAME tag");
        }
        this.f604f = m10;
        this.f608j |= 8;
    }

    public final void K(M m10) throws IllegalArgumentException {
        if (m10.m(64, 41)) {
            this.f601c = m10;
            this.f608j |= 1;
        } else {
            throw new IllegalArgumentException("Not an Iso7816Tags.INTERCHANGE_PROFILE tag :" + m10.g());
        }
    }

    public final void L(M m10) throws IllegalArgumentException {
        if (!m10.m(64, 2)) {
            throw new IllegalArgumentException("Not an Iso7816Tags.ISSUER_IDENTIFICATION_NUMBER tag");
        }
        this.f602d = m10;
        this.f608j |= 2;
    }

    public final void M(M m10) throws IOException {
        if (!m10.m(64, 78)) {
            throw new IOException("Bad tag : not an iso7816 CERTIFICATE_CONTENT_TEMPLATE");
        }
        E G10 = E.G(m10.M(false, 16));
        int size = G10.size();
        for (int i10 = 0; i10 < size; i10++) {
            M S10 = M.S(G10.I(i10), 64);
            int g10 = S10.g();
            if (g10 == 2) {
                L(S10);
            } else if (g10 == 32) {
                J(S10);
            } else if (g10 == 41) {
                K(S10);
            } else if (g10 == 73) {
                N(n.u(S10.M(false, 16)));
            } else if (g10 == 76) {
                I(new e(S10));
            } else if (g10 == 36) {
                H(S10);
            } else {
                if (g10 != 37) {
                    this.f608j = 0;
                    throw new IOException("Not a valid iso7816 ASN1TaggedObject tag " + S10.g());
                }
                G(S10);
            }
        }
    }

    public final void N(n nVar) {
        this.f603e = n.u(nVar);
        this.f608j |= 4;
    }

    @Override
    public B r() {
        try {
            int i10 = this.f608j;
            if (i10 == 127) {
                return E();
            }
            if ((i10 & (-3)) == 13) {
                return F();
            }
            return null;
        } catch (IOException unused) {
            return null;
        }
    }

    public m u() {
        if ((this.f608j & 32) == 32) {
            return new m(AbstractC14551y.F(this.f606h.M(false, 4)).H());
        }
        return null;
    }

    public m v() throws IOException {
        if ((this.f608j & 64) == 64) {
            return new m(AbstractC14551y.F(this.f607i.M(false, 4)).H());
        }
        throw new IOException("certificate Expiration Date not set");
    }

    public e x() throws IOException {
        if ((this.f608j & 16) == 16) {
            return this.f605g;
        }
        throw new IOException("Certificate Holder Authorisation not set");
    }

    public f y() {
        return new f(AbstractC14551y.F(this.f604f.M(false, 4)).H());
    }

    public M z() {
        return this.f601c;
    }

    public d(M m10, g gVar, n nVar, f fVar, e eVar, m mVar, m mVar2) {
        K(m10);
        L(i.c(2, gVar.b()));
        N(nVar);
        J(i.c(32, fVar.b()));
        I(eVar);
        G(i.c(37, mVar.c()));
        H(i.c(36, mVar2.c()));
    }
}
