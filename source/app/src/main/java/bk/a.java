package Bk;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.B;
import oh.C14539s;

public class a extends AbstractC14545v {

    public final int f1915b;

    public a(int i10) {
        this.f1915b = i10;
    }

    public static a v(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(C14539s.F(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return new C14539s(this.f1915b);
    }

    public int u() {
        return this.f1915b;
    }

    public a(BigInteger bigInteger) {
        this.f1915b = org.bouncycastle.util.b.l(bigInteger);
    }

    public a(C14539s c14539s) {
        this(c14539s.I());
    }
}
