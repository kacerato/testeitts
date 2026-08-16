package Jl;

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
import ml.C14325c;
import ml.C14326d;

public class e extends KeyGeneratorSpi {

    public p f10657a;

    public SecureRandom f10658b;

    public o f10659c;

    @Override
    public SecretKey engineGenerateKey() {
        p pVar = this.f10657a;
        if (pVar != null) {
            P a10 = new C14326d(this.f10658b).a(((b) pVar.c()).a());
            w wVar = new w(new SecretKeySpec(a10.f(), this.f10657a.a()), a10.e());
            try {
                a10.destroy();
                return wVar;
            } catch (DestroyFailedException unused) {
                throw new IllegalStateException("key cleanup failed");
            }
        }
        C14325c c14325c = new C14325c(((a) this.f10659c.d()).a());
        byte[] a11 = this.f10659c.a();
        byte[] b10 = c14325c.b(a11);
        w wVar2 = new w(new SecretKeySpec(b10, this.f10659c.b()), a11);
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
        this.f10658b = secureRandom;
        if (algorithmParameterSpec instanceof p) {
            this.f10657a = (p) algorithmParameterSpec;
            this.f10659c = null;
        } else {
            if (!(algorithmParameterSpec instanceof o)) {
                throw new InvalidAlgorithmParameterException("unknown spec");
            }
            this.f10657a = null;
            this.f10659c = (o) algorithmParameterSpec;
        }
    }
}
