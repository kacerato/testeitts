package Gl;

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
import jl.C13876a;
import jl.C13877b;

public class g extends KeyGeneratorSpi {

    public p f7901a;

    public SecureRandom f7902b;

    public o f7903c;

    @Override
    public SecretKey engineGenerateKey() {
        p pVar = this.f7901a;
        if (pVar != null) {
            P a10 = new C13877b(this.f7902b).a(((b) pVar.c()).a());
            w wVar = new w(new SecretKeySpec(a10.f(), this.f7901a.a()), a10.e());
            try {
                a10.destroy();
                return wVar;
            } catch (DestroyFailedException unused) {
                throw new IllegalStateException("key cleanup failed");
            }
        }
        C13876a c13876a = new C13876a(((a) this.f7903c.d()).a());
        byte[] a11 = this.f7903c.a();
        byte[] b10 = c13876a.b(a11);
        w wVar2 = new w(new SecretKeySpec(b10, this.f7903c.b()), a11);
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
        this.f7902b = secureRandom;
        if (algorithmParameterSpec instanceof p) {
            this.f7901a = (p) algorithmParameterSpec;
            this.f7903c = null;
        } else {
            if (!(algorithmParameterSpec instanceof o)) {
                throw new InvalidAlgorithmParameterException("unknown spec");
            }
            this.f7901a = null;
            this.f7903c = (o) algorithmParameterSpec;
        }
    }
}
