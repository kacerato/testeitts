package qh;

import java.math.BigInteger;
import java.util.Date;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14530n;
import oh.C14539s;
import oh.C14548w0;
import oh.E;
import oh.G0;
import oh.M0;
import oh.Q;

public class C15106g extends AbstractC14545v {

    public final BigInteger f108150b;

    public final String f108151c;

    public final C14530n f108152d;

    public final C14530n f108153e;

    public final AbstractC14551y f108154f;

    public final String f108155g;

    public C15106g(BigInteger bigInteger, String str, Date date, Date date2, byte[] bArr, String str2) {
        this.f108150b = bigInteger;
        this.f108151c = str;
        this.f108152d = new C14548w0(date);
        this.f108153e = new C14548w0(date2);
        this.f108154f = new C0(org.bouncycastle.util.a.p(bArr));
        this.f108155g = str2;
    }

    public static C15106g z(Object obj) {
        if (obj instanceof C15106g) {
            return (C15106g) obj;
        }
        if (obj != null) {
            return new C15106g(E.G(obj));
        }
        return null;
    }

    public C14530n A() {
        return this.f108153e;
    }

    public BigInteger B() {
        return this.f108150b;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(6);
        c14518h.a(new C14539s(this.f108150b));
        c14518h.a(new M0(this.f108151c));
        c14518h.a(this.f108152d);
        c14518h.a(this.f108153e);
        c14518h.a(this.f108154f);
        if (this.f108155g != null) {
            c14518h.a(new M0(this.f108155g));
        }
        return new G0(c14518h);
    }

    public String u() {
        return this.f108155g;
    }

    public C14530n v() {
        return this.f108152d;
    }

    public byte[] x() {
        return org.bouncycastle.util.a.p(this.f108154f.H());
    }

    public String y() {
        return this.f108151c;
    }

    public C15106g(E e10) {
        this.f108150b = C14539s.F(e10.I(0)).I();
        this.f108151c = Q.F(e10.I(1)).getString();
        this.f108152d = C14530n.J(e10.I(2));
        this.f108153e = C14530n.J(e10.I(3));
        this.f108154f = AbstractC14551y.F(e10.I(4));
        this.f108155g = e10.size() == 6 ? Q.F(e10.I(5)).getString() : null;
    }
}
