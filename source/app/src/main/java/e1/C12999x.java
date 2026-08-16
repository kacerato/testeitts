package e1;

import android.util.Base64;
import java.security.SecureRandom;

public final class C12999x {

    public static final SecureRandom f85016a = new SecureRandom();

    public static String a() {
        byte[] bArr = new byte[16];
        f85016a.nextBytes(bArr);
        return Base64.encodeToString(bArr, 11);
    }
}
