package fj;

import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;

public class C13233d implements InterfaceC13231b {

    public final String f86394a;

    public C13233d(String str) {
        this.f86394a = str;
    }

    @Override
    public KeyFactory b(String str) throws NoSuchProviderException, NoSuchAlgorithmException {
        return KeyFactory.getInstance(str, this.f86394a);
    }
}
