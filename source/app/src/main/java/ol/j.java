package Ol;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.pqc.crypto.lms.A;

public class j implements AlgorithmParameterSpec {

    public static final Map<String, A> f20366d;

    public static final Map<String, org.bouncycastle.pqc.crypto.lms.j> f20367e;

    public final A f20368b;

    public final org.bouncycastle.pqc.crypto.lms.j f20369c;

    static {
        HashMap hashMap = new HashMap();
        f20366d = hashMap;
        HashMap hashMap2 = new HashMap();
        f20367e = hashMap2;
        hashMap.put("lms-sha256-n32-h5", A.f102112e);
        hashMap.put("lms-sha256-n32-h10", A.f102113f);
        hashMap.put("lms-sha256-n32-h15", A.f102114g);
        hashMap.put("lms-sha256-n32-h20", A.f102115h);
        hashMap.put("lms-sha256-n32-h25", A.f102116i);
        hashMap.put("lms-sha256-n24-h5", A.f102117j);
        hashMap.put("lms-sha256-n24-h10", A.f102118k);
        hashMap.put("lms-sha256-n24-h15", A.f102119l);
        hashMap.put("lms-sha256-n24-h20", A.f102120m);
        hashMap.put("lms-sha256-n24-h25", A.f102121n);
        hashMap.put("lms-shake256-n32-h5", A.f102122o);
        hashMap.put("lms-shake256-n32-h10", A.f102123p);
        hashMap.put("lms-shake256-n32-h15", A.f102124q);
        hashMap.put("lms-shake256-n32-h20", A.f102125r);
        hashMap.put("lms-shake256-n32-h25", A.f102126s);
        hashMap.put("lms-shake256-n24-h5", A.f102127t);
        hashMap.put("lms-shake256-n24-h10", A.f102128u);
        hashMap.put("lms-shake256-n24-h15", A.f102129v);
        hashMap.put("lms-shake256-n24-h20", A.f102130w);
        hashMap.put("lms-shake256-n24-h25", A.f102131x);
        hashMap2.put("sha256-n32-w1", org.bouncycastle.pqc.crypto.lms.j.f102169i);
        hashMap2.put("sha256-n32-w2", org.bouncycastle.pqc.crypto.lms.j.f102170j);
        hashMap2.put("sha256-n32-w4", org.bouncycastle.pqc.crypto.lms.j.f102171k);
        hashMap2.put("sha256-n32-w8", org.bouncycastle.pqc.crypto.lms.j.f102172l);
    }

    public j(A a10, org.bouncycastle.pqc.crypto.lms.j jVar) {
        this.f20368b = a10;
        this.f20369c = jVar;
    }

    public static j a(String str, String str2) {
        Map<String, A> map = f20366d;
        if (!map.containsKey(str)) {
            throw new IllegalArgumentException("LM signature parameter name " + str + " not recognized");
        }
        Map<String, org.bouncycastle.pqc.crypto.lms.j> map2 = f20367e;
        if (map2.containsKey(str2)) {
            return new j(map.get(str), map2.get(str2));
        }
        throw new IllegalArgumentException("LM OTS parameter name " + str2 + " not recognized");
    }

    public org.bouncycastle.pqc.crypto.lms.j b() {
        return this.f20369c;
    }

    public A c() {
        return this.f20368b;
    }
}
