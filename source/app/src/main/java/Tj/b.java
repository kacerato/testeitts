package Tj;

import Hj.n;
import java.io.OutputStream;
import java.security.KeyStore;

public class b extends n {
    public b(OutputStream outputStream, KeyStore.ProtectionParameter protectionParameter) {
        super(outputStream, protectionParameter, false);
    }

    public b(OutputStream outputStream, KeyStore.ProtectionParameter protectionParameter, boolean z10) {
        super(outputStream, protectionParameter, z10);
    }

    public b(OutputStream outputStream, char[] cArr) {
        super(outputStream, cArr, false);
    }

    public b(OutputStream outputStream, char[] cArr, boolean z10) {
        super(outputStream, new KeyStore.PasswordProtection(cArr), z10);
    }
}
