package vl;

import Bi.P;
import Hj.w;
import al.C3675e;
import al.C3676f;
import ck.o;
import ck.p;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyGeneratorSpi;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.security.auth.DestroyFailedException;

public class e extends KeyGeneratorSpi {

    public p f121699a;

    public SecureRandom f121700b;

    public o f121701c;

    @Override
    public SecretKey engineGenerateKey() {
        p pVar = this.f121699a;
        if (pVar != null) {
            P a10 = new C3676f(this.f121700b).a(((C15861b) pVar.c()).a());
            w wVar = new w(new SecretKeySpec(a10.f(), this.f121699a.a()), a10.e());
            try {
                a10.destroy();
                return wVar;
            } catch (DestroyFailedException unused) {
                throw new IllegalStateException("key cleanup failed");
            }
        }
        C3675e c3675e = new C3675e(((C15860a) this.f121701c.d()).a());
        byte[] a11 = this.f121701c.a();
        byte[] b10 = c3675e.b(a11);
        w wVar2 = new w(new SecretKeySpec(b10, this.f121701c.b()), a11);
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
        this.f121700b = secureRandom;
        if (algorithmParameterSpec instanceof p) {
            this.f121699a = (p) algorithmParameterSpec;
            this.f121701c = null;
        } else {
            if (!(algorithmParameterSpec instanceof o)) {
                throw new InvalidAlgorithmParameterException("unknown spec");
            }
            this.f121699a = null;
            this.f121701c = (o) algorithmParameterSpec;
        }
    }
}
