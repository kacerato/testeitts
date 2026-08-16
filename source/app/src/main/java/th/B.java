package th;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.G0;

public class B extends AbstractC14545v {

    public final AbstractC14551y f117398b;

    public final C13486b f117399c;

    public final C14539s f117400d;

    public final C13486b f117401e;

    public B(AbstractC14551y abstractC14551y, C13486b c13486b, C14539s c14539s, C13486b c13486b2) {
        this.f117398b = abstractC14551y;
        this.f117399c = c13486b;
        this.f117400d = c14539s;
        this.f117401e = c13486b2;
    }

    public static B u(Object obj) {
        if (obj instanceof B) {
            return (B) obj;
        }
        if (obj != null) {
            return new B(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f117398b);
        c14518h.a(this.f117399c);
        c14518h.a(this.f117400d);
        c14518h.a(this.f117401e);
        return new G0(c14518h);
    }

    public C14539s v() {
        return this.f117400d;
    }

    public C13486b x() {
        return this.f117401e;
    }

    public C13486b y() {
        return this.f117399c;
    }

    public AbstractC14551y z() {
        return this.f117398b;
    }

    public B(oh.E e10) {
        this.f117398b = AbstractC14551y.F(e10.I(0));
        this.f117399c = C13486b.v(e10.I(1));
        this.f117400d = C14539s.F(e10.I(2));
        this.f117401e = C13486b.v(e10.I(3));
    }

    public B(byte[] bArr, C13486b c13486b, int i10, C13486b c13486b2) {
        this(new C0(bArr), c13486b, new C14539s(i10), c13486b2);
    }
}
