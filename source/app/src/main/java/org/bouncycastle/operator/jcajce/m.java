package org.bouncycastle.operator.jcajce;

import Qk.r;
import java.security.Key;
import javax.crypto.spec.SecretKeySpec;

public class m {
    public static Key a(r rVar) {
        if (rVar.b() instanceof Key) {
            return (Key) rVar.b();
        }
        if (rVar.b() instanceof byte[]) {
            return new SecretKeySpec((byte[]) rVar.b(), "ENC");
        }
        throw new IllegalArgumentException("unknown generic key type");
    }
}
