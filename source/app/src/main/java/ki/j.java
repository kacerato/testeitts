package ki;

import oh.AbstractC14541t;
import oh.AbstractC14545v;
import oh.B;
import oh.C14549x;
import oh.InterfaceC14514f;
import oh.M;

public class j extends AbstractC14545v implements InterfaceC14514f {

    public B f95275b;

    public j(l lVar) {
        this.f95275b = null;
        this.f95275b = lVar.r();
    }

    public static j u(Object obj) {
        if (obj == null || (obj instanceof j)) {
            return (j) obj;
        }
        if (obj instanceof B) {
            return new j((B) obj);
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("unknown object in getInstance()");
        }
        try {
            return new j(B.B((byte[]) obj));
        } catch (Exception e10) {
            throw new IllegalArgumentException("unable to parse encoded data: " + e10.getMessage());
        }
    }

    public static j v(M m10, boolean z10) {
        if (z10) {
            return u(m10.O());
        }
        throw new IllegalArgumentException("choice item must be explicitly tagged");
    }

    @Override
    public B r() {
        return this.f95275b;
    }

    public B x() {
        return this.f95275b;
    }

    public boolean y() {
        return this.f95275b instanceof AbstractC14541t;
    }

    public boolean z() {
        return this.f95275b instanceof C14549x;
    }

    public j(AbstractC14541t abstractC14541t) {
        this.f95275b = abstractC14541t;
    }

    public j(C14549x c14549x) {
        this.f95275b = c14549x;
    }

    public j(B b10) {
        this.f95275b = b10;
    }
}
