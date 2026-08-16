package Sj;

import Bi.C2371c;
import Bi.r;
import Oi.M;
import Xh.t;
import Xi.E0;
import Xi.F0;
import Xi.G0;
import android.security.keystore.KeyProperties;
import hi.C13486b;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.RSAKeyGenParameterSpec;
import oh.A0;
import org.bouncycastle.jcajce.provider.asymmetric.util.n;

public class j extends KeyPairGenerator {

    public static final C13486b f23576d = new C13486b(t.f29017H0, A0.f98776c);

    public static final C13486b f23577e = new C13486b(t.f29045Q0);

    public static final BigInteger f23578f = BigInteger.valueOf(65537);

    public E0 f23579a;

    public M f23580b;

    public C13486b f23581c;

    public static class a extends j {
        public a() {
            super("RSASSA-PSS", j.f23577e);
        }
    }

    public j() {
        this(KeyProperties.KEY_ALGORITHM_RSA, f23576d);
    }

    @Override
    public KeyPair generateKeyPair() {
        C2371c a10 = this.f23580b.a();
        return new KeyPair(new d(this.f23581c, (F0) a10.b()), new b(this.f23581c, (G0) a10.a()));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        E0 e02 = new E0(f23578f, secureRandom, i10, n.a(i10));
        this.f23579a = e02;
        this.f23580b.b(e02);
    }

    public j(String str, C13486b c13486b) {
        super(str);
        this.f23581c = c13486b;
        this.f23580b = new M();
        E0 e02 = new E0(f23578f, r.h(), 2048, n.a(2048));
        this.f23579a = e02;
        this.f23580b.b(e02);
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (!(algorithmParameterSpec instanceof RSAKeyGenParameterSpec)) {
            throw new InvalidAlgorithmParameterException("parameter object not a RSAKeyGenParameterSpec");
        }
        RSAKeyGenParameterSpec rSAKeyGenParameterSpec = (RSAKeyGenParameterSpec) algorithmParameterSpec;
        E0 e02 = new E0(rSAKeyGenParameterSpec.getPublicExponent(), secureRandom, rSAKeyGenParameterSpec.getKeysize(), n.a(2048));
        this.f23579a = e02;
        this.f23580b.b(e02);
    }
}
