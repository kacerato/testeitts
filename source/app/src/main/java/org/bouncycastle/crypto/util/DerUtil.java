package org.bouncycastle.crypto.util;

import java.io.IOException;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;

public class DerUtil {
    public static AbstractC14551y a(byte[] bArr) {
        return bArr == null ? new C0(new byte[0]) : new C0(org.bouncycastle.util.a.p(bArr));
    }

    public static byte[] b(B b10) {
        try {
            return b10.getEncoded();
        } catch (IOException e10) {
            throw new IllegalStateException("Cannot get encoding: " + e10.getMessage()) {
                @Override
                public Throwable getCause() {
                    return e10;
                }
            };
        }
    }
}
