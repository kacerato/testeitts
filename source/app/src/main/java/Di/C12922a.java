package di;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class C12922a extends AbstractC14545v {

    public int f84659b;

    public int f84660c;

    public int f84661d;

    public int f84662e;

    public C12922a(int i10, int i11) {
        this(i10, i11, 0, 0);
    }

    public static C12922a u(Object obj) {
        if (obj instanceof C12922a) {
            return (C12922a) obj;
        }
        if (obj != null) {
            return new C12922a(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(new C14539s(this.f84659b));
        if (this.f84661d == 0) {
            c14518h.a(new C14539s(this.f84660c));
        } else {
            C14518h c14518h2 = new C14518h(3);
            c14518h2.a(new C14539s(this.f84660c));
            c14518h2.a(new C14539s(this.f84661d));
            c14518h2.a(new C14539s(this.f84662e));
            c14518h.a(new G0(c14518h2));
        }
        return new G0(c14518h);
    }

    public int v() {
        return this.f84660c;
    }

    public int x() {
        return this.f84661d;
    }

    public int y() {
        return this.f84662e;
    }

    public int z() {
        return this.f84659b;
    }

    public C12922a(int i10, int i11, int i12, int i13) {
        this.f84659b = i10;
        this.f84660c = i11;
        this.f84661d = i12;
        this.f84662e = i13;
    }

    public C12922a(E e10) {
        this.f84659b = C14539s.F(e10.I(0)).M();
        if (e10.I(1) instanceof C14539s) {
            this.f84660c = ((C14539s) e10.I(1)).M();
        } else {
            if (!(e10.I(1) instanceof E)) {
                throw new IllegalArgumentException("object parse error");
            }
            E G10 = E.G(e10.I(1));
            this.f84660c = C14539s.F(G10.I(0)).M();
            this.f84661d = C14539s.F(G10.I(1)).M();
            this.f84662e = C14539s.F(G10.I(2)).M();
        }
    }
}
