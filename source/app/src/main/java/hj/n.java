package Hj;

import java.io.OutputStream;
import java.security.KeyStore;

public class n implements KeyStore.LoadStoreParameter {

    public final OutputStream f8523a;

    public final KeyStore.ProtectionParameter f8524b;

    public final boolean f8525c;

    public n(OutputStream outputStream, KeyStore.ProtectionParameter protectionParameter) {
        this(outputStream, protectionParameter, false);
    }

    public OutputStream a() {
        return this.f8523a;
    }

    public boolean b() {
        return this.f8525c;
    }

    @Override
    public KeyStore.ProtectionParameter getProtectionParameter() {
        return this.f8524b;
    }

    public n(OutputStream outputStream, KeyStore.ProtectionParameter protectionParameter, boolean z10) {
        this.f8523a = outputStream;
        this.f8524b = protectionParameter;
        this.f8525c = z10;
    }

    public n(OutputStream outputStream, char[] cArr) {
        this(outputStream, cArr, false);
    }

    public n(OutputStream outputStream, char[] cArr, boolean z10) {
        this(outputStream, new KeyStore.PasswordProtection(cArr), z10);
    }
}
