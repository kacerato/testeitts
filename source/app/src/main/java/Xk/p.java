package Xk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;

public class p extends AbstractC14545v {

    public C14539s f29601b;

    public C14549x f29602c;

    public C14539s f29603d;

    public byte[][] f29604e;

    public byte[][] f29605f;

    public byte[] f29606g;

    public p(int i10, short[][] sArr, short[][] sArr2, short[] sArr3) {
        this.f29601b = new C14539s(0L);
        this.f29603d = new C14539s(i10);
        this.f29604e = Vl.c.c(sArr);
        this.f29605f = Vl.c.c(sArr2);
        this.f29606g = Vl.c.a(sArr3);
    }

    public static p z(Object obj) {
        if (obj instanceof p) {
            return (p) obj;
        }
        if (obj != null) {
            return new p(E.G(obj));
        }
        return null;
    }

    public C14539s A() {
        return this.f29601b;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        InterfaceC14516g interfaceC14516g = this.f29601b;
        if (interfaceC14516g == null) {
            interfaceC14516g = this.f29602c;
        }
        c14518h.a(interfaceC14516g);
        c14518h.a(this.f29603d);
        C14518h c14518h2 = new C14518h();
        for (int i10 = 0; i10 < this.f29604e.length; i10++) {
            c14518h2.a(new C0(this.f29604e[i10]));
        }
        c14518h.a(new G0(c14518h2));
        C14518h c14518h3 = new C14518h();
        for (int i11 = 0; i11 < this.f29605f.length; i11++) {
            c14518h3.a(new C0(this.f29605f[i11]));
        }
        c14518h.a(new G0(c14518h3));
        C14518h c14518h4 = new C14518h();
        c14518h4.a(new C0(this.f29606g));
        c14518h.a(new G0(c14518h4));
        return new G0(c14518h);
    }

    public short[][] u() {
        return Vl.c.d(this.f29604e);
    }

    public short[] v() {
        return Vl.c.b(this.f29606g);
    }

    public short[][] x() {
        return Vl.c.d(this.f29605f);
    }

    public int y() {
        return this.f29603d.O();
    }

    public p(E e10) {
        if (e10.I(0) instanceof C14539s) {
            this.f29601b = C14539s.F(e10.I(0));
        } else {
            this.f29602c = C14549x.K(e10.I(0));
        }
        this.f29603d = C14539s.F(e10.I(1));
        E G10 = E.G(e10.I(2));
        this.f29604e = new byte[G10.size()];
        for (int i10 = 0; i10 < G10.size(); i10++) {
            this.f29604e[i10] = AbstractC14551y.F(G10.I(i10)).H();
        }
        E e11 = (E) e10.I(3);
        this.f29605f = new byte[e11.size()];
        for (int i11 = 0; i11 < e11.size(); i11++) {
            this.f29605f[i11] = AbstractC14551y.F(e11.I(i11)).H();
        }
        this.f29606g = AbstractC14551y.F(((E) e10.I(4)).I(0)).H();
    }
}
