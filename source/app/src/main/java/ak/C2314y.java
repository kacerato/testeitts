package Ak;

import java.math.BigInteger;
import oh.C14522j;

public class C2314y extends C14522j {

    public static final C2314y f1009f = new C2314y(0);

    public static final C2314y f1010g = new C2314y(1);

    public static final C2314y f1011h = new C2314y(2);

    public static final C2314y f1012i = new C2314y(3);

    public static final C2314y f1013j = new C2314y(4);

    public static final C2314y f1014k = new C2314y(5);

    public static final C2314y f1015l = new C2314y(6);

    public static final C2314y f1016m = new C2314y(7);

    public static final C2314y f1017n = new C2314y(8);

    public static final C2314y f1018o = new C2314y(9);

    public static final C2314y f1019p = new C2314y(10);

    public static final C2314y f1020q = new C2314y(11);

    public static final C2314y f1021r = new C2314y(12);

    public static final C2314y f1022s = new C2314y(13);

    public C2314y(int i10) {
        super(i10);
        M();
    }

    public static C2314y N(Object obj) {
        if (obj instanceof C2314y) {
            return (C2314y) obj;
        }
        if (obj != null) {
            return new C2314y(C14522j.F(obj));
        }
        return null;
    }

    public void M() {
        if (H().intValue() < 0 || H().intValue() > 13) {
            throw new IllegalArgumentException("invalid enumeration value " + ((Object) H()));
        }
    }

    public C2314y(BigInteger bigInteger) {
        super(bigInteger);
        M();
    }

    public C2314y(C14522j c14522j) {
        this(c14522j.H());
    }

    public C2314y(byte[] bArr) {
        super(bArr);
        M();
    }
}
