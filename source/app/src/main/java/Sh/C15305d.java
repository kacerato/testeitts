package sh;

import java.io.IOException;
import oh.AbstractC14545v;
import oh.C14539s;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;

public class C15305d extends AbstractC14545v implements InterfaceC14514f {

    public final C15302a f109506b;

    public final C15304c f109507c;

    public C15305d(C15302a c15302a) {
        this.f109506b = c15302a;
        this.f109507c = null;
    }

    public static C15305d w(Object obj) {
        if (obj instanceof C15305d) {
            return (C15305d) obj;
        }
        if (obj == null) {
            return null;
        }
        if (obj instanceof InterfaceC14516g) {
            oh.B r10 = ((InterfaceC14516g) obj).r();
            if (r10 instanceof C14539s) {
                return new C15305d(C15302a.w(r10));
            }
            if (r10 instanceof oh.E) {
                return new C15305d(C15304c.v(r10));
            }
        }
        if (obj instanceof byte[]) {
            try {
                return w(oh.B.B((byte[]) obj));
            } catch (IOException unused) {
                throw new IllegalArgumentException("unknown encoding in getInstance()");
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance(): " + obj.getClass().getName());
    }

    @Override
    public oh.B r() {
        C15302a c15302a = this.f109506b;
        return c15302a != null ? c15302a.r() : this.f109507c.r();
    }

    public C15302a u() {
        return this.f109506b;
    }

    public C15304c v() {
        return this.f109507c;
    }

    public boolean x() {
        return this.f109506b != null;
    }

    public C15305d(C15304c c15304c) {
        this.f109506b = null;
        this.f109507c = c15304c;
    }
}
