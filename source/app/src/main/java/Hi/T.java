package hi;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class T extends AbstractC14545v {

    public final C14549x f90729b;

    public final InterfaceC14516g f90730c;

    public T(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f90729b = c14549x;
        this.f90730c = interfaceC14516g;
    }

    public static T u(Object obj) {
        if (obj instanceof T) {
            return (T) obj;
        }
        if (obj != null) {
            return new T(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f90729b);
        c14518h.a(new K0(true, 0, this.f90730c));
        return new G0(c14518h);
    }

    public C14549x v() {
        return this.f90729b;
    }

    public InterfaceC14516g x() {
        return this.f90730c;
    }

    public T(oh.E e10) {
        this.f90729b = C14549x.K(e10.I(0));
        this.f90730c = oh.M.R(e10.I(1)).O();
    }
}
