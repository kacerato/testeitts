package wh;

import hi.C13486b;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14538r0;
import oh.E;
import oh.G0;
import oh.M;
import th.InterfaceC15427c;

public class q extends AbstractC14545v {

    public C13486b f127538b;

    public AbstractC14508c f127539c;

    public q(C13486b c13486b, C14538r0 c14538r0) {
        this.f127538b = c13486b;
        this.f127539c = c14538r0;
    }

    public static q v(Object obj) {
        if (obj instanceof q) {
            return (q) obj;
        }
        if (obj != null) {
            return new q(E.G(obj));
        }
        return null;
    }

    public static q w(M m10, boolean z10) {
        return v(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f127538b);
        c14518h.a(this.f127539c);
        return new G0(c14518h);
    }

    public C13486b u() {
        return this.f127538b;
    }

    public AbstractC14508c x() {
        return this.f127539c;
    }

    public q(E e10) {
        this.f127538b = C13486b.v(e10.I(0));
        this.f127539c = AbstractC14508c.H(e10.I(1));
    }

    public q(th.B b10, C14538r0 c14538r0) {
        this(new C13486b(InterfaceC15427c.f117570a, b10), c14538r0);
    }
}
