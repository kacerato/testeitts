package sh;

import java.io.IOException;
import oh.AbstractC14545v;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;

public class z extends AbstractC14545v implements InterfaceC14514f {

    public final C15306e f109634b;

    public final C15300C f109635c;

    public final r f109636d;

    public z(C15306e c15306e) {
        this(c15306e, null, null);
    }

    public static z u(Object obj) {
        if (obj instanceof z) {
            return (z) obj;
        }
        if (obj instanceof InterfaceC14516g) {
            oh.B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof C14539s) {
                return new z(C15306e.u(r10));
            }
            if (r10 instanceof oh.E) {
                return ((oh.E) r10).I(0) instanceof C14549x ? new z(r.w(r10)) : new z(C15300C.u(r10));
            }
        } else if (obj instanceof byte[]) {
            try {
                return u(oh.B.B((byte[]) obj));
            } catch (IOException e10) {
                throw new IllegalArgumentException("parsing error: " + e10.getMessage());
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance(): " + obj.getClass().getName());
    }

    @Override
    public oh.B r() {
        C15300C c15300c = this.f109635c;
        if (c15300c != null) {
            return c15300c.r();
        }
        C15306e c15306e = this.f109634b;
        return c15306e != null ? c15306e.r() : this.f109636d.r();
    }

    public boolean v() {
        return this.f109636d != null;
    }

    public boolean x() {
        return this.f109634b != null;
    }

    public boolean y() {
        return this.f109635c != null;
    }

    public z(C15306e c15306e, C15300C c15300c, r rVar) {
        this.f109634b = c15306e;
        this.f109635c = c15300c;
        this.f109636d = rVar;
    }

    public z(r rVar) {
        this(null, null, rVar);
    }

    public z(C15300C c15300c) {
        this(null, c15300c, null);
    }
}
