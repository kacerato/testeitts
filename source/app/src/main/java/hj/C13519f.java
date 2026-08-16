package hj;

import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Signature;

public class C13519f extends AbstractC13515b {

    public final String f91059b;

    public C13519f(String str) {
        this.f91059b = str;
    }

    @Override
    public Signature a(String str) throws NoSuchProviderException, NoSuchAlgorithmException {
        return Signature.getInstance(str, this.f91059b);
    }
}
