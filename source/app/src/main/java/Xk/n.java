package Xk;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;

public class n extends AbstractC14545v {

    public int f29589b;

    public int[] f29590c;

    public int[] f29591d;

    public int[] f29592e;

    public n(int i10, int[] iArr, int[] iArr2, int[] iArr3) {
        this.f29589b = i10;
        this.f29590c = iArr;
        this.f29591d = iArr2;
        this.f29592e = iArr3;
    }

    public static int u(InterfaceC14516g interfaceC14516g) {
        int O10 = ((C14539s) interfaceC14516g).O();
        if (O10 > 0) {
            return O10;
        }
        throw new IllegalArgumentException("BigInteger not in Range: " + O10);
    }

    public static n w(Object obj) {
        if (obj instanceof n) {
            return (n) obj;
        }
        if (obj != null) {
            return new n(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        C14518h c14518h2 = new C14518h();
        C14518h c14518h3 = new C14518h();
        for (int i10 = 0; i10 < this.f29590c.length; i10++) {
            c14518h.a(new C14539s(this.f29590c[i10]));
            c14518h2.a(new C14539s(this.f29591d[i10]));
            c14518h3.a(new C14539s(this.f29592e[i10]));
        }
        C14518h c14518h4 = new C14518h();
        c14518h4.a(new C14539s(this.f29589b));
        c14518h4.a(new G0(c14518h));
        c14518h4.a(new G0(c14518h2));
        c14518h4.a(new G0(c14518h3));
        return new G0(c14518h4);
    }

    public int[] v() {
        return org.bouncycastle.util.a.s(this.f29590c);
    }

    public int[] x() {
        return org.bouncycastle.util.a.s(this.f29592e);
    }

    public int y() {
        return this.f29589b;
    }

    public int[] z() {
        return org.bouncycastle.util.a.s(this.f29591d);
    }

    public n(E e10) {
        if (e10.size() != 4) {
            throw new IllegalArgumentException("sie of seqOfParams = " + e10.size());
        }
        this.f29589b = u(e10.I(0));
        E e11 = (E) e10.I(1);
        E e12 = (E) e10.I(2);
        E e13 = (E) e10.I(3);
        if (e11.size() != this.f29589b || e12.size() != this.f29589b || e13.size() != this.f29589b) {
            throw new IllegalArgumentException("invalid size of sequences");
        }
        this.f29590c = new int[e11.size()];
        this.f29591d = new int[e12.size()];
        this.f29592e = new int[e13.size()];
        for (int i10 = 0; i10 < this.f29589b; i10++) {
            this.f29590c[i10] = u(e11.I(i10));
            this.f29591d[i10] = u(e12.I(i10));
            this.f29592e[i10] = u(e13.I(i10));
        }
    }
}
