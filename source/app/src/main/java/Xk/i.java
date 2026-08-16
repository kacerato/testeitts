package Xk;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class i extends AbstractC14545v {

    public int f29508b;

    public int f29509c;

    public byte[] f29510d;

    public byte[] f29511e;

    public byte[] f29512f;

    public C13486b f29513g;

    public i(int i10, int i11, Wl.h hVar, Wl.y yVar, Wl.x xVar, C13486b c13486b) {
        this.f29508b = i10;
        this.f29509c = i11;
        this.f29510d = hVar.e();
        this.f29511e = yVar.o();
        this.f29512f = xVar.b();
        this.f29513g = c13486b;
    }

    public static i y(Object obj) {
        if (obj instanceof i) {
            return (i) obj;
        }
        if (obj != null) {
            return new i(E.G(obj));
        }
        return null;
    }

    public int A() {
        return this.f29508b;
    }

    public Wl.x B() {
        return new Wl.x(this.f29512f);
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(new C14539s(this.f29508b));
        c14518h.a(new C14539s(this.f29509c));
        c14518h.a(new C0(this.f29510d));
        c14518h.a(new C0(this.f29511e));
        c14518h.a(new C0(this.f29512f));
        c14518h.a(this.f29513g);
        return new G0(c14518h);
    }

    public C13486b u() {
        return this.f29513g;
    }

    public Wl.h v() {
        return new Wl.h(this.f29510d);
    }

    public Wl.y x() {
        return new Wl.y(v(), this.f29511e);
    }

    public int z() {
        return this.f29509c;
    }

    public i(E e10) {
        this.f29508b = ((C14539s) e10.I(0)).O();
        this.f29509c = ((C14539s) e10.I(1)).O();
        this.f29510d = ((AbstractC14551y) e10.I(2)).H();
        this.f29511e = ((AbstractC14551y) e10.I(3)).H();
        this.f29512f = ((AbstractC14551y) e10.I(4)).H();
        this.f29513g = C13486b.v(e10.I(5));
    }
}
