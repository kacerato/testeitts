package th;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;

public class C15436l extends AbstractC14545v {

    public final C14539s f117608b;

    public final L f117609c;

    public C15438n f117610d;

    public AbstractC14551y f117611e;

    public C15436l(C14539s c14539s, L l10) {
        this(c14539s, l10, null, null);
    }

    public static C15436l w(Object obj) {
        if (obj instanceof C15436l) {
            return (C15436l) obj;
        }
        if (obj != null) {
            return new C15436l(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(4);
        c14518h.a(this.f117608b);
        c14518h.a(this.f117609c);
        C15438n c15438n = this.f117610d;
        if (c15438n != null) {
            c14518h.a(c15438n);
        }
        AbstractC14551y abstractC14551y = this.f117611e;
        if (abstractC14551y != null) {
            c14518h.a(abstractC14551y);
        }
        return new G0(c14518h);
    }

    public C14539s u() {
        return this.f117608b;
    }

    public C15438n v() {
        return this.f117610d;
    }

    public AbstractC14551y x() {
        return this.f117611e;
    }

    public L y() {
        return this.f117609c;
    }

    public C15436l(C14539s c14539s, L l10, C15438n c15438n, AbstractC14551y abstractC14551y) {
        if (c14539s == null) {
            throw new IllegalArgumentException("'certReqId' cannot be null");
        }
        if (l10 == null) {
            throw new IllegalArgumentException("'status' cannot be null");
        }
        this.f117608b = c14539s;
        this.f117609c = l10;
        this.f117610d = c15438n;
        this.f117611e = abstractC14551y;
    }

    public C15436l(oh.E e10) {
        InterfaceC14516g I10;
        this.f117608b = C14539s.F(e10.I(0));
        this.f117609c = L.v(e10.I(1));
        if (e10.size() >= 3) {
            if (e10.size() == 3) {
                I10 = e10.I(2);
                if (!(I10 instanceof AbstractC14551y)) {
                    this.f117610d = C15438n.v(I10);
                    return;
                }
            } else {
                this.f117610d = C15438n.v(e10.I(2));
                I10 = e10.I(3);
            }
            this.f117611e = AbstractC14551y.F(I10);
        }
    }
}
