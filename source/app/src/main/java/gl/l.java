package Gl;

import Bi.C2371c;
import Bi.r;
import Ol.t;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import jl.n;
import jl.o;
import jl.p;
import org.bouncycastle.util.w;

public class l extends KeyPairGenerator {

    public static Map f7918e;

    public jl.k f7919a;

    public jl.l f7920b;

    public SecureRandom f7921c;

    public boolean f7922d;

    static {
        HashMap hashMap = new HashMap();
        f7918e = hashMap;
        hashMap.put(t.f20442c.b(), n.f93991k);
        f7918e.put(t.f20443d.b(), n.f93992l);
        f7918e.put(t.f20444e.b(), n.f93993m);
        f7918e.put(t.f20445f.b(), n.f93994n);
        f7918e.put(t.f20446g.b(), n.f93995o);
        f7918e.put(t.f20447h.b(), n.f93996p);
    }

    public l() {
        super("SNTRUPrime");
        this.f7920b = new jl.l();
        this.f7921c = r.h();
        this.f7922d = false;
    }

    public static String a(AlgorithmParameterSpec algorithmParameterSpec) {
        return algorithmParameterSpec instanceof t ? ((t) algorithmParameterSpec).b() : w.l(Ml.f.c(algorithmParameterSpec));
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f7922d) {
            jl.k kVar = new jl.k(this.f7921c, n.f93994n);
            this.f7919a = kVar;
            this.f7920b.b(kVar);
            this.f7922d = true;
        }
        C2371c a10 = this.f7920b.a();
        return new KeyPair(new d((p) a10.b()), new c((o) a10.a()));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        throw new IllegalArgumentException("use AlgorithmParameterSpec");
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        String a10 = a(algorithmParameterSpec);
        if (a10 == null) {
            throw new InvalidAlgorithmParameterException("invalid ParameterSpec: " + ((Object) algorithmParameterSpec));
        }
        jl.k kVar = new jl.k(secureRandom, (n) f7918e.get(a10));
        this.f7919a = kVar;
        this.f7920b.b(kVar);
        this.f7922d = true;
    }
}
