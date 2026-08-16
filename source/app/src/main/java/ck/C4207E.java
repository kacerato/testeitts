package ck;

import java.security.spec.AlgorithmParameterSpec;
import qj.InterfaceC15115a;

public class C4207E implements AlgorithmParameterSpec {

    public static final String f34888c = "X25519";

    public static final String f34889d = "X448";

    public final String f34890b;

    public C4207E(String str) {
        if (!str.equalsIgnoreCase(f34888c)) {
            if (!str.equalsIgnoreCase(f34889d)) {
                if (!str.equals(InterfaceC15115a.f108207b.J())) {
                    if (!str.equals(InterfaceC15115a.f108208c.J())) {
                        throw new IllegalArgumentException("unrecognized curve name: " + str);
                    }
                }
            }
            this.f34890b = f34889d;
            return;
        }
        this.f34890b = f34888c;
    }

    public String a() {
        return this.f34890b;
    }
}
