package fj;

import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;

public class C13234e implements InterfaceC13231b {

    public final Provider f86395a;

    public C13234e(Provider provider) {
        this.f86395a = provider;
    }

    @Override
    public KeyFactory b(String str) throws NoSuchAlgorithmException {
        return KeyFactory.getInstance(str, this.f86395a);
    }
}
