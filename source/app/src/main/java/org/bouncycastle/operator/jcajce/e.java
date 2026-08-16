package org.bouncycastle.operator.jcajce;

import Qk.AbstractC3010c;
import Qk.r;
import dk.C12948d;
import hi.C13486b;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.Provider;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.SecretKeySpec;
import oh.C14549x;
import org.bouncycastle.operator.OperatorException;

public class e extends AbstractC3010c {

    public OperatorHelper f101953b;

    public Map f101954c;

    public PrivateKey f101955d;

    public boolean f101956e;

    public e(C13486b c13486b, PrivateKey privateKey) {
        super(c13486b);
        this.f101953b = new OperatorHelper(new C12948d());
        this.f101954c = new HashMap();
        this.f101955d = privateKey;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:1|2|3|(3:29|30|(9:32|6|7|8|(5:10|(1:12)|(3:15|(1:17)(1:19)|18)|20|21)|24|(0)|20|21))|5|6|7|8|(0)|24|(0)|20|21) */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0053, code lost:
    
        if (r4.length == 0) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0059  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public r b(C13486b c13486b, byte[] bArr) throws OperatorException {
        try {
            Cipher d10 = this.f101953b.d(a().u(), this.f101954c);
            AlgorithmParameters c10 = this.f101953b.c(a());
            Key key = null;
            if (c10 != null) {
                if (!a().u().A(Wh.b.f27788l)) {
                    d10.init(4, this.f101955d, c10);
                    Key unwrap = d10.unwrap(bArr, this.f101953b.m(c13486b.u()), 3);
                    if (this.f101956e) {
                        byte[] encoded = unwrap.getEncoded();
                        if (encoded == null) {
                        }
                        if (key == null) {
                            if (c10 != null) {
                                d10.init(2, this.f101955d, c10);
                            } else {
                                d10.init(2, this.f101955d);
                            }
                            key = new SecretKeySpec(d10.doFinal(bArr), c13486b.u().J());
                        }
                        return new g(c13486b, key);
                    }
                    key = unwrap;
                    if (key == null) {
                    }
                    return new g(c13486b, key);
                }
            }
            d10.init(4, this.f101955d);
            Key unwrap2 = d10.unwrap(bArr, this.f101953b.m(c13486b.u()), 3);
            if (this.f101956e) {
            }
            key = unwrap2;
            if (key == null) {
            }
            return new g(c13486b, key);
        } catch (InvalidAlgorithmParameterException e10) {
            throw new OperatorException("invalid algorithm parameters: " + e10.getMessage(), e10);
        } catch (InvalidKeyException e11) {
            throw new OperatorException("key invalid: " + e11.getMessage(), e11);
        } catch (BadPaddingException e12) {
            throw new OperatorException("bad padding: " + e12.getMessage(), e12);
        } catch (IllegalBlockSizeException e13) {
            throw new OperatorException("illegal blocksize: " + e13.getMessage(), e13);
        }
    }

    public e c(C14549x c14549x, String str) {
        this.f101954c.put(c14549x, str);
        return this;
    }

    public e d(boolean z10) {
        this.f101956e = z10;
        return this;
    }

    public e e(String str) {
        this.f101953b = new OperatorHelper(new dk.i(str));
        return this;
    }

    public e f(Provider provider) {
        this.f101953b = new OperatorHelper(new dk.k(provider));
        return this;
    }
}
