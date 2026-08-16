package Eh;

import Xh.C3326a;
import java.io.IOException;
import oh.AbstractC14545v;
import oh.B;
import oh.C14549x;
import oh.E;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;

public class a extends AbstractC14545v implements InterfaceC14514f {

    public final C14549x f5817b;

    public final C3326a f5818c;

    public a(C3326a c3326a) {
        this.f5817b = null;
        this.f5818c = c3326a;
    }

    public static a v(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj == null) {
            return null;
        }
        if (obj instanceof InterfaceC14516g) {
            B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof C14549x) {
                return new a(C14549x.K(r10));
            }
            if (r10 instanceof E) {
                return new a(C3326a.y(r10));
            }
        }
        if (obj instanceof byte[]) {
            try {
                return v(B.B((byte[]) obj));
            } catch (IOException unused) {
                throw new IllegalArgumentException("unknown encoding in getInstance()");
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance(): " + obj.getClass().getName());
    }

    @Override
    public B r() {
        C14549x c14549x = this.f5817b;
        return c14549x != null ? c14549x : this.f5818c.r();
    }

    public C3326a u() {
        return this.f5818c;
    }

    public C14549x x() {
        return this.f5817b;
    }

    public boolean y() {
        return this.f5817b != null;
    }

    public a(C14549x c14549x) {
        this.f5817b = c14549x;
        this.f5818c = null;
    }
}
