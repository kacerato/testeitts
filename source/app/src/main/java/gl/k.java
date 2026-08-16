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

public class k extends KeyGeneratorSpi {

    public p f7915a;

    public SecureRandom f7916b;

    public o f7917c;

    @Override
    public SecretKey engineGenerateKey() {
        p pVar = this.f7915a;
        if (pVar != null) {
            P a10 = new jl.j(this.f7916b).a(((d) pVar.c()).a());
            w wVar = new w(new SecretKeySpec(a10.f(), this.f7915a.a()), a10.e());
            try {
                a10.destroy();
                return wVar;
            } catch (DestroyFailedException unused) {
                throw new IllegalStateException("key cleanup failed");
            }
        }
        jl.i iVar = new jl.i(((c) this.f7917c.d()).a());
        byte[] a11 = this.f7917c.a();
        byte[] b10 = iVar.b(a11);
        w wVar2 = new w(new SecretKeySpec(b10, this.f7917c.b()), a11);
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
        this.f7916b = secureRandom;
        if (algorithmParameterSpec instanceof p) {
            this.f7915a = (p) algorithmParameterSpec;
            this.f7917c = null;
        } else {
            if (!(algorithmParameterSpec instanceof o)) {
                throw new InvalidAlgorithmParameterException("unknown spec");
            }
            this.f7915a = null;
            this.f7917c = (o) algorithmParameterSpec;
        }
    }
}
