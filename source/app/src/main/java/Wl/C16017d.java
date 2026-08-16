package wl;

import Bi.C2371c;
import Bi.r;
import Ml.f;
import bl.C3901b;
import bl.C3902c;
import bl.C3904e;
import bl.C3905f;
import bl.g;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.util.w;

public class C16017d extends KeyPairGenerator {

    public static Map f127600f;

    public final C3904e f127601a;

    public C3901b f127602b;

    public C3902c f127603c;

    public SecureRandom f127604d;

    public boolean f127605e;

    public static class a extends C16017d {
        public a() throws NoSuchAlgorithmException {
            super(C3904e.f33472d);
        }
    }

    public static class b extends C16017d {
        public b() throws NoSuchAlgorithmException {
            super(C3904e.f33473e);
        }
    }

    public static class c extends C16017d {
        public c() throws NoSuchAlgorithmException {
            super(C3904e.f33474f);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f127600f = hashMap;
        hashMap.put(Ol.c.f20337c.b(), C3904e.f33472d);
        f127600f.put(Ol.c.f20338d.b(), C3904e.f33473e);
        f127600f.put(Ol.c.f20339e.b(), C3904e.f33474f);
    }

    public C16017d() {
        super("DILITHIUM");
        this.f127603c = new C3902c();
        this.f127604d = r.h();
        this.f127605e = false;
        this.f127601a = null;
    }

    public static String a(AlgorithmParameterSpec algorithmParameterSpec) {
        return algorithmParameterSpec instanceof Ol.c ? ((Ol.c) algorithmParameterSpec).b() : w.l(f.c(algorithmParameterSpec));
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f127605e) {
            C3904e c3904e = this.f127601a;
            if (c3904e != null) {
                this.f127602b = new C3901b(this.f127604d, c3904e);
            } else {
                this.f127602b = new C3901b(this.f127604d, C3904e.f33473e);
            }
            this.f127603c.b(this.f127602b);
            this.f127605e = true;
        }
        C2371c a10 = this.f127603c.a();
        return new KeyPair(new C16015b((g) a10.b()), new C16014a((C3905f) a10.a()));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        throw new IllegalArgumentException("use AlgorithmParameterSpec");
    }

    public C16017d(C3904e c3904e) {
        super(w.p(c3904e.b()));
        this.f127603c = new C3902c();
        this.f127604d = r.h();
        this.f127605e = false;
        this.f127601a = c3904e;
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        String a10 = a(algorithmParameterSpec);
        if (a10 == null || !f127600f.containsKey(a10)) {
            throw new InvalidAlgorithmParameterException("invalid ParameterSpec: " + ((Object) algorithmParameterSpec));
        }
        C3904e c3904e = (C3904e) f127600f.get(a10);
        this.f127602b = new C3901b(secureRandom, c3904e);
        if (this.f127601a == null || c3904e.b().equals(this.f127601a.b())) {
            this.f127603c.b(this.f127602b);
            this.f127605e = true;
        } else {
            throw new InvalidAlgorithmParameterException("key pair generator locked to " + w.p(this.f127601a.b()));
        }
    }
}
