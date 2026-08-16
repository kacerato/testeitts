package th;

import hi.C13481E;
import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;

public class C15439o extends AbstractC14545v {

    public final C13486b f117619b;

    public final AbstractC14551y f117620c;

    public final AbstractC14551y f117621d;

    public static class a extends AbstractC14545v {

        public final C14539s f117622b;

        public final C13481E f117623c;

        public a(C14539s c14539s, C13481E c13481e) {
            this.f117622b = c14539s;
            this.f117623c = c13481e;
        }

        public static a u(Object obj) {
            if (obj instanceof a) {
                return (a) obj;
            }
            if (obj != null) {
                return new a(oh.E.G(obj));
            }
            return null;
        }

        @Override
        public oh.B r() {
            return new G0(new InterfaceC14516g[]{this.f117622b, this.f117623c});
        }

        public C14539s v() {
            return this.f117622b;
        }

        public C13481E x() {
            return this.f117623c;
        }

        public a(oh.E e10) {
            if (e10.size() != 2) {
                throw new IllegalArgumentException("expected sequence size of 2");
            }
            this.f117622b = C14539s.F(e10.I(0));
            this.f117623c = C13481E.v(e10.I(1));
        }
    }

    public C15439o(C13486b c13486b, byte[] bArr, byte[] bArr2) {
        this.f117619b = c13486b;
        this.f117620c = new C0(bArr);
        this.f117621d = new C0(bArr2);
    }

    public static C15439o w(Object obj) {
        if (obj instanceof C15439o) {
            return (C15439o) obj;
        }
        if (obj != null) {
            return new C15439o(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        u(c14518h, this.f117619b);
        c14518h.a(this.f117620c);
        c14518h.a(this.f117621d);
        return new G0(c14518h);
    }

    public final void u(C14518h c14518h, InterfaceC14516g interfaceC14516g) {
        if (interfaceC14516g != null) {
            c14518h.a(interfaceC14516g);
        }
    }

    public byte[] v() {
        return this.f117621d.H();
    }

    public C13486b x() {
        return this.f117619b;
    }

    public byte[] y() {
        return this.f117620c.H();
    }

    public C15439o(oh.E e10) {
        int i10 = 0;
        if (e10.size() == 3) {
            this.f117619b = C13486b.v(e10.I(0));
            i10 = 1;
        } else {
            this.f117619b = null;
        }
        this.f117620c = AbstractC14551y.F(e10.I(i10));
        this.f117621d = AbstractC14551y.F(e10.I(i10 + 1));
    }

    public C15439o(byte[] bArr, byte[] bArr2) {
        this(null, bArr, bArr2);
    }
}
