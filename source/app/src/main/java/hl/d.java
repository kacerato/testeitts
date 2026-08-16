package Hl;

import Bi.C2371c;
import Bi.r;
import Ml.f;
import Ol.p;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import kl.i;
import kl.j;
import kl.l;
import kl.m;
import kl.n;
import org.bouncycastle.util.w;

public class d extends KeyPairGenerator {

    public static Map f8637e;

    public i f8638a;

    public j f8639b;

    public SecureRandom f8640c;

    public boolean f8641d;

    static {
        HashMap hashMap = new HashMap();
        f8637e = hashMap;
        hashMap.put(p.f20406c.b(), l.f95444d);
        f8637e.put(p.f20407d.b(), l.f95445e);
        f8637e.put(p.f20408e.b(), l.f95446f);
        f8637e.put(p.f20409f.b(), l.f95447g);
        f8637e.put(p.f20410g.b(), l.f95448h);
        f8637e.put(p.f20411h.b(), l.f95449i);
        f8637e.put(p.f20412i.b(), l.f95450j);
        f8637e.put(p.f20413j.b(), l.f95451k);
        f8637e.put(p.f20414k.b(), l.f95452l);
        f8637e.put(p.f20415l.b(), l.f95453m);
        f8637e.put(p.f20416m.b(), l.f95454n);
        f8637e.put(p.f20417n.b(), l.f95455o);
    }

    public d() {
        super("Picnic");
        this.f8639b = new j();
        this.f8640c = r.h();
        this.f8641d = false;
    }

    public static String a(AlgorithmParameterSpec algorithmParameterSpec) {
        return algorithmParameterSpec instanceof p ? ((p) algorithmParameterSpec).b() : w.l(f.c(algorithmParameterSpec));
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f8641d) {
            i iVar = new i(this.f8640c, l.f95447g);
            this.f8638a = iVar;
            this.f8639b.b(iVar);
            this.f8641d = true;
        }
        C2371c a10 = this.f8639b.a();
        return new KeyPair(new b((n) a10.b()), new a((m) a10.a()));
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
        i iVar = new i(secureRandom, (l) f8637e.get(a10));
        this.f8638a = iVar;
        this.f8639b.b(iVar);
        this.f8641d = true;
    }
}
