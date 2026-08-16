package Xk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;

public class k extends AbstractC14545v {

    public int f29518b;

    public int f29519c;

    public byte[] f29520d;

    public byte[] f29521e;

    public byte[] f29522f;

    public byte[] f29523g;

    public byte[] f29524h;

    public k(int i10, int i11, Wl.h hVar, Wl.y yVar, Wl.x xVar, Wl.x xVar2, Wl.e eVar) {
        this.f29518b = i10;
        this.f29519c = i11;
        this.f29520d = hVar.e();
        this.f29521e = yVar.o();
        this.f29522f = eVar.b();
        this.f29523g = xVar.b();
        this.f29524h = xVar2.b();
    }

    public static k w(Object obj) {
        if (obj instanceof k) {
            return (k) obj;
        }
        if (obj != null) {
            return new k(E.G(obj));
        }
        return null;
    }

    public Wl.x A() {
        return new Wl.x(this.f29524h);
    }

    public Wl.e B() {
        return new Wl.e(this.f29522f);
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(new C14539s(this.f29518b));
        c14518h.a(new C14539s(this.f29519c));
        c14518h.a(new C0(this.f29520d));
        c14518h.a(new C0(this.f29521e));
        c14518h.a(new C0(this.f29523g));
        c14518h.a(new C0(this.f29524h));
        c14518h.a(new C0(this.f29522f));
        return new G0(c14518h);
    }

    public Wl.h u() {
        return new Wl.h(this.f29520d);
    }

    public Wl.y v() {
        return new Wl.y(u(), this.f29521e);
    }

    public int x() {
        return this.f29519c;
    }

    public int y() {
        return this.f29518b;
    }

    public Wl.x z() {
        return new Wl.x(this.f29523g);
    }

    public k(E e10) {
        this.f29518b = ((C14539s) e10.I(0)).O();
        this.f29519c = ((C14539s) e10.I(1)).O();
        this.f29520d = ((AbstractC14551y) e10.I(2)).H();
        this.f29521e = ((AbstractC14551y) e10.I(3)).H();
        this.f29523g = ((AbstractC14551y) e10.I(4)).H();
        this.f29524h = ((AbstractC14551y) e10.I(5)).H();
        this.f29522f = ((AbstractC14551y) e10.I(6)).H();
    }
}
