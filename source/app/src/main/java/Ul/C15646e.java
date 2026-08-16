package ul;

import Bi.P;
import Hj.w;
import ck.o;
import ck.p;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyGeneratorSpi;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.security.auth.DestroyFailedException;

public class C15646e extends KeyGeneratorSpi {

    public p f120803a;

    public SecureRandom f120804b;

    public o f120805c;

    @Override
    public SecretKey engineGenerateKey() {
        p pVar = this.f120803a;
        if (pVar != null) {
            P a10 = new Zk.c(this.f120804b).a(((C15643b) pVar.c()).a());
            w wVar = new w(new SecretKeySpec(a10.f(), this.f120803a.a()), a10.e());
            try {
                a10.destroy();
                return wVar;
            } catch (DestroyFailedException unused) {
                throw new IllegalStateException("key cleanup failed");
            }
        }
        Zk.b bVar = new Zk.b(((C15642a) this.f120805c.d()).a());
        byte[] a11 = this.f120805c.a();
        byte[] b10 = bVar.b(a11);
        w wVar2 = new w(new SecretKeySpec(b10, this.f120805c.b()), a11);
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
        this.f120804b = secureRandom;
        if (algorithmParameterSpec instanceof p) {
            this.f120803a = (p) algorithmParameterSpec;
            this.f120805c = null;
        } else {
            if (!(algorithmParameterSpec instanceof o)) {
                throw new InvalidAlgorithmParameterException("unknown spec");
            }
            this.f120803a = null;
            this.f120805c = (o) algorithmParameterSpec;
        }
    }
}
