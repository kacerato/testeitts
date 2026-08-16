package fj;

import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;

public class C13230a implements InterfaceC13231b {
    @Override
    public KeyFactory b(String str) throws NoSuchAlgorithmException {
        return KeyFactory.getInstance(str);
    }
}
