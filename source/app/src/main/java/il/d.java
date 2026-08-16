package Il;

import Bi.C2371c;
import Ol.r;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import ll.C14159e;
import ll.h;
import ll.i;
import ll.j;
import org.bouncycastle.util.w;

public class d extends KeyPairGenerator {

    public static Map f10057f;

    public final h f10058a;

    public C14159e f10059b;

    public ll.f f10060c;

    public SecureRandom f10061d;

    public boolean f10062e;

    public static class a extends d {
        public a() {
            super(h.f96579l);
        }
    }

    public static class b extends d {
        public b() {
            super(h.f96578k);
        }
    }

    public static class c extends d {
        public c() {
            super(h.f96580m);
        }
    }

    public static class C0240d extends d {
        public C0240d() {
            super(h.f96582o);
        }
    }

    public static class e extends d {
        public e() {
            super(h.f96581n);
        }
    }

    public static class f extends d {
        public f() {
            super(h.f96583p);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f10057f = hashMap;
        hashMap.put(r.f20423c.b(), h.f96578k);
        f10057f.put(r.f20424d.b(), h.f96579l);
        f10057f.put(r.f20425e.b(), h.f96580m);
        f10057f.put(r.f20426f.b(), h.f96581n);
        f10057f.put(r.f20427g.b(), h.f96582o);
        f10057f.put(r.f20428h.b(), h.f96583p);
    }

    public d() {
        super("RAINBOW");
        this.f10060c = new ll.f();
        this.f10061d = Bi.r.h();
        this.f10062e = false;
        this.f10058a = null;
    }

    public static String a(AlgorithmParameterSpec algorithmParameterSpec) {
        return algorithmParameterSpec instanceof r ? ((r) algorithmParameterSpec).b() : w.l(Ml.f.c(algorithmParameterSpec));
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f10062e) {
            h hVar = this.f10058a;
            if (hVar != null) {
                this.f10059b = new C14159e(this.f10061d, hVar);
            } else {
                this.f10059b = new C14159e(this.f10061d, h.f96578k);
            }
            this.f10060c.b(this.f10059b);
            this.f10062e = true;
        }
        C2371c a10 = this.f10060c.a();
        return new KeyPair(new Il.b((j) a10.b()), new Il.a((i) a10.a()));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        throw new IllegalArgumentException("use AlgorithmParameterSpec");
    }

    public d(h hVar) {
        super(hVar.g());
        this.f10060c = new ll.f();
        this.f10061d = Bi.r.h();
        this.f10062e = false;
        this.f10058a = hVar;
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        String a10 = a(algorithmParameterSpec);
        if (a10 == null || !f10057f.containsKey(a10)) {
            throw new InvalidAlgorithmParameterException("invalid ParameterSpec: " + ((Object) algorithmParameterSpec));
        }
        h hVar = (h) f10057f.get(a10);
        this.f10059b = new C14159e(secureRandom, hVar);
        if (this.f10058a == null || hVar.g().equals(this.f10058a.g())) {
            this.f10060c.b(this.f10059b);
            this.f10062e = true;
        } else {
            throw new InvalidAlgorithmParameterException("key pair generator locked to " + w.p(this.f10058a.g()));
        }
    }
}
