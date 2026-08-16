package Ol;

import java.security.spec.AlgorithmParameterSpec;

public class x implements AlgorithmParameterSpec {

    public static final String f20530d = "SHA256";

    public static final String f20531e = "SHA512";

    public static final String f20532f = "SHAKE128";

    public static final String f20533g = "SHAKE256";

    public static final x f20534h = new x(10, "SHA256");

    public static final x f20535i = new x(16, "SHA256");

    public static final x f20536j = new x(20, "SHA256");

    public static final x f20537k = new x(10, "SHAKE128");

    public static final x f20538l = new x(16, "SHAKE128");

    public static final x f20539m = new x(20, "SHAKE128");

    public static final x f20540n = new x(10, "SHA512");

    public static final x f20541o = new x(16, "SHA512");

    public static final x f20542p = new x(20, "SHA512");

    public static final x f20543q = new x(10, "SHAKE256");

    public static final x f20544r = new x(16, "SHAKE256");

    public static final x f20545s = new x(20, "SHAKE256");

    public final int f20546b;

    public final String f20547c;

    public x(int i10, String str) {
        this.f20546b = i10;
        this.f20547c = str;
    }

    public int a() {
        return this.f20546b;
    }

    public String b() {
        return this.f20547c;
    }
}
