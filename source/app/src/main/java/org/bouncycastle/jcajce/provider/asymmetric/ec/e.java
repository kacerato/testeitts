package org.bouncycastle.jcajce.provider.asymmetric.ec;

import Bi.r;
import Ii.C2645c;
import Ii.C2647e;
import Ii.C2667z;
import Ii.G;
import Ii.J;
import Ii.K;
import Ii.L;
import Ii.M;
import Ii.O;
import Ii.a0;
import Li.l0;
import Xi.C3335c;
import Xi.x0;
import android.security.keystore.KeyProperties;
import dk.C12947c;
import dk.InterfaceC12950f;
import fk.InterfaceC13236b;
import java.io.ByteArrayOutputStream;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import org.bouncycastle.jcajce.provider.util.BadBlockException;
import org.bouncycastle.util.w;

public class e extends CipherSpi {

    public l0 f101189b;

    public C3335c f101192e;

    public SecureRandom f101193f;

    public final InterfaceC12950f f101188a = new C12947c();

    public int f101190c = -1;

    public a f101191d = new a();

    public static final class a extends ByteArrayOutputStream {
        public void c() {
            org.bouncycastle.util.a.e0(this.buf, (byte) 0);
            reset();
        }

        public byte[] d() {
            return this.buf;
        }
    }

    public static class b extends e {
        public b() {
            super(new l0());
        }
    }

    public static class c extends e {
        public c() {
            super(new l0(new C2645c(512)));
        }
    }

    public static class d extends e {
        public d() {
            super(new l0(new C2647e(256)));
        }
    }

    public static class C1917e extends e {
        public C1917e() {
            super(new l0(new C2667z()));
        }
    }

    public static class f extends e {
        public f() {
            super(new l0(new G()));
        }
    }

    public static class g extends e {
        public g() {
            super(new l0(new J()));
        }
    }

    public static class h extends e {
        public h() {
            super(new l0(new K()));
        }
    }

    public static class i extends e {
        public i() {
            super(new l0(L.x()));
        }
    }

    public static class j extends e {
        public j() {
            super(new l0(new M()));
        }
    }

    public static class k extends e {
        public k() {
            super(new l0(new O()));
        }
    }

    public static class l extends e {
        public l() {
            super(new l0(new a0()));
        }
    }

    public e(l0 l0Var) {
        this.f101189b = l0Var;
    }

    @Override
    public int engineDoFinal(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
        byte[] engineDoFinal = engineDoFinal(bArr, i10, i11);
        System.arraycopy(engineDoFinal, 0, bArr2, i12, engineDoFinal.length);
        return engineDoFinal.length;
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
        if (key instanceof InterfaceC13236b) {
            return ((InterfaceC13236b) key).getParameters().a().w();
        }
        throw new IllegalArgumentException("not an EC key");
    }

    @Override
    public int engineGetOutputSize(int i10) {
        int i11 = this.f101190c;
        if (i11 == 1 || i11 == 3 || i11 == 2 || i11 == 4) {
            return this.f101189b.e(i10);
        }
        throw new IllegalStateException("cipher not initialised");
    }

    @Override
    public AlgorithmParameters engineGetParameters() {
        return null;
    }

    @Override
    public void engineInit(int i10, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (algorithmParameters == null) {
            engineInit(i10, key, (AlgorithmParameterSpec) null, secureRandom);
            return;
        }
        throw new InvalidAlgorithmParameterException("cannot recognise parameters: " + algorithmParameters.getClass().getName());
    }

    @Override
    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        if (w.p(str).equals(KeyProperties.DIGEST_NONE)) {
            return;
        }
        throw new IllegalArgumentException("can't support mode " + str);
    }

    @Override
    public void engineSetPadding(String str) throws NoSuchPaddingException {
        if (!w.p(str).equals("NOPADDING")) {
            throw new NoSuchPaddingException("padding not available with IESCipher");
        }
    }

    @Override
    public int engineUpdate(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        this.f101191d.write(bArr, i10, i11);
        return 0;
    }

    @Override
    public byte[] engineDoFinal(byte[] bArr, int i10, int i11) throws IllegalBlockSizeException, BadPaddingException {
        byte[] j10;
        if (i11 != 0) {
            this.f101191d.write(bArr, i10, i11);
        }
        try {
            int i12 = this.f101190c;
            if (i12 == 1 || i12 == 3) {
                try {
                    this.f101189b.f(true, new x0(this.f101192e, this.f101193f));
                    j10 = this.f101189b.j(this.f101191d.d(), 0, this.f101191d.size());
                    return j10;
                } catch (Exception e10) {
                    throw new BadBlockException("unable to process block", e10);
                }
            }
            if (i12 != 2 && i12 != 4) {
                throw new IllegalStateException("cipher not initialised");
            }
            try {
                this.f101189b.f(false, this.f101192e);
                j10 = this.f101189b.j(this.f101191d.d(), 0, this.f101191d.size());
                return j10;
            } catch (Exception e11) {
                throw new BadBlockException("unable to process block", e11);
            }
        } finally {
            this.f101191d.c();
        }
    }

    @Override
    public void engineInit(int i10, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i10, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e10) {
            throw new IllegalArgumentException("cannot handle supplied parameter spec: " + e10.getMessage());
        }
    }

    @Override
    public byte[] engineUpdate(byte[] bArr, int i10, int i11) {
        this.f101191d.write(bArr, i10, i11);
        return null;
    }

    @Override
    public void engineInit(int i10, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException, InvalidKeyException {
        C3335c b10;
        if (i10 == 1 || i10 == 3) {
            if (!(key instanceof PublicKey)) {
                throw new InvalidKeyException("must be passed public EC key for encryption");
            }
            b10 = org.bouncycastle.jcajce.provider.asymmetric.ec.d.b((PublicKey) key);
        } else {
            if (i10 != 2 && i10 != 4) {
                throw new InvalidKeyException("must be passed EC key");
            }
            if (!(key instanceof PrivateKey)) {
                throw new InvalidKeyException("must be passed private EC key for decryption");
            }
            b10 = org.bouncycastle.jcajce.provider.asymmetric.util.i.c((PrivateKey) key);
        }
        this.f101192e = b10;
        if (secureRandom != null) {
            this.f101193f = secureRandom;
        } else {
            this.f101193f = r.h();
        }
        this.f101190c = i10;
        this.f101191d.reset();
    }
}
