package yl;

import Bi.P;
import Hj.w;
import ck.o;
import ck.p;
import el.C13162b;
import el.C13163c;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyGeneratorSpi;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.security.auth.DestroyFailedException;

public class C16211e extends KeyGeneratorSpi {

    public p f130501a;

    public SecureRandom f130502b;

    public o f130503c;

    @Override
    public SecretKey engineGenerateKey() {
        p pVar = this.f130501a;
        if (pVar != null) {
            P a10 = new C13163c(this.f130502b).a(((C16208b) pVar.c()).a());
            w wVar = new w(new SecretKeySpec(a10.f(), this.f130501a.a()), a10.e());
            try {
                a10.destroy();
                return wVar;
            } catch (DestroyFailedException unused) {
                throw new IllegalStateException("key cleanup failed");
            }
        }
        C13162b c13162b = new C13162b(((C16207a) this.f130503c.d()).a());
        byte[] a11 = this.f130503c.a();
        byte[] b10 = c13162b.b(a11);
        w wVar2 = new w(new SecretKeySpec(b10, this.f130503c.b()), a11);
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
        this.f130502b = secureRandom;
        if (algorithmParameterSpec instanceof p) {
            this.f130501a = (p) algorithmParameterSpec;
            this.f130503c = null;
        } else {
            if (!(algorithmParameterSpec instanceof o)) {
                throw new InvalidAlgorithmParameterException("unknown spec");
            }
            this.f130501a = null;
            this.f130503c = (o) algorithmParameterSpec;
        }
    }
}
