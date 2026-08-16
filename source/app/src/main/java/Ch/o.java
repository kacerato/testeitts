package Ch;

import java.io.IOException;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;

public class o extends AbstractC14545v {

    public C14549x f4357b;

    public InterfaceC14516g f4358c;

    public o(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f4357b = c14549x;
        this.f4358c = interfaceC14516g;
    }

    public static o u(Object obj) {
        if (obj instanceof o) {
            return (o) obj;
        }
        if (obj != null) {
            return new o(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f4357b);
        c14518h.a(this.f4358c);
        return new G0(c14518h);
    }

    public C14549x v() {
        return this.f4357b;
    }

    public InterfaceC14516g x() {
        return this.f4358c;
    }

    public o(E e10) {
        if (e10.size() == 2) {
            this.f4357b = new C14549x(((C14549x) e10.I(0)).J());
            try {
                this.f4358c = B.B(e10.I(1).r().s(InterfaceC14520i.f98892a));
            } catch (IOException unused) {
                throw new IllegalStateException();
            }
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
    }
}
