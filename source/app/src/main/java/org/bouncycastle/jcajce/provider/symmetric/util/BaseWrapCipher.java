package org.bouncycastle.jcajce.provider.symmetric.util;

import Bi.InterfaceC2379k;
import Bi.Z;
import Xh.v;
import Xi.A0;
import Xi.C3360o0;
import Xi.w0;
import Xi.x0;
import Xi.y0;
import ak.C3661a;
import ak.C3670j;
import ck.k;
import dk.C12947c;
import dk.InterfaceC12950f;
import java.io.ByteArrayOutputStream;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.jcajce.provider.symmetric.util.d;
import org.bouncycastle.jce.provider.C14720a;

public abstract class BaseWrapCipher extends CipherSpi implements d {

    public Class[] f101441b;

    public int f101442c;

    public int f101443d;

    public int f101444e;

    public int f101445f;

    public AlgorithmParameters f101446g;

    public Z f101447h;

    public int f101448i;

    public byte[] f101449j;

    public a f101450k;

    public boolean f101451l;

    public final InterfaceC12950f f101452m;

    public static class InvalidKeyOrParametersException extends InvalidKeyException {
        private final Throwable cause;

        public InvalidKeyOrParametersException(String str, Throwable th2) {
            super(str);
            this.cause = th2;
        }

        @Override
        public Throwable getCause() {
            return this.cause;
        }
    }

    public static final class a extends ByteArrayOutputStream {
        public void c() {
            org.bouncycastle.util.a.e0(this.buf, (byte) 0);
            reset();
        }

        public byte[] d() {
            return this.buf;
        }
    }

    public BaseWrapCipher() {
        this.f101441b = new Class[]{k.class, PBEParameterSpec.class, RC2ParameterSpec.class, RC5ParameterSpec.class, IvParameterSpec.class};
        this.f101442c = 2;
        this.f101443d = 1;
        this.f101446g = null;
        this.f101447h = null;
        this.f101450k = null;
        this.f101452m = new C12947c();
    }

    public final AlgorithmParameters a(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return this.f101452m.l(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0043 A[Catch: all -> 0x001f, TRY_LEAVE, TryCatch #2 {all -> 0x001f, blocks: (B:5:0x0007, B:23:0x000c, B:10:0x003e, B:12:0x0043, B:16:0x004e, B:17:0x0055, B:9:0x002c, B:26:0x0022, B:27:0x002b, B:20:0x0057, B:21:0x0060), top: B:4:0x0007, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004e A[Catch: all -> 0x001f, TRY_ENTER, TryCatch #2 {all -> 0x001f, blocks: (B:5:0x0007, B:23:0x000c, B:10:0x003e, B:12:0x0043, B:16:0x004e, B:17:0x0055, B:9:0x002c, B:26:0x0022, B:27:0x002b, B:20:0x0057, B:21:0x0060), top: B:4:0x0007, inners: #0, #1 }] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int engineDoFinal(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws IllegalBlockSizeException, BadPaddingException, ShortBufferException {
        byte[] c10;
        a aVar = this.f101450k;
        if (aVar == null) {
            throw new IllegalStateException("not supported in a wrapping mode");
        }
        aVar.write(bArr, i10, i11);
        try {
            if (this.f101451l) {
                try {
                    c10 = this.f101447h.c(this.f101450k.d(), 0, this.f101450k.size());
                    if (c10.length + i12 <= bArr2.length) {
                        throw new ShortBufferException("output buffer too short for input.");
                    }
                    System.arraycopy(c10, 0, bArr2, i12, c10.length);
                    return c10.length;
                } catch (Exception e10) {
                    throw new IllegalBlockSizeException(e10.getMessage());
                }
            }
            try {
                c10 = this.f101447h.d(this.f101450k.d(), 0, this.f101450k.size());
                if (c10.length + i12 <= bArr2.length) {
                }
            } catch (InvalidCipherTextException e11) {
                throw new BadPaddingException(e11.getMessage());
            }
        } finally {
            this.f101450k.c();
        }
    }

    @Override
    public int engineGetBlockSize() {
        return 0;
    }

    @Override
    public byte[] engineGetIV() {
        return org.bouncycastle.util.a.p(this.f101449j);
    }

    @Override
    public int engineGetKeySize(Key key) {
        return key.getEncoded().length * 8;
    }

    @Override
    public int engineGetOutputSize(int i10) {
        return -1;
    }

    @Override
    public AlgorithmParameters engineGetParameters() {
        if (this.f101446g == null && this.f101449j != null) {
            String b10 = this.f101447h.b();
            if (b10.indexOf(47) >= 0) {
                b10 = b10.substring(0, b10.indexOf(47));
            }
            try {
                AlgorithmParameters a10 = a(b10);
                this.f101446g = a10;
                a10.init(new IvParameterSpec(this.f101449j));
            } catch (Exception e10) {
                throw new RuntimeException(e10.toString());
            }
        }
        return this.f101446g;
    }

    @Override
    public void engineInit(int i10, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec algorithmParameterSpec;
        if (algorithmParameters != null) {
            algorithmParameterSpec = C3670j.a(algorithmParameters, this.f101441b);
            if (algorithmParameterSpec == null) {
                throw new InvalidAlgorithmParameterException("can't handle parameter " + algorithmParameters.toString());
            }
        } else {
            algorithmParameterSpec = null;
        }
        this.f101446g = algorithmParameters;
        engineInit(i10, key, algorithmParameterSpec, secureRandom);
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
    public Key engineUnwrap(byte[] bArr, String str, int i10) throws InvalidKeyException, NoSuchAlgorithmException {
        try {
            Z z10 = this.f101447h;
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
                KeyFactory b10 = this.f101452m.b(str);
                if (i10 == 1) {
                    return b10.generatePublic(new X509EncodedKeySpec(engineDoFinal));
                }
                if (i10 == 2) {
                    return b10.generatePrivate(new PKCS8EncodedKeySpec(engineDoFinal));
                }
                throw new InvalidKeyException("Unknown key type " + i10);
            } catch (NoSuchProviderException e10) {
                throw new InvalidKeyException("Unknown key type " + e10.getMessage());
            } catch (InvalidKeySpecException e11) {
                throw new InvalidKeyException("Unknown key type " + e11.getMessage());
            }
        } catch (BadPaddingException e12) {
            throw new InvalidKeyException(e12.getMessage());
        } catch (IllegalBlockSizeException e13) {
            throw new InvalidKeyException(e13.getMessage());
        } catch (InvalidCipherTextException e14) {
            throw new InvalidKeyException(e14.getMessage());
        }
    }

    @Override
    public int engineUpdate(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws ShortBufferException {
        a aVar = this.f101450k;
        if (aVar == null) {
            throw new IllegalStateException("not supported in a wrapping mode");
        }
        aVar.write(bArr, i10, i11);
        return 0;
    }

    @Override
    public byte[] engineWrap(Key key) throws IllegalBlockSizeException, InvalidKeyException {
        byte[] encoded = key.getEncoded();
        if (encoded == null) {
            throw new InvalidKeyException("Cannot wrap key, null encoding.");
        }
        try {
            Z z10 = this.f101447h;
            return z10 == null ? engineDoFinal(encoded, 0, encoded.length) : z10.c(encoded, 0, encoded.length);
        } catch (BadPaddingException e10) {
            throw new IllegalBlockSizeException(e10.getMessage());
        }
    }

    public BaseWrapCipher(Z z10) {
        this(z10, 0);
    }

    @Override
    public byte[] engineDoFinal(byte[] bArr, int i10, int i11) throws IllegalBlockSizeException, BadPaddingException {
        byte[] d10;
        a aVar = this.f101450k;
        if (aVar == null) {
            throw new IllegalStateException("not supported in a wrapping mode");
        }
        if (bArr != null) {
            aVar.write(bArr, i10, i11);
        }
        try {
            if (this.f101451l) {
                try {
                    d10 = this.f101447h.c(this.f101450k.d(), 0, this.f101450k.size());
                    return d10;
                } catch (Exception e10) {
                    throw new IllegalBlockSizeException(e10.getMessage());
                }
            }
            try {
                d10 = this.f101447h.d(this.f101450k.d(), 0, this.f101450k.size());
                return d10;
            } catch (InvalidCipherTextException e11) {
                throw new BadPaddingException(e11.getMessage());
            }
        } finally {
            this.f101450k.c();
        }
    }

    @Override
    public void engineInit(int i10, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i10, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e10) {
            throw new InvalidKeyOrParametersException(e10.getMessage(), e10);
        }
    }

    @Override
    public byte[] engineUpdate(byte[] bArr, int i10, int i11) {
        a aVar = this.f101450k;
        if (aVar == null) {
            throw new IllegalStateException("not supported in a wrapping mode");
        }
        aVar.write(bArr, i10, i11);
        return null;
    }

    public BaseWrapCipher(Z z10, int i10) {
        this.f101441b = new Class[]{k.class, PBEParameterSpec.class, RC2ParameterSpec.class, RC5ParameterSpec.class, IvParameterSpec.class};
        this.f101442c = 2;
        this.f101443d = 1;
        this.f101446g = null;
        this.f101447h = null;
        this.f101450k = null;
        this.f101452m = new C12947c();
        this.f101447h = z10;
        this.f101448i = i10;
    }

    @Override
    public void engineInit(int i10, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        InterfaceC2379k c3360o0;
        int i11;
        if (key instanceof C3661a) {
            C3661a c3661a = (C3661a) key;
            if (algorithmParameterSpec instanceof PBEParameterSpec) {
                c3360o0 = d.a.f(c3661a, algorithmParameterSpec, this.f101447h.b());
            } else {
                if (c3661a.h() == null) {
                    throw new InvalidAlgorithmParameterException("PBE requires PBE parameters to be set.");
                }
                c3360o0 = c3661a.h();
            }
        } else {
            c3360o0 = new C3360o0(key.getEncoded());
        }
        if (algorithmParameterSpec instanceof IvParameterSpec) {
            byte[] iv = ((IvParameterSpec) algorithmParameterSpec).getIV();
            this.f101449j = iv;
            c3360o0 = new w0(c3360o0, iv);
        }
        if (algorithmParameterSpec instanceof k) {
            k kVar = (k) algorithmParameterSpec;
            byte[] b10 = kVar.b();
            if (b10 != null) {
                c3360o0 = new y0(c3360o0, b10);
            }
            c3360o0 = new A0(c3360o0, kVar.c());
        }
        if ((c3360o0 instanceof C3360o0) && (i11 = this.f101448i) != 0 && (i10 == 3 || i10 == 1)) {
            byte[] bArr = new byte[i11];
            this.f101449j = bArr;
            secureRandom.nextBytes(bArr);
            c3360o0 = new w0(c3360o0, this.f101449j);
        }
        if (secureRandom != null) {
            c3360o0 = new x0(c3360o0, secureRandom);
        }
        try {
            if (i10 != 1) {
                if (i10 == 2) {
                    this.f101447h.a(false, c3360o0);
                    this.f101450k = new a();
                } else if (i10 == 3) {
                    this.f101447h.a(true, c3360o0);
                    this.f101450k = null;
                } else {
                    if (i10 != 4) {
                        throw new InvalidParameterException("Unknown mode parameter passed to init.");
                    }
                    this.f101447h.a(false, c3360o0);
                    this.f101450k = null;
                }
                this.f101451l = false;
                return;
            }
            this.f101447h.a(true, c3360o0);
            this.f101450k = new a();
            this.f101451l = true;
        } catch (Exception e10) {
            throw new InvalidKeyOrParametersException(e10.getMessage(), e10);
        }
    }
}
