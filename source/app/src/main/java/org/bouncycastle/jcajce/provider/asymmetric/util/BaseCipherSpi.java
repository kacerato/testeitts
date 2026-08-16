package org.bouncycastle.jcajce.provider.asymmetric.util;

import Bi.Z;
import Xh.v;
import dk.C12947c;
import dk.InterfaceC12950f;
import java.io.ByteArrayOutputStream;
import java.security.AlgorithmParameters;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.jce.provider.C14720a;

public abstract class BaseCipherSpi extends CipherSpi {

    public Class[] f101311a = {IvParameterSpec.class, PBEParameterSpec.class, RC2ParameterSpec.class, RC5ParameterSpec.class};

    public final InterfaceC12950f f101312b = new C12947c();

    public AlgorithmParameters f101313c = null;

    public Z f101314d = null;

    public int f101315e;

    public byte[] f101316f;

    public static final class a extends ByteArrayOutputStream {
        public void c() {
            org.bouncycastle.util.a.e0(this.buf, (byte) 0);
            reset();
        }

        public byte[] d() {
            return this.buf;
        }
    }

    public final AlgorithmParameters a(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return this.f101312b.l(str);
    }

    @Override
    public int engineGetBlockSize() {
        return 0;
    }

    @Override
    public byte[] engineGetIV() {
        return null;
    }

    @Override
    public int engineGetKeySize(Key key) {
        return key.getEncoded().length;
    }

    @Override
    public int engineGetOutputSize(int i10) {
        return -1;
    }

    @Override
    public AlgorithmParameters engineGetParameters() {
        return null;
    }

    @Override
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        throw new NoSuchAlgorithmException("can't support mode " + str);
    }

    @Override
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        throw new NoSuchPaddingException("Padding " + str + " unknown.");
    }

    @Override
    public Key engineUnwrap(byte[] bArr, String str, int i10) throws InvalidKeyException {
        try {
            Z z10 = this.f101314d;
            byte[] engineDoFinal = z10 == null ? engineDoFinal(bArr, 0, bArr.length) : z10.d(bArr, 0, bArr.length);
            if (i10 == 3) {
                return new SecretKeySpec(engineDoFinal, str);
            }
            if (str.equals("") && i10 == 2) {
                try {
                    v v10 = v.v(engineDoFinal);
                    PrivateKey p10 = C14720a.p(v10);
                    if (p10 != null) {
                        return p10;
                    }
                    throw new InvalidKeyException("algorithm " + ((Object) v10.y().u()) + " not supported");
                } catch (Exception unused) {
                    throw new InvalidKeyException("Invalid key encoding.");
                }
            }
            try {
                KeyFactory b10 = this.f101312b.b(str);
                if (i10 == 1) {
                    return b10.generatePublic(new X509EncodedKeySpec(engineDoFinal));
                }
                if (i10 == 2) {
                    return b10.generatePrivate(new PKCS8EncodedKeySpec(engineDoFinal));
                }
                throw new InvalidKeyException("Unknown key type " + i10);
            } catch (NoSuchAlgorithmException e10) {
                throw new InvalidKeyException("Unknown key type " + e10.getMessage());
            } catch (NoSuchProviderException e11) {
                throw new InvalidKeyException("Unknown key type " + e11.getMessage());
            } catch (InvalidKeySpecException e12) {
                throw new InvalidKeyException("Unknown key type " + e12.getMessage());
            }
        } catch (BadPaddingException e13) {
            throw new InvalidKeyException("unable to unwrap") {
                @Override
                public synchronized Throwable getCause() {
                    return e13;
                }
            };
        } catch (IllegalBlockSizeException e14) {
            throw new InvalidKeyException(e14.getMessage());
        } catch (InvalidCipherTextException e15) {
            throw new InvalidKeyException(e15.getMessage());
        }
    }

    @Override
    public byte[] engineWrap(Key key) throws IllegalBlockSizeException, InvalidKeyException {
        byte[] encoded = key.getEncoded();
        if (encoded == null) {
            throw new InvalidKeyException("Cannot wrap key, null encoding.");
        }
        try {
            Z z10 = this.f101314d;
            return z10 == null ? engineDoFinal(encoded, 0, encoded.length) : z10.c(encoded, 0, encoded.length);
        } catch (BadPaddingException e10) {
            throw new IllegalBlockSizeException(e10.getMessage());
        }
    }
}
