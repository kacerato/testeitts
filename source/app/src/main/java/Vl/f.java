package vl;

import Bi.C2371c;
import Bi.r;
import al.g;
import al.h;
import al.j;
import al.k;
import al.l;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.util.w;

public class f extends KeyPairGenerator {

    public static Map f121702e;

    public g f121703a;

    public h f121704b;

    public SecureRandom f121705c;

    public boolean f121706d;

    static {
        HashMap hashMap = new HashMap();
        f121702e = hashMap;
        hashMap.put(Ol.b.f20325c.b(), j.f32371n);
        f121702e.put(Ol.b.f20326d.b(), j.f32372o);
        f121702e.put(Ol.b.f20327e.b(), j.f32373p);
        f121702e.put(Ol.b.f20328f.b(), j.f32374q);
        f121702e.put(Ol.b.f20329g.b(), j.f32375r);
        f121702e.put(Ol.b.f20330h.b(), j.f32376s);
        f121702e.put(Ol.b.f20331i.b(), j.f32377t);
        f121702e.put(Ol.b.f20332j.b(), j.f32378u);
        f121702e.put(Ol.b.f20333k.b(), j.f32379v);
        f121702e.put(Ol.b.f20334l.b(), j.f32380w);
    }

    public f() {
        super("CMCE");
        this.f121704b = new h();
        this.f121705c = r.h();
        this.f121706d = false;
    }

    public static String a(AlgorithmParameterSpec algorithmParameterSpec) {
        return algorithmParameterSpec instanceof Ol.b ? ((Ol.b) algorithmParameterSpec).b() : w.l(Ml.f.c(algorithmParameterSpec));
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f121706d) {
            g gVar = new g(this.f121705c, j.f32380w);
            this.f121703a = gVar;
            this.f121704b.b(gVar);
            this.f121706d = true;
        }
        C2371c a10 = this.f121704b.a();
        return new KeyPair(new C15861b((l) a10.b()), new C15860a((k) a10.a()));
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
        g gVar = new g(secureRandom, (j) f121702e.get(a10));
        this.f121703a = gVar;
        this.f121704b.b(gVar);
        this.f121706d = true;
    }
}
