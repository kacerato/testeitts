package hi;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.C14554z0;
import oh.G0;
import oh.InterfaceC14516g;

public class Z extends AbstractC14545v {

    public C14549x f90751b;

    public InterfaceC14516g f90752c;

    public Z(String str) {
        this.f90751b = Y.f90749j;
        this.f90752c = new C14554z0(str);
    }

    public static Z u(Object obj) {
        if (obj instanceof Z) {
            return (Z) obj;
        }
        if (obj != null) {
            return new Z(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f90751b);
        c14518h.a(this.f90752c);
        return new G0(c14518h);
    }

    public String toString() {
        return "PolicyQualifierInfo[" + ((Object) this.f90751b) + ", " + ((Object) this.f90752c) + "]";
    }

    public C14549x v() {
        return this.f90751b;
    }

    public InterfaceC14516g x() {
        return this.f90752c;
    }

    public Z(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f90751b = c14549x;
        this.f90752c = interfaceC14516g;
    }

    public Z(oh.E e10) {
        if (e10.size() == 2) {
            this.f90751b = C14549x.K(e10.I(0));
            this.f90752c = e10.I(1);
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
    }
}
