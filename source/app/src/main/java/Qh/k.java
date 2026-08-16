package qh;

import java.io.IOException;
import oh.AbstractC14545v;
import oh.B;
import oh.E;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class k extends AbstractC14545v implements InterfaceC14514f {

    public static final int f108165d = 0;

    public static final int f108166e = 1;

    public final int f108167b;

    public final AbstractC14545v f108168c;

    public k(InterfaceC14516g interfaceC14516g) {
        AbstractC14545v u10;
        if ((interfaceC14516g instanceof E) || (interfaceC14516g instanceof l)) {
            this.f108167b = 0;
            u10 = l.u(interfaceC14516g);
        } else {
            if (!(interfaceC14516g instanceof M)) {
                throw new IllegalArgumentException("Unknown check object in integrity check.");
            }
            this.f108167b = 1;
            u10 = n.v(((M) interfaceC14516g).O());
        }
        this.f108168c = u10;
    }

    public static k u(Object obj) {
        if (obj instanceof k) {
            return (k) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return new k(B.B((byte[]) obj));
            } catch (IOException unused) {
                throw new IllegalArgumentException("Unable to parse integrity check details.");
            }
        }
        if (obj != null) {
            return new k((InterfaceC14516g) obj);
        }
        return null;
    }

    @Override
    public B r() {
        AbstractC14545v abstractC14545v = this.f108168c;
        return abstractC14545v instanceof n ? new K0(0, abstractC14545v) : abstractC14545v.r();
    }

    public AbstractC14545v v() {
        return this.f108168c;
    }

    public int x() {
        return this.f108167b;
    }

    public k(l lVar) {
        this((InterfaceC14516g) lVar);
    }

    public k(n nVar) {
        this(new K0(0, nVar));
    }
}
