package Ak;

import java.math.BigInteger;
import oh.C14522j;

public class C2299i extends C14522j {

    public static final C2299i f954f = new C2299i(0);

    public static final C2299i f955g = new C2299i(1);

    public static final C2299i f956h = new C2299i(2);

    public static final C2299i f957i = new C2299i(3);

    public static final C2299i f958j = new C2299i(4);

    public static final C2299i f959k = new C2299i(5);

    public static final C2299i f960l = new C2299i(6);

    public static final C2299i f961m = new C2299i(7);

    public static final C2299i f962n = new C2299i(8);

    public static final C2299i f963o = new C2299i(9);

    public static final C2299i f964p = new C2299i(10);

    public static final C2299i f965q = new C2299i(11);

    public static final C2299i f966r = new C2299i(12);

    public static final C2299i f967s = new C2299i(13);

    public static final C2299i f968t = new C2299i(14);

    public C2299i(int i10) {
        super(i10);
        M();
    }

    public static C2299i N(Object obj) {
        if (obj instanceof C2299i) {
            return (C2299i) obj;
        }
        if (obj != null) {
            return new C2299i(C14522j.F(obj));
        }
        return null;
    }

    public void M() {
        if (H().intValue() < 0 || H().intValue() > 14) {
            throw new IllegalArgumentException("invalid enumeration value " + ((Object) H()));
        }
    }

    public C2299i(BigInteger bigInteger) {
        super(bigInteger);
        M();
    }

    public C2299i(C14522j c14522j) {
        super(c14522j.H());
        M();
    }

    public C2299i(byte[] bArr) {
        super(bArr);
        M();
    }
}
