package ck;

import java.security.spec.AlgorithmParameterSpec;
import qj.InterfaceC15115a;

public class C4215h implements AlgorithmParameterSpec {

    public static final String f34909c = "Ed25519";

    public static final String f34910d = "Ed448";

    public final String f34911b;

    public C4215h(String str) {
        if (!str.equalsIgnoreCase(f34909c)) {
            if (!str.equalsIgnoreCase(f34910d)) {
                if (!str.equals(InterfaceC15115a.f108209d.J())) {
                    if (!str.equals(InterfaceC15115a.f108210e.J())) {
                        throw new IllegalArgumentException("unrecognized curve name: " + str);
                    }
                }
            }
            this.f34911b = f34910d;
            return;
        }
        this.f34911b = f34909c;
    }

    public String a() {
        return this.f34911b;
    }
}
