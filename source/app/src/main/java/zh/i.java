package zh;

import java.io.IOException;
import oh.AbstractC14545v;
import oh.B;
import oh.E;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class i extends AbstractC14545v implements InterfaceC14514f {

    public C16312b f131433b;

    public C16314d f131434c;

    public i(C16312b c16312b) {
        this.f131433b = c16312b;
    }

    public static i w(Object obj) {
        if (obj == null || (obj instanceof i)) {
            return (i) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return w(B.B((byte[]) obj));
            } catch (IOException e10) {
                throw new IllegalArgumentException("failed to construct sequence from byte[]: " + e10.getMessage());
            }
        }
        if (obj instanceof E) {
            return new i(C16312b.z(obj));
        }
        if (obj instanceof M) {
            return new i(C16314d.v(M.R(obj), false));
        }
        throw new IllegalArgumentException("Couldn't convert from object to DVCSResponse: " + obj.getClass().getName());
    }

    public static i x(M m10, boolean z10) {
        return w(E.H(m10, z10));
    }

    @Override
    public B r() {
        C16312b c16312b = this.f131433b;
        return c16312b != null ? c16312b.r() : new K0(false, 0, (InterfaceC14516g) this.f131434c);
    }

    public String toString() {
        StringBuilder sb2;
        String c16314d;
        if (this.f131433b != null) {
            sb2 = new StringBuilder();
            sb2.append("DVCSResponse {\ndvCertInfo: ");
            c16314d = this.f131433b.toString();
        } else {
            sb2 = new StringBuilder();
            sb2.append("DVCSResponse {\ndvErrorNote: ");
            c16314d = this.f131434c.toString();
        }
        sb2.append(c16314d);
        sb2.append("}\n");
        return sb2.toString();
    }

    public C16312b u() {
        return this.f131433b;
    }

    public C16314d v() {
        return this.f131434c;
    }

    public i(C16314d c16314d) {
        this.f131434c = c16314d;
    }
}
