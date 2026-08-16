package Ll;

import Bi.C2371c;
import Bi.r;
import Ol.v;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import ol.C14608q;
import ol.C14609r;
import ol.C14611t;
import ol.C14612u;
import ol.C14613v;
import org.bouncycastle.util.w;

public class d extends KeyPairGenerator {

    public static Map f14442e;

    public C14608q f14443a;

    public C14609r f14444b;

    public SecureRandom f14445c;

    public boolean f14446d;

    public static class a extends d {
        public a() {
            super(v.f20472i);
        }
    }

    public static class b extends d {
        public b() {
            super(v.f20473j);
        }
    }

    public static class c extends d {
        public c() {
            super(v.f20474k);
        }
    }

    public static class C0404d extends d {
        public C0404d() {
            super(v.f20475l);
        }
    }

    public static class e extends d {
        public e() {
            super(v.f20476m);
        }
    }

    public static class f extends d {
        public f() {
            super(v.f20477n);
        }
    }

    public static class g extends d {
        public g() {
            super(v.f20484u);
        }
    }

    public static class h extends d {
        public h() {
            super(v.f20485v);
        }
    }

    public static class i extends d {
        public i() {
            super(v.f20486w);
        }
    }

    public static class j extends d {
        public j() {
            super(v.f20487x);
        }
    }

    public static class k extends d {
        public k() {
            super(v.f20488y);
        }
    }

    public static class l extends d {
        public l() {
            super(v.f20489z);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f14442e = hashMap;
        hashMap.put(v.f20466c.b(), C14611t.f99648d);
        f14442e.put(v.f20467d.b(), C14611t.f99649e);
        f14442e.put(v.f20468e.b(), C14611t.f99650f);
        f14442e.put(v.f20469f.b(), C14611t.f99651g);
        f14442e.put(v.f20470g.b(), C14611t.f99652h);
        f14442e.put(v.f20471h.b(), C14611t.f99653i);
        f14442e.put(v.f20472i.b(), C14611t.f99654j);
        f14442e.put(v.f20473j.b(), C14611t.f99655k);
        f14442e.put(v.f20474k.b(), C14611t.f99656l);
        f14442e.put(v.f20475l.b(), C14611t.f99657m);
        f14442e.put(v.f20476m.b(), C14611t.f99658n);
        f14442e.put(v.f20477n.b(), C14611t.f99659o);
        f14442e.put(v.f20478o.b(), C14611t.f99660p);
        f14442e.put(v.f20479p.b(), C14611t.f99661q);
        f14442e.put(v.f20480q.b(), C14611t.f99662r);
        f14442e.put(v.f20481r.b(), C14611t.f99663s);
        f14442e.put(v.f20482s.b(), C14611t.f99664t);
        f14442e.put(v.f20483t.b(), C14611t.f99665u);
        f14442e.put(v.f20484u.b(), C14611t.f99666v);
        f14442e.put(v.f20485v.b(), C14611t.f99667w);
        f14442e.put(v.f20486w.b(), C14611t.f99668x);
        f14442e.put(v.f20487x.b(), C14611t.f99669y);
        f14442e.put(v.f20488y.b(), C14611t.f99670z);
        f14442e.put(v.f20489z.b(), C14611t.f99634A);
        f14442e.put(v.f20453A.b(), C14611t.f99635B);
        f14442e.put(v.f20454B.b(), C14611t.f99636C);
        f14442e.put(v.f20457E.b(), C14611t.f99637D);
        f14442e.put(v.f20458F.b(), C14611t.f99638E);
        f14442e.put(v.f20455C.b(), C14611t.f99639F);
        f14442e.put(v.f20456D.b(), C14611t.f99640G);
        f14442e.put(v.f20459G.b(), C14611t.f99641H);
        f14442e.put(v.f20460H.b(), C14611t.f99642I);
        f14442e.put(v.f20461I.b(), C14611t.f99643J);
        f14442e.put(v.f20462J.b(), C14611t.f99644K);
        f14442e.put(v.f20463K.b(), C14611t.f99645L);
        f14442e.put(v.f20464L.b(), C14611t.f99646M);
    }

    public d() {
        super("SPHINCS+");
        this.f14444b = new C14609r();
        this.f14445c = r.h();
        this.f14446d = false;
    }

    public static String a(AlgorithmParameterSpec algorithmParameterSpec) {
        return algorithmParameterSpec instanceof v ? ((v) algorithmParameterSpec).b() : w.l(Ml.f.c(algorithmParameterSpec));
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f14446d) {
            C14608q c14608q = new C14608q(this.f14445c, C14611t.f99659o);
            this.f14443a = c14608q;
            this.f14444b.b(c14608q);
            this.f14446d = true;
        }
        C2371c a10 = this.f14444b.a();
        return new KeyPair(new Ll.b((C14613v) a10.b()), new Ll.a((C14612u) a10.a()));
    }

    @Override
    public void initialize(int i10, SecureRandom secureRandom) {
        throw new IllegalArgumentException("use AlgorithmParameterSpec");
    }

    public d(v vVar) {
        super("SPHINCS+-" + w.p(vVar.b()));
        this.f14444b = new C14609r();
        SecureRandom h10 = r.h();
        this.f14445c = h10;
        this.f14446d = false;
        C14608q c14608q = new C14608q(h10, (C14611t) f14442e.get(vVar.b()));
        this.f14443a = c14608q;
        this.f14444b.b(c14608q);
        this.f14446d = true;
    }

    @Override
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        String a10 = a(algorithmParameterSpec);
        if (a10 == null) {
            throw new InvalidAlgorithmParameterException("invalid ParameterSpec: " + ((Object) algorithmParameterSpec));
        }
        C14608q c14608q = new C14608q(secureRandom, (C14611t) f14442e.get(a10));
        this.f14443a = c14608q;
        this.f14444b.b(c14608q);
        this.f14446d = true;
    }
}
