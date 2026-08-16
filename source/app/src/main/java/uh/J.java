package uh;

import hi.C13486b;
import oh.AbstractC14508c;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14538r0;
import oh.G0;

public class J extends AbstractC14545v {

    public C13486b f120586b;

    public AbstractC14508c f120587c;

    public J(C13486b c13486b, AbstractC14508c abstractC14508c) {
        this.f120586b = c13486b;
        this.f120587c = abstractC14508c;
    }

    public static J v(Object obj) {
        if (obj instanceof J) {
            return (J) obj;
        }
        if (obj != null) {
            return new J(oh.E.G(obj));
        }
        return null;
    }

    public static J w(oh.M m10, boolean z10) {
        return new J(oh.E.H(m10, z10));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f120586b);
        c14518h.a(this.f120587c);
        return new G0(c14518h);
    }

    public C13486b u() {
        return this.f120586b;
    }

    public C14538r0 x() {
        return C14538r0.N(this.f120587c);
    }

    public AbstractC14508c y() {
        return this.f120587c;
    }

    public J(C13486b c13486b, byte[] bArr) {
        this.f120586b = c13486b;
        this.f120587c = new C14538r0(bArr);
    }

    public J(oh.E e10) {
        this.f120586b = C13486b.v(e10.I(0));
        this.f120587c = (C14538r0) e10.I(1);
    }
}
