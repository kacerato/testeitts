package wh;

import hi.o0;
import java.util.Enumeration;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class n extends AbstractC14545v {

    public o0 f127528b;

    public o0 f127529c;

    public n(o0 o0Var, o0 o0Var2) {
        if (o0Var == null && o0Var2 == null) {
            throw new IllegalArgumentException("at least one of notBefore/notAfter must not be null.");
        }
        this.f127528b = o0Var;
        this.f127529c = o0Var2;
    }

    public static n u(Object obj) {
        if (obj instanceof n) {
            return (n) obj;
        }
        if (obj != null) {
            return new n(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        o0 o0Var = this.f127528b;
        if (o0Var != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) o0Var));
        }
        o0 o0Var2 = this.f127529c;
        if (o0Var2 != null) {
            c14518h.a(new K0(true, 1, (InterfaceC14516g) o0Var2));
        }
        return new G0(c14518h);
    }

    public o0 v() {
        return this.f127529c;
    }

    public o0 x() {
        return this.f127528b;
    }

    public n(E e10) {
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            M m10 = (M) J10.nextElement();
            int g10 = m10.g();
            o0 w10 = o0.w(m10, true);
            if (g10 == 0) {
                this.f127528b = w10;
            } else {
                this.f127529c = w10;
            }
        }
    }
}
