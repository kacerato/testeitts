package Dk;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.B;
import oh.C14539s;

public class e extends AbstractC14545v {

    public static final BigInteger f5273c = BigInteger.valueOf(255);

    public final BigInteger f5274b;

    public e(long j10) {
        this(BigInteger.valueOf(j10));
    }

    public static e v(Object obj) {
        if (obj instanceof e) {
            return (e) obj;
        }
        if (obj != null) {
            return new e(C14539s.F(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return new C14539s(this.f5274b);
    }

    public BigInteger u() {
        return this.f5274b;
    }

    public e(BigInteger bigInteger) {
        if (bigInteger.signum() >= 0 && bigInteger.compareTo(f5273c) <= 0) {
            this.f5274b = bigInteger;
            return;
        }
        throw new IllegalArgumentException("value " + ((Object) bigInteger) + " outside of range 0...255");
    }

    public e(C14539s c14539s) {
        this(c14539s.I());
    }

    public e(byte[] bArr) {
        this(new BigInteger(bArr));
    }
}
