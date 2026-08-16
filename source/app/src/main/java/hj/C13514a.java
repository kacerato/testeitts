package hj;

import java.security.NoSuchAlgorithmException;
import java.security.Signature;

public class C13514a extends AbstractC13515b {
    @Override
    public Signature a(String str) throws NoSuchAlgorithmException {
        return Signature.getInstance(str);
    }
}
