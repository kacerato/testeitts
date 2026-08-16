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

public class o extends Ml.b implements t, E0 {

    public InterfaceC2392y f5298f;

    public Rl.p f5299g;

    public ByteArrayOutputStream f5300h;

    public static class a extends o {
        public a() {
            super(org.bouncycastle.crypto.util.g.f(), new Rl.p());
        }
    }

    public static class b extends o {
        public b() {
            super(org.bouncycastle.crypto.util.g.h(), new Rl.p());
        }
    }

    public static class c extends o {
        public c() {
            super(org.bouncycastle.crypto.util.g.j(), new Rl.p());
        }
    }

    public static class d extends o {
        public d() {
            super(org.bouncycastle.crypto.util.g.t(), new Rl.p());
        }
    }

    public static class e extends o {
        public e() {
            super(org.bouncycastle.crypto.util.g.d(), new Rl.p());
        }
    }

    public o(InterfaceC2392y interfaceC2392y, Rl.p pVar) {
        this.f5300h = new ByteArrayOutputStream();
        this.f5298f = interfaceC2392y;
        this.f5299g = pVar;
        this.f5300h = new ByteArrayOutputStream();
    }

    @Override
    public byte[] d(byte[] bArr, int i10, int i11) throws BadPaddingException {
        q(bArr, i10, i11);
        byte[] byteArray = this.f5300h.toByteArray();
        this.f5300h.reset();
        int i12 = this.f15446b;
        if (i12 == 1) {
            return this.f5299g.c(byteArray);
        }
        if (i12 != 2) {
            return null;
        }
        try {
            return this.f5299g.b(byteArray);
        } catch (InvalidCipherTextException e10) {
            throw new BadPaddingException(e10.getMessage());
        }
    }

    @Override
    public int g(Key key) throws InvalidKeyException {
        return this.f5299g.f((Rl.d) (key instanceof PublicKey ? g.b((PublicKey) key) : g.a((PrivateKey) key)));
    }

    @Override
    public String h() {
        return "McEliecePointchevalCipher";
    }

    @Override
    public byte[] q(byte[] bArr, int i10, int i11) {
        this.f5300h.write(bArr, i10, i11);
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
        C3335c a10 = g.a((PrivateKey) key);
        this.f5298f.reset();
        this.f5299g.a(false, a10);
    }

    @Override
    public void u(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        x0 x0Var = new x0(g.b((PublicKey) key), secureRandom);
        this.f5298f.reset();
        this.f5299g.a(true, x0Var);
    }
}
