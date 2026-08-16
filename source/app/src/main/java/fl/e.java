package Fl;

import Bi.P;
import Hj.w;
import ck.o;
import ck.p;
import il.C13754a;
import il.C13755b;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyGeneratorSpi;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.security.auth.DestroyFailedException;

public class e extends KeyGeneratorSpi {

    public p f7206a;

    public SecureRandom f7207b;

    public o f7208c;

    @Override
    public SecretKey engineGenerateKey() {
        p pVar = this.f7206a;
        if (pVar == null) {
            C13754a c13754a = new C13754a(((a) this.f7208c.d()).a());
            byte[] a10 = this.f7208c.a();
            byte[] b10 = c13754a.b(a10);
            byte[] X10 = org.bouncycastle.util.a.X(b10, 0, (this.f7208c.c() + 7) / 8);
            org.bouncycastle.util.a.n(b10);
            w wVar = new w(new SecretKeySpec(X10, this.f7208c.b()), a10);
            org.bouncycastle.util.a.n(X10);
            return wVar;
        }
        P a11 = new C13755b(this.f7207b).a(((b) pVar.c()).a());
        byte[] f10 = a11.f();
        byte[] X11 = org.bouncycastle.util.a.X(f10, 0, (this.f7206a.b() + 7) / 8);
        org.bouncycastle.util.a.n(f10);
        w wVar2 = new w(new SecretKeySpec(X11, this.f7206a.a()), a11.e());
        try {
            a11.destroy();
            return wVar2;
        } catch (DestroyFailedException unused) {
            throw new IllegalStateException("key cleanup failed");
        }
    }

    @Override
    public void engineInit(int i10, SecureRandom secureRandom) {
        throw new UnsupportedOperationException("Operation not supported");
    }

    @Override
    public void engineInit(SecureRandom secureRandom) {
        throw new UnsupportedOperationException("Operation not supported");
    }

    @Override
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        this.f7207b = secureRandom;
        if (algorithmParameterSpec instanceof p) {
            this.f7206a = (p) algorithmParameterSpec;
            this.f7208c = null;
        } else {
            if (!(algorithmParameterSpec instanceof o)) {
                throw new InvalidAlgorithmParameterException("unknown spec");
            }
            this.f7206a = null;
            this.f7208c = (o) algorithmParameterSpec;
        }
    }
}
