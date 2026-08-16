package sh;

import java.io.IOException;
import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class J extends AbstractC14545v implements InterfaceC14514f {

    public static final int f109497d = 0;

    public static final int f109498e = 1;

    public static final int f109499f = 2;

    public final int f109500b = 2;

    public final InterfaceC14516g f109501c;

    public J(oh.E e10) {
        this.f109501c = e10;
    }

    public static J u(Object obj) {
        if (obj instanceof J) {
            return (J) obj;
        }
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof InterfaceC14516g)) {
            if (obj instanceof byte[]) {
                try {
                    return u(oh.B.B((byte[]) obj));
                } catch (IOException unused) {
                    throw new IllegalArgumentException("unknown encoding in getInstance()");
                }
            }
            throw new IllegalArgumentException("unknown object in getInstance(): " + obj.getClass().getName());
        }
        M R10 = M.R(((InterfaceC14516g) obj).r());
        int g10 = R10.g();
        if (g10 == 0) {
            return new J(H.x(R10, false));
        }
        if (g10 == 1) {
            return new J(wh.e.x(R10, false));
        }
        if (g10 == 2) {
            return new J(oh.E.H(R10, false));
        }
        throw new IllegalArgumentException("unknown tag in getInstance(): " + R10.g());
    }

    public int g() {
        return this.f109500b;
    }

    @Override
    public oh.B r() {
        return new K0(false, this.f109500b, this.f109501c);
    }

    public InterfaceC14516g v() {
        return this.f109501c;
    }

    public J(H h10) {
        this.f109501c = h10;
    }

    public J(wh.e eVar) {
        this.f109501c = eVar;
    }
}
