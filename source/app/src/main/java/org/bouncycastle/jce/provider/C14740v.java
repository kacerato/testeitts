package org.bouncycastle.jce.provider;

import java.io.OutputStream;
import java.security.KeyStore;

public class C14740v implements KeyStore.LoadStoreParameter {

    public OutputStream f101841a;

    public KeyStore.ProtectionParameter f101842b;

    public boolean f101843c;

    public OutputStream a() {
        return this.f101841a;
    }

    public boolean b() {
        return this.f101843c;
    }

    public void c(OutputStream outputStream) {
        this.f101841a = outputStream;
    }

    public void d(char[] cArr) {
        this.f101842b = new KeyStore.PasswordProtection(cArr);
    }

    public void e(KeyStore.ProtectionParameter protectionParameter) {
        this.f101842b = protectionParameter;
    }

    public void f(boolean z10) {
        this.f101843c = z10;
    }

    @Override
    public KeyStore.ProtectionParameter getProtectionParameter() {
        return this.f101842b;
    }
}
