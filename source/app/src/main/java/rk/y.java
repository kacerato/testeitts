package Rk;

import java.security.Key;

public class y {
    public static byte[] a(Qk.r rVar) {
        if (rVar.b() instanceof Key) {
            return ((Key) rVar.b()).getEncoded();
        }
        if (rVar.b() instanceof byte[]) {
            return (byte[]) rVar.b();
        }
        throw new IllegalArgumentException("unknown generic key type");
    }
}
