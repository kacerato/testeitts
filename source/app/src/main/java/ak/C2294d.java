package Ak;

import java.math.BigInteger;
import oh.C14522j;

public class C2294d extends C14522j {

    public static final C2294d f923f = new C2294d(0);

    public static final C2294d f924g = new C2294d(1);

    public static final C2294d f925h = new C2294d(2);

    public static final C2294d f926i = new C2294d(3);

    public static final C2294d f927j = new C2294d(4);

    public static final C2294d f928k = new C2294d(5);

    public static final C2294d f929l = new C2294d(6);

    public static final C2294d f930m = new C2294d(7);

    public static final C2294d f931n = new C2294d(8);

    public static final C2294d f932o = new C2294d(9);

    public static final C2294d f933p = new C2294d(10);

    public static final C2294d f934q = new C2294d(11);

    public static final C2294d f935r = new C2294d(12);

    public static final C2294d f936s = new C2294d(13);

    public static final C2294d f937t = new C2294d(14);

    public static final C2294d f938u = new C2294d(15);

    public static final C2294d f939v = new C2294d(16);

    public static final C2294d f940w = new C2294d(17);

    public static final C2294d f941x = new C2294d(18);

    public static final C2294d f942y = new C2294d(19);

    public static final C2294d f943z = new C2294d(20);

    public static final C2294d f917A = new C2294d(21);

    public static final C2294d f918B = new C2294d(22);

    public static final C2294d f919C = new C2294d(23);

    public static final C2294d f920D = new C2294d(24);

    public static final C2294d f921E = new C2294d(25);

    public static final C2294d f922F = new C2294d(26);

    public C2294d(int i10) {
        super(i10);
        M();
    }

    public static C2294d N(Object obj) {
        if (obj instanceof C2294d) {
            return (C2294d) obj;
        }
        if (obj != null) {
            return new C2294d(C14522j.F(obj));
        }
        return null;
    }

    public void M() {
        if (H().intValue() < 0 || H().intValue() > 26) {
            throw new IllegalArgumentException("invalid enumeration value " + ((Object) H()));
        }
    }

    public C2294d(BigInteger bigInteger) {
        super(bigInteger);
        M();
    }

    public C2294d(C14522j c14522j) {
        super(c14522j.H());
        M();
    }

    public C2294d(byte[] bArr) {
        super(bArr);
        M();
    }
}
