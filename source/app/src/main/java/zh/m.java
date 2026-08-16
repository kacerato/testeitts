package zh;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.B;
import oh.C14522j;
import oh.M;

public class m extends AbstractC14545v {

    public static final m f131444c = new m(1);

    public static final m f131445d = new m(2);

    public static final m f131446e = new m(3);

    public static final m f131447f = new m(4);

    public C14522j f131448b;

    public m(int i10) {
        this.f131448b = new C14522j(i10);
    }

    public static m u(Object obj) {
        if (obj instanceof m) {
            return (m) obj;
        }
        if (obj != null) {
            return new m(C14522j.F(obj));
        }
        return null;
    }

    public static m v(M m10, boolean z10) {
        return u(C14522j.G(m10, z10));
    }

    @Override
    public B r() {
        return this.f131448b;
    }

    public String toString() {
        int L10 = this.f131448b.L();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("");
        sb2.append(L10);
        sb2.append(L10 == f131444c.f131448b.L() ? "(CPD)" : L10 == f131445d.f131448b.L() ? "(VSD)" : L10 == f131446e.f131448b.L() ? "(VPKC)" : L10 == f131447f.f131448b.L() ? "(CCPD)" : "?");
        return sb2.toString();
    }

    public BigInteger x() {
        return this.f131448b.H();
    }

    public m(C14522j c14522j) {
        this.f131448b = c14522j;
    }
}
