package org.bouncycastle.operator.jcajce;

import Qk.K;
import Qk.r;
import dk.C12948d;
import hi.C13486b;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import org.bouncycastle.operator.OperatorException;

public class k extends K {

    public OperatorHelper f101981b;

    public SecretKey f101982c;

    public k(C13486b c13486b, SecretKey secretKey) {
        super(c13486b);
        this.f101981b = new OperatorHelper(new C12948d());
        this.f101982c = secretKey;
    }

    @Override
    public r b(C13486b c13486b, byte[] bArr) throws OperatorException {
        try {
            Cipher k10 = this.f101981b.k(a().u());
            k10.init(4, this.f101982c);
            return new g(c13486b, k10.unwrap(bArr, this.f101981b.m(c13486b.u()), 3));
        } catch (InvalidKeyException e10) {
            throw new OperatorException("key invalid in message.", e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new OperatorException("can't find algorithm.", e11);
        }
    }

    public k c(String str) {
        this.f101981b = new OperatorHelper(new dk.i(str));
        return this;
    }

    public k d(Provider provider) {
        this.f101981b = new OperatorHelper(new dk.k(provider));
        return this;
    }
}
