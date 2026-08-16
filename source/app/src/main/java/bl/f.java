package Bl;

import Bi.C2371c;
import Bi.r;
import cl.C4223f;
import cl.g;
import cl.i;
import cl.j;
import cl.k;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.util.w;

public class f extends KeyPairGenerator {

    public static Map f1949f;

    public C4223f f1950a;

    public g f1951b;

    public SecureRandom f1952c;

    public boolean f1953d;

    public i f1954e;

    public static class a extends f {
        public a() {
            super(i.f35010h);
        }
    }

    public static class b extends f {
        public b() {
            super(i.f35008f);
        }
    }

    public static class c extends f {
        public c() {
            super(i.f35009g);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f1949f = hashMap;
        hashMap.put(Ol.g.f20359c.b(), i.f35008f);
        f1949f.put(Ol.g.f20360d.b(), i.f35009g);
        f1949f.put(Ol.g.f20361e.b(), i.f35010h);
    }

    public f() {
        super("KYBER");
        this.f1951b = new g();
        this.f1952c = r.h();
        this.f1953d = false;
        this.f1954e = null;
    }

    public static String a(AlgorithmParameterSpec algorithmParameterSpec) {
        return algorithmParameterSpec instanceof Ol.g ? ((Ol.g) algorithmParameterSpec).b() : w.l(Ml.f.c(algorithmParameterSpec));
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f1953d) {
            i iVar = this.f1954e;
            if (iVar != null) {
                this.f1950a = new C4223f(this.f1952c, iVar);
            } else {
                this.f1950a = new C4223f(this.f1952c, i.f35010h);
            }
            this.f1951b.b(this.f1950a);
            this.f1953d = true;
        }
        C2371c a10 = this.f1951b.a();
        return new KeyPair(new Bl.b((k) a10.b()), new Bl.a((j) a10.a()));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        throw new IllegalArgumentException("use AlgorithmParameterSpec");
    }

    public f(i iVar) {
        super(w.p(iVar.b()));
        this.f1951b = new g();
        this.f1952c = r.h();
        this.f1953d = false;
        this.f1954e = iVar;
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        String a10 = a(algorithmParameterSpec);
        if (a10 == null || !f1949f.containsKey(a10)) {
            throw new InvalidAlgorithmParameterException("invalid ParameterSpec: " + ((Object) algorithmParameterSpec));
        }
        i iVar = (i) f1949f.get(a10);
        this.f1950a = new C4223f(secureRandom, iVar);
        if (this.f1954e == null || iVar.b().equals(this.f1954e.b())) {
            this.f1951b.b(this.f1950a);
            this.f1953d = true;
        } else {
            throw new InvalidAlgorithmParameterException("key pair generator locked to " + w.p(this.f1954e.b()));
        }
    }
}
