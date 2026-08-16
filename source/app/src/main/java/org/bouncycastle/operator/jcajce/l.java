package org.bouncycastle.operator.jcajce;

import Qk.L;
import Qk.r;
import Xh.t;
import android.security.keystore.KeyProperties;
import dk.C12948d;
import hi.C13486b;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.security.Provider;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import oh.A0;
import oh.C14539s;
import oh.C14549x;
import org.bouncycastle.operator.OperatorException;

public class l extends L {

    public OperatorHelper f101983b;

    public SecureRandom f101984c;

    public SecretKey f101985d;

    public l(SecretKey secretKey) {
        super(d(secretKey));
        this.f101983b = new OperatorHelper(new C12948d());
        this.f101985d = secretKey;
    }

    public static C13486b c(String str, int i10) {
        C14549x c14549x;
        C14549x c14549x2;
        if (str.startsWith("DES") || str.startsWith("TripleDES")) {
            return new C13486b(t.f29020I2, A0.f98776c);
        }
        if (str.startsWith("RC2")) {
            return new C13486b(new C14549x("1.2.840.113549.1.9.16.3.7"), new C14539s(58L));
        }
        if (str.startsWith(KeyProperties.KEY_ALGORITHM_AES) || str.startsWith(Sh.d.f23371w.J())) {
            if (i10 == 128) {
                c14549x = Sh.d.f23308B;
            } else if (i10 == 192) {
                c14549x = Sh.d.f23317K;
            } else {
                if (i10 != 256) {
                    throw new IllegalArgumentException("illegal keysize in AES");
                }
                c14549x = Sh.d.f23326T;
            }
            return new C13486b(c14549x);
        }
        if (str.startsWith("SEED")) {
            return new C13486b(Oh.a.f20094d);
        }
        if (!str.startsWith("Camellia")) {
            throw new IllegalArgumentException("unknown algorithm");
        }
        if (i10 == 128) {
            c14549x2 = Uh.a.f26185d;
        } else if (i10 == 192) {
            c14549x2 = Uh.a.f26186e;
        } else {
            if (i10 != 256) {
                throw new IllegalArgumentException("illegal keysize in Camellia");
            }
            c14549x2 = Uh.a.f26187f;
        }
        return new C13486b(c14549x2);
    }

    public static C13486b d(SecretKey secretKey) {
        return c(secretKey.getAlgorithm(), secretKey.getEncoded().length * 8);
    }

    @Override
    public byte[] b(r rVar) throws OperatorException {
        Key a10 = m.a(rVar);
        Cipher k10 = this.f101983b.k(a().u());
        try {
            k10.init(3, this.f101985d, this.f101984c);
            return k10.wrap(a10);
        } catch (GeneralSecurityException e10) {
            throw new OperatorException("cannot wrap key: " + e10.getMessage(), e10);
        }
    }

    public l e(String str) {
        this.f101983b = new OperatorHelper(new dk.i(str));
        return this;
    }

    public l f(Provider provider) {
        this.f101983b = new OperatorHelper(new dk.k(provider));
        return this;
    }

    public l g(SecureRandom secureRandom) {
        this.f101984c = secureRandom;
        return this;
    }
}
