package ki;

import java.math.BigInteger;
import jk.AbstractC13875e;
import jk.C13873c;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import rk.InterfaceC15196g;

public class l extends AbstractC14545v implements r {

    public static final BigInteger f95279h = BigInteger.valueOf(1);

    public p f95280b;

    public AbstractC13875e f95281c;

    public n f95282d;

    public BigInteger f95283e;

    public BigInteger f95284f;

    public byte[] f95285g;

    public l(AbstractC13875e abstractC13875e, n nVar, BigInteger bigInteger) {
        this(abstractC13875e, nVar, bigInteger, null, null);
    }

    public static l B(Object obj) {
        if (obj instanceof l) {
            return (l) obj;
        }
        if (obj != null) {
            return new l(E.G(obj));
        }
        return null;
    }

    public BigInteger A() {
        return this.f95284f;
    }

    public BigInteger C() {
        return this.f95283e;
    }

    public byte[] D() {
        return org.bouncycastle.util.a.p(this.f95285g);
    }

    public boolean E() {
        return this.f95285g != null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(6);
        c14518h.a(new C14539s(f95279h));
        c14518h.a(this.f95280b);
        c14518h.a(new k(this.f95281c, this.f95285g));
        c14518h.a(this.f95282d);
        c14518h.a(new C14539s(this.f95283e));
        if (this.f95284f != null) {
            c14518h.a(new C14539s(this.f95284f));
        }
        return new G0(c14518h);
    }

    public n u() {
        return this.f95282d;
    }

    public AbstractC13875e v() {
        return this.f95281c;
    }

    public k x() {
        return new k(this.f95281c, this.f95285g);
    }

    public p y() {
        return this.f95280b;
    }

    public jk.i z() {
        return this.f95282d.u();
    }

    public l(AbstractC13875e abstractC13875e, n nVar, BigInteger bigInteger, BigInteger bigInteger2) {
        this(abstractC13875e, nVar, bigInteger, bigInteger2, null);
    }

    public l(AbstractC13875e abstractC13875e, n nVar, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        p pVar;
        this.f95281c = abstractC13875e;
        this.f95282d = nVar;
        this.f95283e = bigInteger;
        this.f95284f = bigInteger2;
        this.f95285g = org.bouncycastle.util.a.p(bArr);
        if (C13873c.o(abstractC13875e)) {
            pVar = new p(abstractC13875e.v().b());
        } else {
            if (!C13873c.m(abstractC13875e)) {
                throw new IllegalArgumentException("'curve' is of an unsupported type");
            }
            int[] b10 = ((InterfaceC15196g) abstractC13875e.v()).d().b();
            if (b10.length == 3) {
                pVar = new p(b10[2], b10[1]);
            } else {
                if (b10.length != 5) {
                    throw new IllegalArgumentException("Only trinomial and pentomial curves are supported");
                }
                pVar = new p(b10[4], b10[1], b10[2], b10[3]);
            }
        }
        this.f95280b = pVar;
    }

    public l(E e10) {
        if (!(e10.I(0) instanceof C14539s) || !((C14539s) e10.I(0)).J(1)) {
            throw new IllegalArgumentException("bad version in X9ECParameters");
        }
        this.f95283e = ((C14539s) e10.I(4)).I();
        if (e10.size() == 6) {
            this.f95284f = ((C14539s) e10.I(5)).I();
        }
        k kVar = new k(p.v(e10.I(1)), this.f95283e, this.f95284f, E.G(e10.I(2)));
        this.f95281c = kVar.u();
        InterfaceC14516g I10 = e10.I(3);
        if (I10 instanceof n) {
            this.f95282d = (n) I10;
        } else {
            this.f95282d = new n(this.f95281c, (AbstractC14551y) I10);
        }
        this.f95285g = kVar.v();
    }
}
