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

public class j extends AbstractC14545v {

    public final int f29514b;

    public final int f29515c;

    public final Wl.e f29516d;

    public final C13486b f29517e;

    public j(int i10, int i11, Wl.e eVar, C13486b c13486b) {
        this.f29514b = i10;
        this.f29515c = i11;
        this.f29516d = new Wl.e(eVar.b());
        this.f29517e = c13486b;
    }

    public static j w(Object obj) {
        if (obj instanceof j) {
            return (j) obj;
        }
        if (obj != null) {
            return new j(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(new C14539s(this.f29514b));
        c14518h.a(new C14539s(this.f29515c));
        c14518h.a(new C0(this.f29516d.b()));
        c14518h.a(this.f29517e);
        return new G0(c14518h);
    }

    public C13486b u() {
        return this.f29517e;
    }

    public Wl.e v() {
        return this.f29516d;
    }

    public int x() {
        return this.f29514b;
    }

    public int y() {
        return this.f29515c;
    }

    public j(E e10) {
        this.f29514b = ((C14539s) e10.I(0)).O();
        this.f29515c = ((C14539s) e10.I(1)).O();
        this.f29516d = new Wl.e(((AbstractC14551y) e10.I(2)).H());
        this.f29517e = C13486b.v(e10.I(3));
    }
}
