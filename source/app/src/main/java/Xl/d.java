package xl;

import Bi.C2371c;
import Bi.r;
import Ml.f;
import dl.C12959i;
import dl.C12960j;
import dl.C12963m;
import dl.C12964n;
import dl.C12965o;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.util.w;

public class d extends KeyPairGenerator {

    public static Map f129851f;

    public final C12963m f129852a;

    public C12959i f129853b;

    public C12960j f129854c;

    public SecureRandom f129855d;

    public boolean f129856e;

    public static class a extends d {
        public a() {
            super(C12963m.f84813f);
        }
    }

    public static class b extends d {
        public b() {
            super(C12963m.f84812e);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f129851f = hashMap;
        hashMap.put(Ol.d.f20342c.b(), C12963m.f84812e);
        f129851f.put(Ol.d.f20343d.b(), C12963m.f84813f);
    }

    public d() {
        super("FALCON");
        this.f129854c = new C12960j();
        this.f129855d = r.h();
        this.f129856e = false;
        this.f129852a = null;
    }

    public static String a(AlgorithmParameterSpec algorithmParameterSpec) {
        return algorithmParameterSpec instanceof Ol.d ? ((Ol.d) algorithmParameterSpec).b() : w.l(f.c(algorithmParameterSpec));
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f129856e) {
            C12963m c12963m = this.f129852a;
            if (c12963m != null) {
                this.f129853b = new C12959i(this.f129855d, c12963m);
            } else {
                this.f129853b = new C12959i(this.f129855d, C12963m.f84812e);
            }
            this.f129854c.b(this.f129853b);
            this.f129856e = true;
        }
        C2371c a10 = this.f129854c.a();
        return new KeyPair(new C16122b((C12965o) a10.b()), new C16121a((C12964n) a10.a()));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        throw new IllegalArgumentException("use AlgorithmParameterSpec");
    }

    public d(C12963m c12963m) {
        super(c12963m.b());
        this.f129854c = new C12960j();
        this.f129855d = r.h();
        this.f129856e = false;
        this.f129852a = c12963m;
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        String a10 = a(algorithmParameterSpec);
        if (a10 == null || !f129851f.containsKey(a10)) {
            throw new InvalidAlgorithmParameterException("invalid ParameterSpec: " + ((Object) algorithmParameterSpec));
        }
        C12963m c12963m = (C12963m) f129851f.get(a10);
        this.f129853b = new C12959i(secureRandom, c12963m);
        if (this.f129852a == null || c12963m.b().equals(this.f129852a.b())) {
            this.f129854c.b(this.f129853b);
            this.f129856e = true;
        } else {
            throw new InvalidAlgorithmParameterException("key pair generator locked to " + w.p(this.f129852a.b()));
        }
    }
}
