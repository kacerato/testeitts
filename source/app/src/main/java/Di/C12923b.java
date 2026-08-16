package di;

import Xi.G;
import java.math.BigInteger;
import jk.AbstractC13875e;
import jk.C13873c;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;
import rk.InterfaceC15196g;

public class C12923b extends AbstractC14545v {

    public BigInteger f84663b;

    public C12922a f84664c;

    public C14539s f84665d;

    public AbstractC14551y f84666e;

    public C14539s f84667f;

    public AbstractC14551y f84668g;

    public C12923b(G g10) {
        C12922a c12922a;
        this.f84663b = BigInteger.valueOf(0L);
        AbstractC13875e a10 = g10.a();
        if (!C13873c.m(a10)) {
            throw new IllegalArgumentException("only binary domain is possible");
        }
        int[] b10 = ((InterfaceC15196g) a10.v()).d().b();
        if (b10.length == 3) {
            c12922a = new C12922a(b10[2], b10[1]);
        } else {
            if (b10.length != 5) {
                throw new IllegalArgumentException("curve must have a trinomial or pentanomial basis");
            }
            c12922a = new C12922a(b10[4], b10[1], b10[2], b10[3]);
        }
        this.f84664c = c12922a;
        this.f84665d = new C14539s(a10.p().v());
        this.f84666e = new C0(a10.r().e());
        this.f84667f = new C14539s(g10.e());
        this.f84668g = new C0(AbstractC12926e.b(g10.b()));
    }

    public static C12923b z(Object obj) {
        if (obj instanceof C12923b) {
            return (C12923b) obj;
        }
        if (obj != null) {
            return new C12923b(E.G(obj));
        }
        return null;
    }

    public BigInteger A() {
        return this.f84667f.I();
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(6);
        if (this.f84663b.compareTo(BigInteger.valueOf(0L)) != 0) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) new C14539s(this.f84663b)));
        }
        c14518h.a(this.f84664c);
        c14518h.a(this.f84665d);
        c14518h.a(this.f84666e);
        c14518h.a(this.f84667f);
        c14518h.a(this.f84668g);
        return new G0(c14518h);
    }

    public BigInteger u() {
        return this.f84665d.I();
    }

    public byte[] v() {
        return org.bouncycastle.util.a.p(this.f84666e.H());
    }

    public C12922a x() {
        return this.f84664c;
    }

    public byte[] y() {
        return org.bouncycastle.util.a.p(this.f84668g.H());
    }

    public C12923b(E e10) {
        this.f84663b = BigInteger.valueOf(0L);
        int i10 = 0;
        if (e10.I(0) instanceof M) {
            M m10 = (M) e10.I(0);
            if (!m10.X() || m10.g() != 0) {
                throw new IllegalArgumentException("object parse error");
            }
            this.f84663b = C14539s.F(m10.c()).I();
            i10 = 1;
        }
        this.f84664c = C12922a.u(e10.I(i10));
        this.f84665d = C14539s.F(e10.I(i10 + 1));
        this.f84666e = AbstractC14551y.F(e10.I(i10 + 2));
        this.f84667f = C14539s.F(e10.I(i10 + 3));
        this.f84668g = AbstractC14551y.F(e10.I(i10 + 4));
    }
}
