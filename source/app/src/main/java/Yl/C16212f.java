package yl;

import Bi.C2371c;
import Bi.r;
import el.C13164d;
import el.C13165e;
import el.h;
import el.i;
import el.j;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.util.w;

public class C16212f extends KeyPairGenerator {

    public static Map f130504e;

    public C13164d f130505a;

    public C13165e f130506b;

    public SecureRandom f130507c;

    public boolean f130508d;

    static {
        HashMap hashMap = new HashMap();
        f130504e = hashMap;
        h hVar = h.f85868k;
        hashMap.put("frodokem19888r3", hVar);
        Map map = f130504e;
        h hVar2 = h.f85869l;
        map.put("frodokem19888shaker3", hVar2);
        Map map2 = f130504e;
        h hVar3 = h.f85870m;
        map2.put("frodokem31296r3", hVar3);
        Map map3 = f130504e;
        h hVar4 = h.f85871n;
        map3.put("frodokem31296shaker3", hVar4);
        Map map4 = f130504e;
        h hVar5 = h.f85872o;
        map4.put("frodokem43088r3", hVar5);
        Map map5 = f130504e;
        h hVar6 = h.f85873p;
        map5.put("frodokem43088shaker3", hVar6);
        f130504e.put(Ol.e.f20346c.b(), hVar);
        f130504e.put(Ol.e.f20347d.b(), hVar2);
        f130504e.put(Ol.e.f20348e.b(), hVar3);
        f130504e.put(Ol.e.f20349f.b(), hVar4);
        f130504e.put(Ol.e.f20350g.b(), hVar5);
        f130504e.put(Ol.e.f20351h.b(), hVar6);
    }

    public C16212f() {
        super("Frodo");
        this.f130506b = new C13165e();
        this.f130507c = r.h();
        this.f130508d = false;
    }

    public static String a(AlgorithmParameterSpec algorithmParameterSpec) {
        return algorithmParameterSpec instanceof Ol.e ? ((Ol.e) algorithmParameterSpec).b() : w.l(Ml.f.c(algorithmParameterSpec));
    }

    @Override
    public KeyPair generateKeyPair() {
        if (!this.f130508d) {
            C13164d c13164d = new C13164d(this.f130507c, h.f85873p);
            this.f130505a = c13164d;
            this.f130506b.b(c13164d);
            this.f130508d = true;
        }
        C2371c a10 = this.f130506b.a();
        return new KeyPair(new C16208b((j) a10.b()), new C16207a((i) a10.a()));
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
        C13164d c13164d = new C13164d(secureRandom, (h) f130504e.get(a10));
        this.f130505a = c13164d;
        this.f130506b.b(c13164d);
        this.f130508d = true;
    }
}
