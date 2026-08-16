package Xh;

import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.C14517g0;
import oh.C14518h;
import oh.C14527l0;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.M;
import oh.V0;

public class g extends AbstractC14545v implements t {

    public C14549x f28970b;

    public InterfaceC14516g f28971c;

    public boolean f28972d;

    public g(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f28972d = true;
        this.f28970b = c14549x;
        this.f28971c = interfaceC14516g;
    }

    public static g w(Object obj) {
        if (obj instanceof g) {
            return (g) obj;
        }
        if (obj != null) {
            return new g(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f28970b);
        InterfaceC14516g interfaceC14516g = this.f28971c;
        if (interfaceC14516g != null) {
            c14518h.a(new C14527l0(true, 0, interfaceC14516g));
        }
        return this.f28972d ? new C14517g0(c14518h) : new V0(c14518h);
    }

    public InterfaceC14516g u() {
        return this.f28971c;
    }

    public C14549x v() {
        return this.f28970b;
    }

    public g(oh.E e10) {
        this.f28972d = true;
        Enumeration J10 = e10.J();
        this.f28970b = (C14549x) J10.nextElement();
        if (J10.hasMoreElements()) {
            this.f28971c = ((M) J10.nextElement()).O();
        }
        this.f28972d = e10 instanceof C14517g0;
    }
}
