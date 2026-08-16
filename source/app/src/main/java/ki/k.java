package ki;

import java.math.BigInteger;
import jk.AbstractC13875e;
import jk.C13873c;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C14518h;
import oh.C14538r0;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.G0;

public class k extends AbstractC14545v implements r {

    public AbstractC13875e f95276b;

    public byte[] f95277c;

    public C14549x f95278d;

    public k(AbstractC13875e abstractC13875e) {
        this(abstractC13875e, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0061  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public B r() {
        o oVar;
        C14518h c14518h = new C14518h(3);
        if (!this.f95278d.A(r.f95356x5)) {
            if (this.f95278d.A(r.f95358y5)) {
                c14518h.a(new o(this.f95276b.p()).r());
                oVar = new o(this.f95276b.r());
            }
            if (this.f95277c != null) {
                c14518h.a(new C14538r0(this.f95277c));
            }
            return new G0(c14518h);
        }
        c14518h.a(new o(this.f95276b.p()).r());
        oVar = new o(this.f95276b.r());
        c14518h.a(oVar.r());
        if (this.f95277c != null) {
        }
        return new G0(c14518h);
    }

    public AbstractC13875e u() {
        return this.f95276b;
    }

    public byte[] v() {
        return org.bouncycastle.util.a.p(this.f95277c);
    }

    public final void x() {
        C14549x c14549x;
        if (C13873c.o(this.f95276b)) {
            c14549x = r.f95356x5;
        } else {
            if (!C13873c.m(this.f95276b)) {
                throw new IllegalArgumentException("This type of ECCurve is not implemented");
            }
            c14549x = r.f95358y5;
        }
        this.f95278d = c14549x;
    }

    public k(AbstractC13875e abstractC13875e, byte[] bArr) {
        this.f95278d = null;
        this.f95276b = abstractC13875e;
        this.f95277c = org.bouncycastle.util.a.p(bArr);
        x();
    }

    public k(p pVar, BigInteger bigInteger, BigInteger bigInteger2, E e10) {
        int O10;
        int i10;
        int i11;
        AbstractC13875e c1828e;
        this.f95278d = null;
        C14549x u10 = pVar.u();
        this.f95278d = u10;
        if (u10.A(r.f95356x5)) {
            c1828e = new AbstractC13875e.f(((C14539s) pVar.x()).I(), new BigInteger(1, AbstractC14551y.F(e10.I(0)).H()), new BigInteger(1, AbstractC14551y.F(e10.I(1)).H()), bigInteger, bigInteger2);
        } else {
            if (!this.f95278d.A(r.f95358y5)) {
                throw new IllegalArgumentException("This type of ECCurve is not implemented");
            }
            E G10 = E.G(pVar.x());
            int O11 = ((C14539s) G10.I(0)).O();
            C14549x c14549x = (C14549x) G10.I(1);
            if (c14549x.A(r.f95295A5)) {
                i10 = C14539s.F(G10.I(2)).O();
                i11 = 0;
                O10 = 0;
            } else {
                if (!c14549x.A(r.f95297B5)) {
                    throw new IllegalArgumentException("This type of EC basis is not implemented");
                }
                E G11 = E.G(G10.I(2));
                int O12 = C14539s.F(G11.I(0)).O();
                int O13 = C14539s.F(G11.I(1)).O();
                O10 = C14539s.F(G11.I(2)).O();
                i10 = O12;
                i11 = O13;
            }
            c1828e = new AbstractC13875e.C1828e(O11, i10, i11, O10, new BigInteger(1, AbstractC14551y.F(e10.I(0)).H()), new BigInteger(1, AbstractC14551y.F(e10.I(1)).H()), bigInteger, bigInteger2);
        }
        this.f95276b = c1828e;
        if (e10.size() == 3) {
            this.f95277c = ((C14538r0) e10.I(2)).F();
        }
    }
}
