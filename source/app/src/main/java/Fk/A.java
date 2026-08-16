package Fk;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.C14539s;

public class A extends AbstractC14545v {

    public final BigInteger f7003b;

    public A(C14539s c14539s) {
        int l10 = org.bouncycastle.util.b.l(c14539s.I());
        if (l10 < 0 || l10 > 65535) {
            throw new IllegalArgumentException("value out of range");
        }
        this.f7003b = c14539s.I();
    }

    public static A u(Object obj) {
        if (obj instanceof A) {
            return (A) obj;
        }
        if (obj != null) {
            return new A(C14539s.F(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new C14539s(this.f7003b);
    }

    public BigInteger v() {
        return this.f7003b;
    }
}
