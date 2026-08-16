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

public class p extends AbstractC14545v {

    public C14549x f4359b;

    public InterfaceC14516g f4360c;

    public p(C14549x c14549x, InterfaceC14516g interfaceC14516g) {
        this.f4359b = c14549x;
        this.f4360c = interfaceC14516g;
    }

    public static p u(Object obj) {
        if (obj instanceof p) {
            return (p) obj;
        }
        if (obj != null) {
            return new p(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f4359b);
        c14518h.a(this.f4360c);
        return new G0(c14518h);
    }

    public C14549x v() {
        return this.f4359b;
    }

    public InterfaceC14516g x() {
        return this.f4360c;
    }

    public p(E e10) {
        if (e10.size() == 2) {
            this.f4359b = (C14549x) e10.I(0);
            try {
                this.f4360c = B.B(e10.I(1).r().s(InterfaceC14520i.f98892a));
            } catch (IOException unused) {
                throw new IllegalStateException();
            }
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + e10.size());
        }
    }
}
