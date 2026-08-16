package qi;

import Xh.t;
import android.security.keystore.KeyProperties;
import dk.C12945a;
import dk.InterfaceC12950f;
import hi.C13486b;
import hi.h0;
import java.io.IOException;
import java.security.AlgorithmParameterGenerator;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import ki.r;
import oh.A0;
import oh.AbstractC14541t;
import oh.AbstractC14551y;
import oh.B;
import oh.C14549x;
import oh.InterfaceC14516g;
import org.bouncycastle.cert.crmf.CRMFException;
import org.bouncycastle.cms.C14624c;

public class C15107a {

    public static final Map f108177b;

    public static final Map f108178c;

    public static final Map f108179d;

    public static final Map f108180e;

    public static final Map f108181f;

    public InterfaceC12950f f108182a;

    public class C1972a implements b {

        public final C13486b f108183a;

        public final Key f108184b;

        public C1972a(C13486b c13486b, Key key) {
            this.f108183a = c13486b;
            this.f108184b = key;
        }

        @Override
        public Object a() throws CRMFException, InvalidAlgorithmParameterException, InvalidKeyException, InvalidParameterSpecException, NoSuchAlgorithmException, NoSuchPaddingException, NoSuchProviderException {
            Cipher c10 = C15107a.this.c(this.f108183a.u());
            B b10 = (B) this.f108183a.x();
            C14549x u10 = this.f108183a.u();
            if (b10 != null && !(b10 instanceof AbstractC14541t)) {
                try {
                    AlgorithmParameters b11 = C15107a.this.b(this.f108183a.u());
                    try {
                        C12945a.b(b11, b10);
                        c10.init(2, this.f108184b, b11);
                    } catch (IOException e10) {
                        throw new CRMFException("error decoding algorithm parameters.", e10);
                    }
                } catch (NoSuchAlgorithmException e11) {
                    if (!u10.A(C14624c.f100687b) && !u10.A(C14624c.f100691d) && !u10.A(C14624c.f100695f) && !u10.A(C14624c.f100697g) && !u10.A(C14624c.f100699h)) {
                        throw e11;
                    }
                    c10.init(2, this.f108184b, new IvParameterSpec(AbstractC14551y.F(b10).H()));
                }
            } else if (u10.A(C14624c.f100687b) || u10.A(C14624c.f100691d) || u10.A(C14624c.f100693e)) {
                c10.init(2, this.f108184b, new IvParameterSpec(new byte[8]));
            } else {
                c10.init(2, this.f108184b);
            }
            return c10;
        }
    }

    public interface b {
        Object a() throws CRMFException, InvalidAlgorithmParameterException, InvalidKeyException, InvalidParameterSpecException, NoSuchAlgorithmException, NoSuchPaddingException, NoSuchProviderException;
    }

    static {
        HashMap hashMap = new HashMap();
        f108177b = hashMap;
        HashMap hashMap2 = new HashMap();
        f108178c = hashMap2;
        HashMap hashMap3 = new HashMap();
        f108179d = hashMap3;
        HashMap hashMap4 = new HashMap();
        f108180e = hashMap4;
        HashMap hashMap5 = new HashMap();
        f108181f = hashMap5;
        hashMap.put(t.f29123n1, "DESEDE");
        hashMap.put(Sh.d.f23373y, KeyProperties.KEY_ALGORITHM_AES);
        hashMap.put(Sh.d.f23314H, KeyProperties.KEY_ALGORITHM_AES);
        hashMap.put(Sh.d.f23323Q, KeyProperties.KEY_ALGORITHM_AES);
        hashMap2.put(C14624c.f100687b, "DESEDE/CBC/PKCS5Padding");
        hashMap2.put(C14624c.f100695f, "AES/CBC/PKCS5Padding");
        hashMap2.put(C14624c.f100697g, "AES/CBC/PKCS5Padding");
        hashMap2.put(C14624c.f100699h, "AES/CBC/PKCS5Padding");
        C14549x c14549x = t.f29017H0;
        hashMap2.put(new C14549x(c14549x.J()), "RSA/ECB/PKCS1Padding");
        hashMap3.put(Wh.b.f27785i, "SHA1");
        hashMap3.put(Sh.d.f23343f, "SHA224");
        hashMap3.put(Sh.d.f23337c, "SHA256");
        hashMap3.put(Sh.d.f23339d, "SHA384");
        hashMap3.put(Sh.d.f23341e, "SHA512");
        hashMap5.put(Hh.a.f8468o, "HMACSHA1");
        hashMap5.put(t.f29144w1, "HMACSHA1");
        hashMap5.put(t.f29147x1, "HMACSHA224");
        hashMap5.put(t.f29152z1, "HMACSHA256");
        hashMap5.put(t.f29000A1, "HMACSHA384");
        hashMap5.put(t.f29003B1, "HMACSHA512");
        hashMap4.put(c14549x, KeyProperties.KEY_ALGORITHM_RSA);
        hashMap4.put(r.f95349s6, "DSA");
    }

    public C15107a(InterfaceC12950f interfaceC12950f) {
        this.f108182a = interfaceC12950f;
    }

    public static Object i(b bVar) throws CRMFException {
        try {
            return bVar.a();
        } catch (InvalidAlgorithmParameterException e10) {
            throw new CRMFException("algorithm parameters invalid.", e10);
        } catch (InvalidKeyException e11) {
            throw new CRMFException("key invalid in message.", e11);
        } catch (NoSuchAlgorithmException e12) {
            throw new CRMFException("can't find algorithm.", e12);
        } catch (NoSuchProviderException e13) {
            throw new CRMFException("can't find provider.", e13);
        } catch (InvalidParameterSpecException e14) {
            throw new CRMFException("MAC algorithm parameter spec invalid.", e14);
        } catch (NoSuchPaddingException e15) {
            throw new CRMFException("required padding not supported.", e15);
        }
    }

    public AlgorithmParameterGenerator a(C14549x c14549x) throws GeneralSecurityException {
        String str = (String) f108177b.get(c14549x);
        if (str != null) {
            try {
                return this.f108182a.o(str);
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return this.f108182a.o(c14549x.J());
    }

    public AlgorithmParameters b(C14549x c14549x) throws NoSuchAlgorithmException, NoSuchProviderException {
        String str = (String) f108177b.get(c14549x);
        if (str != null) {
            try {
                return this.f108182a.l(str);
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return this.f108182a.l(c14549x.J());
    }

    public Cipher c(C14549x c14549x) throws CRMFException {
        try {
            String str = (String) f108178c.get(c14549x);
            if (str != null) {
                try {
                    return this.f108182a.e(str);
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return this.f108182a.e(c14549x.J());
        } catch (GeneralSecurityException e10) {
            throw new CRMFException("cannot create cipher: " + e10.getMessage(), e10);
        }
    }

    public Cipher d(Key key, C13486b c13486b) throws CRMFException {
        return (Cipher) i(new C1972a(c13486b, key));
    }

    public MessageDigest e(C14549x c14549x) throws CRMFException {
        try {
            String str = (String) f108179d.get(c14549x);
            if (str != null) {
                try {
                    return this.f108182a.m(str);
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return this.f108182a.m(c14549x.J());
        } catch (GeneralSecurityException e10) {
            throw new CRMFException("cannot create cipher: " + e10.getMessage(), e10);
        }
    }

    public KeyFactory f(C14549x c14549x) throws CRMFException {
        try {
            String str = (String) f108180e.get(c14549x);
            if (str != null) {
                try {
                    return this.f108182a.b(str);
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return this.f108182a.b(c14549x.J());
        } catch (GeneralSecurityException e10) {
            throw new CRMFException("cannot create cipher: " + e10.getMessage(), e10);
        }
    }

    public KeyGenerator g(C14549x c14549x) throws CRMFException {
        try {
            String str = (String) f108177b.get(c14549x);
            if (str != null) {
                try {
                    return this.f108182a.v(str);
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return this.f108182a.v(c14549x.J());
        } catch (GeneralSecurityException e10) {
            throw new CRMFException("cannot create key generator: " + e10.getMessage(), e10);
        }
    }

    public Mac h(C14549x c14549x) throws CRMFException {
        try {
            String str = (String) f108181f.get(c14549x);
            if (str != null) {
                try {
                    return this.f108182a.w(str);
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return this.f108182a.w(c14549x.J());
        } catch (GeneralSecurityException e10) {
            throw new CRMFException("cannot create mac: " + e10.getMessage(), e10);
        }
    }

    public AlgorithmParameters j(C14549x c14549x, SecretKey secretKey, SecureRandom secureRandom) throws CRMFException {
        try {
            AlgorithmParameterGenerator a10 = a(c14549x);
            if (c14549x.A(C14624c.f100689c)) {
                byte[] bArr = new byte[8];
                secureRandom.nextBytes(bArr);
                try {
                    a10.init(new RC2ParameterSpec(secretKey.getEncoded().length * 8, bArr), secureRandom);
                } catch (InvalidAlgorithmParameterException e10) {
                    throw new CRMFException("parameters generation error: " + ((Object) e10), e10);
                }
            }
            return a10.generateParameters();
        } catch (NoSuchAlgorithmException unused) {
            return null;
        } catch (GeneralSecurityException e11) {
            throw new CRMFException("exception creating algorithm parameter generator: " + ((Object) e11), e11);
        }
    }

    public C13486b k(C14549x c14549x, AlgorithmParameters algorithmParameters) throws CRMFException {
        InterfaceC14516g a10;
        if (algorithmParameters != null) {
            try {
                a10 = C12945a.a(algorithmParameters);
            } catch (IOException e10) {
                throw new CRMFException("cannot encode parameters: " + e10.getMessage(), e10);
            }
        } else {
            a10 = A0.f98776c;
        }
        return new C13486b(c14549x, a10);
    }

    public PublicKey l(h0 h0Var) throws CRMFException {
        try {
            return f(h0Var.u().u()).generatePublic(new X509EncodedKeySpec(h0Var.getEncoded()));
        } catch (Exception e10) {
            throw new CRMFException("invalid key: " + e10.getMessage(), e10);
        }
    }
}
