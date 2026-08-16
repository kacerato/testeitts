package Al;

import Bi.C2371c;
import Bi.r;
import gl.C13394g;
import gl.C13395h;
import gl.C13397j;
import gl.C13398k;
import gl.C13399l;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.util.w;

public class f extends KeyPairGenerator {

    public static Map f1038e;

    public C13394g f1039a;

    public C13395h f1040b;

    public SecureRandom f1041c;

    public boolean f1042d;

    static {
        HashMap hashMap = new HashMap();
        f1038e = hashMap;
        C13397j c13397j = C13397j.f90084p;
        hashMap.put("hqc-128", c13397j);
        Map map = f1038e;
        C13397j c13397j2 = C13397j.f90085q;
        map.put("hqc-192", c13397j2);
        Map map2 = f1038e;
        C13397j c13397j3 = C13397j.f90086r;
        map2.put("hqc-256", c13397j3);
        f1038e.put(Ol.f.f20354c.b(), c13397j);
        f1038e.put(Ol.f.f20355d.b(), c13397j2);
        f1038e.put(Ol.f.f20356e.b(), c13397j3);
    }

    public f() {
        super("HQC");
        this.f1040b = new C13395h();
        this.f1041c = r.h();
        this.f1042d = false;
    }

    public static String a(AlgorithmParameterSpec algorithmParameterSpec) {
        return algorithmParameterSpec instanceof Ol.f ? ((Ol.f) algorithmParameterSpec).b() : w.l(Ml.f.c(algorithmParameterSpec));
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f1042d) {
            C13394g c13394g = new C13394g(this.f1041c, C13397j.f90084p);
            this.f1039a = c13394g;
            this.f1040b.b(c13394g);
            this.f1042d = true;
        }
        C2371c a10 = this.f1040b.a();
        return new KeyPair(new b((C13399l) a10.b()), new a((C13398k) a10.a()));
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
        C13394g c13394g = new C13394g(secureRandom, (C13397j) f1038e.get(a10));
        this.f1039a = c13394g;
        this.f1040b.b(c13394g);
        this.f1042d = true;
    }
}
