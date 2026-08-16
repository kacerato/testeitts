package Ol;

import java.security.spec.AlgorithmParameterSpec;

public class w implements AlgorithmParameterSpec {

    public static final String f20505e = "SHA256";

    public static final String f20506f = "SHA512";

    public static final String f20507g = "SHAKE128";

    public static final String f20508h = "SHAKE256";

    public final int f20527b;

    public final int f20528c;

    public final String f20529d;

    public static final w f20509i = new w(20, 2, "SHA256");

    public static final w f20510j = new w(20, 4, "SHA256");

    public static final w f20511k = new w(40, 2, "SHA256");

    public static final w f20512l = new w(40, 4, "SHA256");

    public static final w f20513m = new w(40, 8, "SHA256");

    public static final w f20514n = new w(60, 3, "SHA256");

    public static final w f20515o = new w(60, 6, "SHA256");

    public static final w f20516p = new w(60, 12, "SHA256");

    public static final w f20517q = new w(20, 2, "SHA512");

    public static final w f20518r = new w(20, 4, "SHA512");

    public static final w f20519s = new w(40, 2, "SHA512");

    public static final w f20520t = new w(40, 4, "SHA512");

    public static final w f20521u = new w(40, 8, "SHA512");

    public static final w f20522v = new w(60, 3, "SHA512");

    public static final w f20523w = new w(60, 6, "SHA512");

    public static final w f20524x = new w(60, 12, "SHA512");

    public static final w f20525y = new w(20, 2, "SHAKE128");

    public static final w f20526z = new w(20, 4, "SHAKE128");

    public static final w f20491A = new w(40, 2, "SHAKE128");

    public static final w f20492B = new w(40, 4, "SHAKE128");

    public static final w f20493C = new w(40, 8, "SHAKE128");

    public static final w f20494D = new w(60, 3, "SHAKE128");

    public static final w f20495E = new w(60, 6, "SHAKE128");

    public static final w f20496F = new w(60, 12, "SHAKE128");

    public static final w f20497G = new w(20, 2, "SHAKE256");

    public static final w f20498H = new w(20, 4, "SHAKE256");

    public static final w f20499I = new w(40, 2, "SHAKE256");

    public static final w f20500J = new w(40, 4, "SHAKE256");

    public static final w f20501K = new w(40, 8, "SHAKE256");

    public static final w f20502L = new w(60, 3, "SHAKE256");

    public static final w f20503M = new w(60, 6, "SHAKE256");

    public static final w f20504N = new w(60, 12, "SHAKE256");

    public w(int i10, int i11, String str) {
        this.f20527b = i10;
        this.f20528c = i11;
        this.f20529d = str;
    }

    public int a() {
        return this.f20527b;
    }

    public int b() {
        return this.f20528c;
    }

    public String c() {
        return this.f20529d;
    }
}
