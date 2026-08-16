package Ol;

import java.security.spec.AlgorithmParameterSpec;

public class h implements AlgorithmParameterSpec {

    public final j[] f20364b;

    public h(j... jVarArr) {
        if (jVarArr.length == 0) {
            throw new IllegalArgumentException("at least one LMSKeyGenParameterSpec required");
        }
        this.f20364b = (j[]) jVarArr.clone();
    }

    public j[] a() {
        return (j[]) this.f20364b.clone();
    }
}
