package hj;

import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.Signature;

public class C13520g extends AbstractC13515b {

    public final Provider f91060b;

    public C13520g(Provider provider) {
        this.f91060b = provider;
    }

    @Override
    public Signature a(String str) throws NoSuchAlgorithmException {
        return Signature.getInstance(str, this.f91060b);
    }
}
