package Gl;

import Bi.C2371c;
import Bi.r;
import Ol.n;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import jl.C13878c;
import jl.C13879d;
import jl.C13881f;
import org.bouncycastle.util.w;

public class h extends KeyPairGenerator {

    public static Map f7904e;

    public C13878c f7905a;

    public C13879d f7906b;

    public SecureRandom f7907c;

    public boolean f7908d;

    static {
        HashMap hashMap = new HashMap();
        f7904e = hashMap;
        hashMap.put(n.f20390c.b(), C13881f.f93961o);
        f7904e.put(n.f20391d.b(), C13881f.f93962p);
        f7904e.put(n.f20392e.b(), C13881f.f93963q);
        f7904e.put(n.f20393f.b(), C13881f.f93964r);
        f7904e.put(n.f20394g.b(), C13881f.f93965s);
        f7904e.put(n.f20395h.b(), C13881f.f93966t);
    }

    public h() {
        super("NTRULPRime");
        this.f7906b = new C13879d();
        this.f7907c = r.h();
        this.f7908d = false;
    }

    public static String a(AlgorithmParameterSpec algorithmParameterSpec) {
        return algorithmParameterSpec instanceof n ? ((n) algorithmParameterSpec).b() : w.l(Ml.f.c(algorithmParameterSpec));
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f7908d) {
            C13878c c13878c = new C13878c(this.f7907c, C13881f.f93964r);
            this.f7905a = c13878c;
            this.f7906b.b(c13878c);
            this.f7908d = true;
        }
        C2371c a10 = this.f7906b.a();
        return new KeyPair(new b((jl.h) a10.b()), new a((jl.g) a10.a()));
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
        C13878c c13878c = new C13878c(secureRandom, (C13881f) f7904e.get(a10));
        this.f7905a = c13878c;
        this.f7906b.b(c13878c);
        this.f7908d = true;
    }
}
