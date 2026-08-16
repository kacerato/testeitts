package Mj;

import Bi.C2371c;
import Bi.r;
import Oi.C2932h;
import Oi.C2935k;
import Xi.C3355m;
import Xi.C3363q;
import Xi.C3366s;
import ck.C4210c;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Hashtable;
import javax.crypto.spec.DHParameterSpec;
import org.bouncycastle.jcajce.provider.asymmetric.util.n;
import org.bouncycastle.jce.provider.C14720a;
import org.bouncycastle.util.k;

public class i extends KeyPairGenerator {

    public static Hashtable f15356f = new Hashtable();

    public static Object f15357g = new Object();

    public C3355m f15358a;

    public C2932h f15359b;

    public int f15360c;

    public SecureRandom f15361d;

    public boolean f15362e;

    public i() {
        super("DH");
        this.f15359b = new C2932h();
        this.f15360c = 2048;
        this.f15361d = r.h();
        this.f15362e = false;
    }

    public final C3355m a(SecureRandom secureRandom, DHParameterSpec dHParameterSpec) {
        return dHParameterSpec instanceof C4210c ? new C3355m(secureRandom, ((C4210c) dHParameterSpec).a()) : new C3355m(secureRandom, new C3363q(dHParameterSpec.getP(), dHParameterSpec.getG(), null, dHParameterSpec.getL()));
    }

    @Override
    public KeyPair generateKeyPair() {
        C3355m a10;
        if (!this.f15362e) {
            Integer j10 = k.j(this.f15360c);
            if (f15356f.containsKey(j10)) {
                a10 = (C3355m) f15356f.get(j10);
            } else {
                DHParameterSpec e10 = C14720a.f101702f.e(this.f15360c);
                if (e10 != null) {
                    a10 = a(this.f15361d, e10);
                } else {
                    synchronized (f15357g) {
                        try {
                            if (f15356f.containsKey(j10)) {
                                this.f15358a = (C3355m) f15356f.get(j10);
                            } else {
                                C2935k c2935k = new C2935k();
                                int i10 = this.f15360c;
                                c2935k.b(i10, n.a(i10), this.f15361d);
                                C3355m c3355m = new C3355m(this.f15361d, c2935k.a());
                                this.f15358a = c3355m;
                                f15356f.put(j10, c3355m);
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    this.f15359b.b(this.f15358a);
                    this.f15362e = true;
                }
            }
            this.f15358a = a10;
            this.f15359b.b(this.f15358a);
            this.f15362e = true;
        }
        C2371c a11 = this.f15359b.a();
        return new KeyPair(new d((C3366s) a11.b()), new c((Xi.r) a11.a()));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        this.f15360c = i10;
        this.f15361d = secureRandom;
        this.f15362e = false;
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (!(algorithmParameterSpec instanceof DHParameterSpec)) {
            throw new InvalidAlgorithmParameterException("parameter object not a DHParameterSpec");
        }
        try {
            C3355m a10 = a(secureRandom, (DHParameterSpec) algorithmParameterSpec);
            this.f15358a = a10;
            this.f15359b.b(a10);
            this.f15362e = true;
        } catch (IllegalArgumentException e10) {
            throw new InvalidAlgorithmParameterException(e10.getMessage(), e10);
        }
    }
}
