package Hj;

import java.io.OutputStream;
import java.security.KeyStore;

public class b implements KeyStore.LoadStoreParameter {

    public final KeyStore.ProtectionParameter f8498a;

    public final org.bouncycastle.crypto.util.m f8499b;

    public OutputStream f8500c;

    public b(OutputStream outputStream, org.bouncycastle.crypto.util.m mVar, KeyStore.ProtectionParameter protectionParameter) {
        this.f8500c = outputStream;
        this.f8499b = mVar;
        this.f8498a = protectionParameter;
    }

    public OutputStream a() {
        return this.f8500c;
    }

    public org.bouncycastle.crypto.util.m b() {
        return this.f8499b;
    }

    @Override
    public KeyStore.ProtectionParameter getProtectionParameter() {
        return this.f8498a;
    }

    public b(OutputStream outputStream, org.bouncycastle.crypto.util.m mVar, char[] cArr) {
        this(outputStream, mVar, new KeyStore.PasswordProtection(cArr));
    }
}
