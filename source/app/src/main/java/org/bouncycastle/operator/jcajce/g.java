package org.bouncycastle.operator.jcajce;

import Qk.r;
import hi.C13486b;
import java.security.Key;

public class g extends r {
    public g(C13486b c13486b, Key key) {
        super(c13486b, c(key));
    }

    public static Object c(Key key) {
        byte[] encoded = key.getEncoded();
        return encoded != null ? encoded : key;
    }
}
