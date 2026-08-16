package hi;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class V extends AbstractC14545v {

    public BigInteger f90743b;

    public BigInteger f90744c;

    public V(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f90743b = bigInteger;
        this.f90744c = bigInteger2;
    }

    public static V u(C13479C c13479c) {
        return w(C13479C.A(c13479c, C13478B.f90548x));
    }

    public static V w(Object obj) {
        if (obj instanceof V) {
            return (V) obj;
        }
        if (obj != null) {
            return new V(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        if (this.f90743b != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) new C14539s(this.f90743b)));
        }
        if (this.f90744c != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) new C14539s(this.f90744c)));
        }
        return new G0(c14518h);
    }

    public BigInteger v() {
        return this.f90744c;
    }

    public BigInteger x() {
        return this.f90743b;
    }

    public V(oh.E e10) {
        for (int i10 = 0; i10 != e10.size(); i10++) {
            oh.M R10 = oh.M.R(e10.I(i10));
            if (R10.g() == 0) {
                this.f90743b = C14539s.G(R10, false).I();
            } else {
                if (R10.g() != 1) {
                    throw new IllegalArgumentException("Unknown tag encountered.");
                }
                this.f90744c = C14539s.G(R10, false).I();
            }
        }
    }
}
