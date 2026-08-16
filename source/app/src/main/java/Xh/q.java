package Xh;

import hi.C13486b;
import java.math.BigInteger;
import java.util.Enumeration;
import oh.A0;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class q extends AbstractC14545v {

    public static final C13486b f28991f = new C13486b(t.f29144w1, A0.f98776c);

    public final AbstractC14551y f28992b;

    public final C14539s f28993c;

    public final C14539s f28994d;

    public final C13486b f28995e;

    public q(oh.E e10) {
        Enumeration J10 = e10.J();
        this.f28992b = (AbstractC14551y) J10.nextElement();
        this.f28993c = (C14539s) J10.nextElement();
        if (J10.hasMoreElements()) {
            Object nextElement = J10.nextElement();
            if (nextElement instanceof C14539s) {
                this.f28994d = C14539s.F(nextElement);
                nextElement = J10.hasMoreElements() ? J10.nextElement() : null;
            } else {
                this.f28994d = null;
            }
            if (nextElement != null) {
                this.f28995e = C13486b.v(nextElement);
                return;
            }
        } else {
            this.f28994d = null;
        }
        this.f28995e = null;
    }

    public static q u(Object obj) {
        if (obj instanceof q) {
            return (q) obj;
        }
        if (obj != null) {
            return new q(oh.E.G(obj));
        }
        return null;
    }

    public boolean A() {
        C13486b c13486b = this.f28995e;
        return c13486b == null || c13486b.equals(f28991f);
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f28992b);
        c14518h.a(this.f28993c);
        C14539s c14539s = this.f28994d;
        if (c14539s != null) {
            c14518h.a(c14539s);
        }
        C13486b c13486b = this.f28995e;
        if (c13486b != null && !c13486b.equals(f28991f)) {
            c14518h.a(this.f28995e);
        }
        return new G0(c14518h);
    }

    public BigInteger v() {
        return this.f28993c.I();
    }

    public BigInteger x() {
        C14539s c14539s = this.f28994d;
        if (c14539s != null) {
            return c14539s.I();
        }
        return null;
    }

    public C13486b y() {
        C13486b c13486b = this.f28995e;
        return c13486b != null ? c13486b : f28991f;
    }

    public byte[] z() {
        return org.bouncycastle.util.a.p(this.f28992b.H());
    }

    public q(byte[] bArr, int i10) {
        this(bArr, i10, 0);
    }

    public q(byte[] bArr, int i10, int i11) {
        this(bArr, i10, i11, null);
    }

    public q(byte[] bArr, int i10, int i11, C13486b c13486b) {
        this.f28992b = new C0(org.bouncycastle.util.a.p(bArr));
        this.f28993c = new C14539s(i10);
        this.f28994d = i11 > 0 ? new C14539s(i11) : null;
        this.f28995e = c13486b;
    }

    public q(byte[] bArr, int i10, C13486b c13486b) {
        this(bArr, i10, 0, c13486b);
    }
}
