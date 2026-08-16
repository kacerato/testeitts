package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import Bi.C2371c;
import Bi.r;
import Ii.L;
import Oi.C2937m;
import Oi.C2938n;
import Xi.A;
import Xi.B;
import Xi.C3372w;
import Xi.C3374y;
import Xi.C3375z;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.DSAParameterSpec;
import java.util.Hashtable;
import org.bouncycastle.jcajce.provider.asymmetric.util.n;
import org.bouncycastle.jce.provider.C14720a;
import org.bouncycastle.util.k;
import org.bouncycastle.util.q;

public class g extends KeyPairGenerator {

    public static Hashtable f101153f = new Hashtable();

    public static Object f101154g = new Object();

    public C3372w f101155a;

    public C2937m f101156b;

    public int f101157c;

    public SecureRandom f101158d;

    public boolean f101159e;

    public g() {
        super("DSA");
        this.f101156b = new C2937m();
        this.f101157c = 2048;
        this.f101158d = r.h();
        this.f101159e = false;
    }

    @Override
    public KeyPair generateKeyPair() {
        C2938n c2938n;
        int i10;
        SecureRandom secureRandom;
        if (!this.f101159e) {
            Integer j10 = k.j(this.f101157c);
            if (f101153f.containsKey(j10)) {
                this.f101155a = (C3372w) f101153f.get(j10);
            } else {
                synchronized (f101154g) {
                    try {
                        if (f101153f.containsKey(j10)) {
                            this.f101155a = (C3372w) f101153f.get(j10);
                        } else {
                            int a10 = n.a(this.f101157c);
                            int i11 = this.f101157c;
                            if (i11 == 1024) {
                                c2938n = new C2938n();
                                if (q.f("org.bouncycastle.dsa.FIPS186-2for1024bits")) {
                                    i10 = this.f101157c;
                                    secureRandom = this.f101158d;
                                    c2938n.k(i10, a10, secureRandom);
                                    C3372w c3372w = new C3372w(this.f101158d, c2938n.d());
                                    this.f101155a = c3372w;
                                    f101153f.put(j10, c3372w);
                                } else {
                                    c2938n.l(new C3374y(1024, 160, a10, this.f101158d));
                                    C3372w c3372w2 = new C3372w(this.f101158d, c2938n.d());
                                    this.f101155a = c3372w2;
                                    f101153f.put(j10, c3372w2);
                                }
                            } else if (i11 > 1024) {
                                C3374y c3374y = new C3374y(i11, 256, a10, this.f101158d);
                                c2938n = new C2938n(L.x());
                                c2938n.l(c3374y);
                                C3372w c3372w22 = new C3372w(this.f101158d, c2938n.d());
                                this.f101155a = c3372w22;
                                f101153f.put(j10, c3372w22);
                            } else {
                                c2938n = new C2938n();
                                i10 = this.f101157c;
                                secureRandom = this.f101158d;
                                c2938n.k(i10, a10, secureRandom);
                                C3372w c3372w222 = new C3372w(this.f101158d, c2938n.d());
                                this.f101155a = c3372w222;
                                f101153f.put(j10, c3372w222);
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            this.f101156b.b(this.f101155a);
            this.f101159e = true;
        }
        C2371c a11 = this.f101156b.a();
        return new KeyPair(new d((B) a11.b()), new c((A) a11.a()));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        boolean z10;
        if (i10 < 512 || i10 > 4096 || ((i10 < 1024 && i10 % 64 != 0) || (i10 >= 1024 && i10 % 1024 != 0))) {
            throw new InvalidParameterException("strength must be from 512 - 4096 and a multiple of 1024 above 1024");
        }
        DSAParameterSpec a10 = C14720a.f101702f.a(i10);
        if (a10 != null) {
            C3372w c3372w = new C3372w(secureRandom, new C3375z(a10.getP(), a10.getQ(), a10.getG()));
            this.f101155a = c3372w;
            this.f101156b.b(c3372w);
            z10 = true;
        } else {
            this.f101157c = i10;
            this.f101158d = secureRandom;
            z10 = false;
        }
        this.f101159e = z10;
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (!(algorithmParameterSpec instanceof DSAParameterSpec)) {
            throw new InvalidAlgorithmParameterException("parameter object not a DSAParameterSpec");
        }
        DSAParameterSpec dSAParameterSpec = (DSAParameterSpec) algorithmParameterSpec;
        C3372w c3372w = new C3372w(secureRandom, new C3375z(dSAParameterSpec.getP(), dSAParameterSpec.getQ(), dSAParameterSpec.getG()));
        this.f101155a = c3372w;
        this.f101156b.b(c3372w);
        this.f101159e = true;
    }
}
