package Fj;

import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.GCMParameterSpec;

public class a {
    public static AlgorithmParameterSpec a(byte[] bArr, int i10) {
        return new GCMParameterSpec(i10, bArr);
    }
}
