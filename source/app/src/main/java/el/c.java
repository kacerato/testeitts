package El;

import Xi.C3335c;
import hl.C13530c;
import hl.C13531d;
import hl.h;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.ShortBufferException;

public class c extends org.bouncycastle.jcajce.provider.asymmetric.util.a {

    public C13530c f6054k;

    public b f6055l;

    public C13531d f6056m;

    public byte[] f6057n;

    public c() {
        super("NH", null);
    }

    @Override
    public byte[] b() {
        return engineGenerateSecret();
    }

    @Override
    public void c(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException("NewHope does not require parameters");
    }

    @Override
    public Key engineDoPhase(Key key, boolean z10) throws InvalidKeyException, IllegalStateException {
        if (!z10) {
            throw new IllegalStateException("NewHope can only be between two parties.");
        }
        b bVar = (b) key;
        this.f6055l = bVar;
        C13531d c13531d = this.f6056m;
        if (c13531d == null) {
            this.f6057n = this.f6054k.a(bVar.a());
            return null;
        }
        Yk.c a10 = c13531d.a((C3335c) bVar.a());
        this.f6057n = a10.b();
        return new b((h) a10.a());
    }

    @Override
    public int engineGenerateSecret(byte[] bArr, int i10) throws IllegalStateException, ShortBufferException {
        byte[] bArr2 = this.f6057n;
        System.arraycopy(bArr2, 0, bArr, i10, bArr2.length);
        org.bouncycastle.util.a.e0(this.f6057n, (byte) 0);
        return this.f6057n.length;
    }

    @Override
    public void engineInit(Key key, SecureRandom secureRandom) throws InvalidKeyException {
        if (key == null) {
            this.f6056m = new C13531d(secureRandom);
            return;
        }
        C13530c c13530c = new C13530c();
        this.f6054k = c13530c;
        c13530c.b(((a) key).a());
    }

    @Override
    public byte[] engineGenerateSecret() throws IllegalStateException {
        byte[] p10 = org.bouncycastle.util.a.p(this.f6057n);
        org.bouncycastle.util.a.e0(this.f6057n, (byte) 0);
        return p10;
    }
}
