package fi;

import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;

public class C13225a extends AbstractC14545v {

    public C14549x f86381b;

    public InterfaceC14516g f86382c;

    public C13225a(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f86381b = c14549x;
        this.f86382c = interfaceC14516g;
    }

    public static C13225a u(Object obj) {
        if (obj instanceof C13225a) {
            return (C13225a) obj;
        }
        if (obj != null) {
            return new C13225a(E.G(obj));
        }
        throw new IllegalArgumentException("null value in getInstance()");
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f86381b);
        c14518h.a(this.f86382c);
        return new G0(c14518h);
    }

    public C14549x v() {
        return this.f86381b;
    }

    public InterfaceC14516g x() {
        return this.f86382c;
    }

    public C13225a(E e10) {
        this.f86381b = (C14549x) e10.I(0);
        this.f86382c = e10.I(1);
    }
}
