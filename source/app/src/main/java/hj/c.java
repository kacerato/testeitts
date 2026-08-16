package Hj;

import java.io.InputStream;
import java.io.OutputStream;
import java.security.KeyStore;

public class c implements KeyStore.LoadStoreParameter {

    public final InputStream f8501a;

    public final OutputStream f8502b;

    public final KeyStore.ProtectionParameter f8503c;

    public c(InputStream inputStream, OutputStream outputStream, KeyStore.ProtectionParameter protectionParameter) {
        this.f8501a = inputStream;
        this.f8502b = outputStream;
        this.f8503c = protectionParameter;
    }

    public InputStream a() {
        if (this.f8502b == null) {
            return this.f8501a;
        }
        throw new UnsupportedOperationException("parameter configured for storage OutputStream present");
    }

    public OutputStream b() {
        OutputStream outputStream = this.f8502b;
        if (outputStream != null) {
            return outputStream;
        }
        throw new UnsupportedOperationException("parameter not configured for storage - no OutputStream");
    }

    @Override
    public KeyStore.ProtectionParameter getProtectionParameter() {
        return this.f8503c;
    }

    public c(InputStream inputStream, KeyStore.ProtectionParameter protectionParameter) {
        this(inputStream, null, protectionParameter);
    }

    public c(InputStream inputStream, char[] cArr) {
        this(inputStream, new KeyStore.PasswordProtection(cArr));
    }

    public c(OutputStream outputStream, KeyStore.ProtectionParameter protectionParameter) {
        this(null, outputStream, protectionParameter);
    }

    public c(OutputStream outputStream, char[] cArr) {
        this(outputStream, new KeyStore.PasswordProtection(cArr));
    }
}
