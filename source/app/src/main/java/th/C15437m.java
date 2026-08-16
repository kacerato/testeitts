package th;

import hi.C13486b;
import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class C15437m extends AbstractC14545v {

    public final AbstractC14551y f117612b;

    public final C14539s f117613c;

    public final L f117614d;

    public final C13486b f117615e;

    public C15437m(oh.E e10) {
        C13486b c13486b;
        this.f117612b = AbstractC14551y.F(e10.I(0));
        this.f117613c = C14539s.F(e10.I(1));
        L l10 = null;
        if (e10.size() > 2) {
            c13486b = null;
            for (int i10 = 2; i10 < e10.size(); i10++) {
                oh.B r10 = e10.I(i10).r();
                l10 = r10 instanceof oh.E ? L.v(r10) : l10;
                if (r10 instanceof oh.M) {
                    oh.M m10 = (oh.M) r10;
                    if (!m10.p(0)) {
                        throw new IllegalArgumentException("unknown tag " + oh.V.y(m10));
                    }
                    c13486b = C13486b.w(m10, true);
                }
            }
        } else {
            c13486b = null;
        }
        this.f117614d = l10;
        this.f117615e = c13486b;
    }

    public static C15437m y(Object obj) {
        if (obj instanceof C15437m) {
            return (C15437m) obj;
        }
        if (obj != null) {
            return new C15437m(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f117612b);
        c14518h.a(this.f117613c);
        L l10 = this.f117614d;
        if (l10 != null) {
            c14518h.a(l10);
        }
        C13486b c13486b = this.f117615e;
        if (c13486b != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) c13486b));
        }
        return new G0(c14518h);
    }

    public AbstractC14551y u() {
        return this.f117612b;
    }

    public C14539s v() {
        return this.f117613c;
    }

    public C13486b x() {
        return this.f117615e;
    }

    public L z() {
        return this.f117614d;
    }

    public C15437m(byte[] bArr, BigInteger bigInteger) {
        this(bArr, new C14539s(bigInteger));
    }

    public C15437m(byte[] bArr, BigInteger bigInteger, L l10) {
        this.f117612b = new C0(bArr);
        this.f117613c = new C14539s(bigInteger);
        this.f117614d = l10;
        this.f117615e = null;
    }

    public C15437m(byte[] bArr, BigInteger bigInteger, L l10, C13486b c13486b) {
        this.f117612b = new C0(bArr);
        this.f117613c = new C14539s(bigInteger);
        this.f117614d = l10;
        this.f117615e = c13486b;
    }

    public C15437m(byte[] bArr, C14539s c14539s) {
        this.f117612b = new C0(bArr);
        this.f117613c = c14539s;
        this.f117614d = null;
        this.f117615e = null;
    }
}
