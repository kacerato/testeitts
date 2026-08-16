package Fl;

import Bi.C2371c;
import Bi.r;
import Ol.o;
import il.C13756c;
import il.C13757d;
import il.g;
import il.h;
import il.i;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.util.w;

public class f extends KeyPairGenerator {

    public static Map f7209e;

    public C13756c f7210a;

    public C13757d f7211b;

    public SecureRandom f7212c;

    public boolean f7213d;

    static {
        HashMap hashMap = new HashMap();
        f7209e = hashMap;
        hashMap.put(o.f20398c.b(), g.f92405d);
        f7209e.put(o.f20399d.b(), g.f92406e);
        f7209e.put(o.f20400e.b(), g.f92407f);
        f7209e.put(o.f20401f.b(), g.f92408g);
        f7209e.put(o.f20402g.b(), g.f92409h);
        f7209e.put(o.f20403h.b(), g.f92410i);
    }

    public f() {
        super("NTRU");
        this.f7211b = new C13757d();
        this.f7212c = r.h();
        this.f7213d = false;
    }

    public static String a(AlgorithmParameterSpec algorithmParameterSpec) {
        return algorithmParameterSpec instanceof o ? ((o) algorithmParameterSpec).b() : w.l(Ml.f.c(algorithmParameterSpec));
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f7213d) {
            C13756c c13756c = new C13756c(this.f7212c, g.f92405d);
            this.f7210a = c13756c;
            this.f7211b.b(c13756c);
            this.f7213d = true;
        }
        C2371c a10 = this.f7211b.a();
        return new KeyPair(new b((i) a10.b()), new a((h) a10.a()));
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
        C13756c c13756c = new C13756c(secureRandom, (g) f7209e.get(a10));
        this.f7210a = c13756c;
        this.f7211b.b(c13756c);
        this.f7213d = true;
    }
}
