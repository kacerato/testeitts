package ul;

import Bi.C2371c;
import Bi.r;
import Zk.g;
import Zk.h;
import Zk.i;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.util.w;

public class C15647f extends KeyPairGenerator {

    public static Map f120806e;

    public Zk.d f120807a;

    public Zk.e f120808b;

    public SecureRandom f120809c;

    public boolean f120810d;

    static {
        HashMap hashMap = new HashMap();
        f120806e = hashMap;
        g gVar = g.f31488k;
        hashMap.put("bike128", gVar);
        Map map = f120806e;
        g gVar2 = g.f31489l;
        map.put("bike192", gVar2);
        Map map2 = f120806e;
        g gVar3 = g.f31490m;
        map2.put("bike256", gVar3);
        f120806e.put(Ol.a.f20320c.b(), gVar);
        f120806e.put(Ol.a.f20321d.b(), gVar2);
        f120806e.put(Ol.a.f20322e.b(), gVar3);
    }

    public C15647f() {
        super("BIKE");
        this.f120808b = new Zk.e();
        this.f120809c = r.h();
        this.f120810d = false;
    }

    public static String a(AlgorithmParameterSpec algorithmParameterSpec) {
        return algorithmParameterSpec instanceof Ol.a ? ((Ol.a) algorithmParameterSpec).b() : w.l(Ml.f.c(algorithmParameterSpec));
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f120810d) {
            Zk.d dVar = new Zk.d(this.f120809c, g.f31488k);
            this.f120807a = dVar;
            this.f120808b.b(dVar);
            this.f120810d = true;
        }
        C2371c a10 = this.f120808b.a();
        return new KeyPair(new C15643b((i) a10.b()), new C15642a((h) a10.a()));
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
        Zk.d dVar = new Zk.d(secureRandom, (g) f120806e.get(a10));
        this.f120807a = dVar;
        this.f120808b.b(dVar);
        this.f120810d = true;
    }
}
