package th;

import java.util.Iterator;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class X extends AbstractC14545v {

    public final C15426b f117548b;

    public final C15426b f117549c;

    public final C15426b f117550d;

    public X(oh.E e10) {
        if (e10.size() < 1 || e10.size() > 3) {
            throw new IllegalArgumentException("expected sequence of 1 to 3 elements only");
        }
        Iterator<InterfaceC14516g> it = e10.iterator();
        C15426b u10 = C15426b.u(it.next());
        C15426b c15426b = null;
        C15426b c15426b2 = null;
        while (it.hasNext()) {
            oh.M R10 = oh.M.R(it.next());
            if (R10.p(0)) {
                c15426b = C15426b.v(R10, true);
            } else if (R10.p(1)) {
                c15426b2 = C15426b.v(R10, true);
            }
        }
        this.f117548b = u10;
        this.f117549c = c15426b;
        this.f117550d = c15426b2;
    }

    public static X u(Object obj) {
        if (obj instanceof X) {
            return (X) obj;
        }
        if (obj != null) {
            return new X(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f117548b);
        C15426b c15426b = this.f117549c;
        if (c15426b != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) c15426b));
        }
        C15426b c15426b2 = this.f117550d;
        if (c15426b2 != null) {
            c14518h.a(new K0(true, 1, (InterfaceC14516g) c15426b2));
        }
        return new G0(c14518h);
    }

    public C15426b v() {
        return this.f117548b;
    }

    public C15426b x() {
        return this.f117549c;
    }

    public C15426b y() {
        return this.f117550d;
    }

    public X(C15426b c15426b, C15426b c15426b2, C15426b c15426b3) {
        if (c15426b == null) {
            throw new NullPointerException("'newWithNew' cannot be null");
        }
        this.f117548b = c15426b;
        this.f117549c = c15426b2;
        this.f117550d = c15426b3;
    }
}
