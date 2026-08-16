package org.bouncycastle.pqc.crypto.lms;

import Bi.G;
import java.security.SecureRandom;

public class C14748d extends G {

    public final u[] f102152d;

    public C14748d(u[] uVarArr, SecureRandom secureRandom) {
        super(secureRandom, C.c(uVarArr[0]));
        if (uVarArr.length == 0 || uVarArr.length > 8) {
            throw new IllegalArgumentException("lmsParameters length should be between 1 and 8 inclusive");
        }
        this.f102152d = uVarArr;
    }

    public int c() {
        return this.f102152d.length;
    }

    public u[] d() {
        return this.f102152d;
    }
}
