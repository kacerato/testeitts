package hi;

import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G0;

public class W extends AbstractC14545v {

    public C14549x f90745b;

    public oh.E f90746c;

    public W(C14549x c14549x) {
        this.f90745b = c14549x;
    }

    public static W u(Object obj) {
        return (obj == null || (obj instanceof W)) ? (W) obj : new W(oh.E.G(obj));
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f90745b);
        oh.E e10 = this.f90746c;
        if (e10 != null) {
            c14518h.a(e10);
        }
        return new G0(c14518h);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Policy information: ");
        stringBuffer.append((Object) this.f90745b);
        if (this.f90746c != null) {
            StringBuffer stringBuffer2 = new StringBuffer();
            for (int i10 = 0; i10 < this.f90746c.size(); i10++) {
                if (stringBuffer2.length() != 0) {
                    stringBuffer2.append(", ");
                }
                stringBuffer2.append((Object) Z.u(this.f90746c.I(i10)));
            }
            stringBuffer.append("[");
            stringBuffer.append(stringBuffer2);
            stringBuffer.append("]");
        }
        return stringBuffer.toString();
    }

    public C14549x v() {
        return this.f90745b;
    }

    public oh.E x() {
        return this.f90746c;
    }

    public W(C14549x c14549x, oh.E e10) {
        this.f90745b = c14549x;
        this.f90746c = e10;
    }

    public W(oh.E e10) {
        if (e10.size() < 1 || e10.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
        this.f90745b = C14549x.K(e10.I(0));
        if (e10.size() > 1) {
            this.f90746c = oh.E.G(e10.I(1));
        }
    }
}
