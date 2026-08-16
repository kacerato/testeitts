package Bl;

import Bi.P;
import Hj.w;
import ck.o;
import ck.p;
import cl.C4221d;
import cl.C4222e;
import cl.i;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyGeneratorSpi;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.security.auth.DestroyFailedException;

public class e extends KeyGeneratorSpi {

    public p f1945a;

    public SecureRandom f1946b;

    public o f1947c;

    public i f1948d;

    public static class a extends e {
        public a() {
            super(i.f35010h);
        }
    }

    public static class b extends e {
        public b() {
            super(i.f35008f);
        }
    }

    public static class c extends e {
        public c() {
            super(i.f35009g);
        }
    }

    public e() {
        this(null);
    }

    @Override
    public SecretKey engineGenerateKey() {
        p pVar = this.f1945a;
        if (pVar == null) {
            C4221d c4221d = new C4221d(((Bl.a) this.f1947c.d()).a());
            byte[] a10 = this.f1947c.a();
            byte[] b10 = c4221d.b(a10);
            byte[] X10 = org.bouncycastle.util.a.X(b10, 0, (this.f1947c.c() + 7) / 8);
            org.bouncycastle.util.a.n(b10);
            w wVar = new w(new SecretKeySpec(X10, this.f1947c.b()), a10);
            org.bouncycastle.util.a.n(X10);
            return wVar;
        }
        P a11 = new C4222e(this.f1946b).a(((Bl.b) pVar.c()).a());
        byte[] f10 = a11.f();
        byte[] X11 = org.bouncycastle.util.a.X(f10, 0, (this.f1945a.b() + 7) / 8);
        org.bouncycastle.util.a.n(f10);
        w wVar2 = new w(new SecretKeySpec(X11, this.f1945a.a()), a11.e());
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

    public e(i iVar) {
        this.f1948d = iVar;
    }

    @Override
    public void engineInit(SecureRandom secureRandom) {
        throw new UnsupportedOperationException("Operation not supported");
    }

    @Override
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        this.f1946b = secureRandom;
        if (algorithmParameterSpec instanceof p) {
            this.f1945a = (p) algorithmParameterSpec;
            this.f1947c = null;
            i iVar = this.f1948d;
            if (iVar != null) {
                String p10 = org.bouncycastle.util.w.p(iVar.b());
                if (p10.equals(this.f1945a.c().getAlgorithm())) {
                    return;
                }
                throw new InvalidAlgorithmParameterException("key generator locked to " + p10);
            }
            return;
        }
        if (!(algorithmParameterSpec instanceof o)) {
            throw new InvalidAlgorithmParameterException("unknown spec");
        }
        this.f1945a = null;
        this.f1947c = (o) algorithmParameterSpec;
        i iVar2 = this.f1948d;
        if (iVar2 != null) {
            String p11 = org.bouncycastle.util.w.p(iVar2.b());
            if (p11.equals(this.f1947c.d().getAlgorithm())) {
                return;
            }
            throw new InvalidAlgorithmParameterException("key generator locked to " + p11);
        }
    }
}
