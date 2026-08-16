package Dl;

import Bi.InterfaceC2392y;
import Xh.t;
import Xi.C3335c;
import Xi.x0;
import hi.E0;
import java.io.ByteArrayOutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class m extends Ml.b implements t, E0 {

    public InterfaceC2392y f5294f;

    public Rl.n f5295g;

    public ByteArrayOutputStream f5296h;

    public static class a extends m {
        public a() {
            super(org.bouncycastle.crypto.util.g.f(), new Rl.n());
        }
    }

    public static class b extends m {
        public b() {
            super(org.bouncycastle.crypto.util.g.h(), new Rl.n());
        }
    }

    public static class c extends m {
        public c() {
            super(org.bouncycastle.crypto.util.g.j(), new Rl.n());
        }
    }

    public static class d extends m {
        public d() {
            super(org.bouncycastle.crypto.util.g.t(), new Rl.n());
        }
    }

    public static class e extends m {
        public e() {
            super(org.bouncycastle.crypto.util.g.d(), new Rl.n());
        }
    }

    public m() {
        this.f5296h = new ByteArrayOutputStream();
        this.f5296h = new ByteArrayOutputStream();
    }

    public final byte[] A(byte[] bArr) throws BadPaddingException {
        int length = bArr.length - 1;
        while (length >= 0 && bArr[length] == 0) {
            length--;
        }
        if (bArr[length] != 1) {
            throw new BadPaddingException("invalid ciphertext");
        }
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    @Override
    public byte[] d(byte[] bArr, int i10, int i11) throws BadPaddingException {
        q(bArr, i10, i11);
        int i12 = this.f15446b;
        if (i12 == 1) {
            return this.f5295g.c(z());
        }
        if (i12 != 2) {
            throw new IllegalStateException("unknown mode in doFinal");
        }
        try {
            byte[] byteArray = this.f5296h.toByteArray();
            this.f5296h.reset();
            return A(this.f5295g.b(byteArray));
        } catch (InvalidCipherTextException e10) {
            throw new BadPaddingException(e10.getMessage());
        }
    }

    @Override
    public int g(Key key) throws InvalidKeyException {
        C3335c a10;
        if (key instanceof PublicKey) {
            a10 = g.b((PublicKey) key);
        } else {
            if (!(key instanceof PrivateKey)) {
                throw new InvalidKeyException();
            }
            a10 = g.a((PrivateKey) key);
        }
        return this.f5295g.d((Rl.d) a10);
    }

    @Override
    public String h() {
        return "McElieceKobaraImaiCipher";
    }

    @Override
    public byte[] q(byte[] bArr, int i10, int i11) {
        this.f5296h.write(bArr, i10, i11);
        return new byte[0];
    }

    @Override
    public int r(int i10) {
        return 0;
    }

    @Override
    public int s(int i10) {
        return 0;
    }

    @Override
    public void t(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.f5296h.reset();
        C3335c a10 = g.a((PrivateKey) key);
        this.f5294f.reset();
        this.f5295g.a(false, a10);
    }

    @Override
    public void u(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.f5296h.reset();
        x0 x0Var = new x0(g.b((PublicKey) key), secureRandom);
        this.f5294f.reset();
        this.f5295g.a(true, x0Var);
    }

    public final byte[] z() {
        this.f5296h.write(1);
        byte[] byteArray = this.f5296h.toByteArray();
        this.f5296h.reset();
        return byteArray;
    }

    public m(InterfaceC2392y interfaceC2392y, Rl.n nVar) {
        this.f5296h = new ByteArrayOutputStream();
        this.f5294f = interfaceC2392y;
        this.f5295g = nVar;
        this.f5296h = new ByteArrayOutputStream();
    }
}
