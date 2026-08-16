package Al;

import Bi.P;
import Hj.w;
import ck.o;
import ck.p;
import gl.C13392e;
import gl.C13393f;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyGeneratorSpi;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.security.auth.DestroyFailedException;

public class e extends KeyGeneratorSpi {

    public p f1035a;

    public SecureRandom f1036b;

    public o f1037c;

    @Override
    public SecretKey engineGenerateKey() {
        p pVar = this.f1035a;
        if (pVar != null) {
            P a10 = new C13393f(this.f1036b).a(((b) pVar.c()).a());
            w wVar = new w(new SecretKeySpec(a10.f(), this.f1035a.a()), a10.e());
            try {
                a10.destroy();
                return wVar;
            } catch (DestroyFailedException unused) {
                throw new IllegalStateException("key cleanup failed");
            }
        }
        C13392e c13392e = new C13392e(((a) this.f1037c.d()).a());
        byte[] a11 = this.f1037c.a();
        byte[] b10 = c13392e.b(a11);
        w wVar2 = new w(new SecretKeySpec(b10, this.f1037c.b()), a11);
        org.bouncycastle.util.a.n(b10);
        return wVar2;
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
        this.f1036b = secureRandom;
        if (algorithmParameterSpec instanceof p) {
            this.f1035a = (p) algorithmParameterSpec;
            this.f1037c = null;
        } else {
            if (!(algorithmParameterSpec instanceof o)) {
                throw new InvalidAlgorithmParameterException("unknown spec");
            }
            this.f1035a = null;
            this.f1037c = (o) algorithmParameterSpec;
        }
    }
}
