package Jl;

import Bi.C2371c;
import Bi.r;
import Ol.s;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import ml.C14327e;
import ml.C14328f;
import ml.h;
import ml.i;
import ml.j;
import org.bouncycastle.util.w;

public class f extends KeyPairGenerator {

    public static Map f10660e;

    public C14327e f10661a;

    public C14328f f10662b;

    public SecureRandom f10663c;

    public boolean f10664d;

    static {
        HashMap hashMap = new HashMap();
        f10660e = hashMap;
        hashMap.put(s.f20431c.b(), h.f97505f);
        f10660e.put(s.f20432d.b(), h.f97506g);
        f10660e.put(s.f20433e.b(), h.f97507h);
        f10660e.put(s.f20434f.b(), h.f97508i);
        f10660e.put(s.f20435g.b(), h.f97509j);
        f10660e.put(s.f20436h.b(), h.f97510k);
        f10660e.put(s.f20437i.b(), h.f97511l);
        f10660e.put(s.f20438j.b(), h.f97512m);
        f10660e.put(s.f20439k.b(), h.f97513n);
    }

    public f() {
        super("SABER");
        this.f10662b = new C14328f();
        this.f10663c = r.h();
        this.f10664d = false;
    }

    public static String a(AlgorithmParameterSpec algorithmParameterSpec) {
        return algorithmParameterSpec instanceof s ? ((s) algorithmParameterSpec).b() : w.l(Ml.f.c(algorithmParameterSpec));
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f10664d) {
            C14327e c14327e = new C14327e(this.f10663c, h.f97513n);
            this.f10661a = c14327e;
            this.f10662b.b(c14327e);
            this.f10664d = true;
        }
        C2371c a10 = this.f10662b.a();
        return new KeyPair(new b((j) a10.b()), new a((i) a10.a()));
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
        C14327e c14327e = new C14327e(secureRandom, (h) f10660e.get(a10));
        this.f10661a = c14327e;
        this.f10662b.b(c14327e);
        this.f10664d = true;
    }
}
