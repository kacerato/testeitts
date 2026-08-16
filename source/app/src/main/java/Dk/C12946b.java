package dk;

import java.security.PrivateKey;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class C12946b implements PrivateKey {

    public static final String f84740d = "label";

    public final PrivateKey f84741b;

    public final Map<String, Object> f84742c;

    public C12946b(PrivateKey privateKey, String str) {
        this.f84741b = privateKey;
        this.f84742c = Collections.singletonMap("label", str);
    }

    public C12946b a(String str, Object obj) {
        HashMap hashMap = new HashMap(this.f84742c);
        hashMap.put(str, obj);
        return new C12946b(this.f84741b, (Map<String, Object>) Collections.unmodifiableMap(hashMap));
    }

    public Object b(String str) {
        return this.f84742c.get(str);
    }

    public Map<String, Object> c() {
        return this.f84742c;
    }

    public PrivateKey d() {
        return this.f84741b;
    }

    public boolean equals(Object obj) {
        PrivateKey privateKey;
        if (obj instanceof C12946b) {
            privateKey = this.f84741b;
            obj = ((C12946b) obj).f84741b;
        } else {
            privateKey = this.f84741b;
        }
        return privateKey.equals(obj);
    }

    public C12946b g(String str) {
        HashMap hashMap = new HashMap(this.f84742c);
        hashMap.remove(str);
        return new C12946b(this.f84741b, (Map<String, Object>) Collections.unmodifiableMap(hashMap));
    }

    @Override
    public String getAlgorithm() {
        return this.f84741b.getAlgorithm();
    }

    @Override
    public byte[] getEncoded() {
        return this.f84741b.getEncoded();
    }

    @Override
    public String getFormat() {
        return this.f84741b.getFormat();
    }

    public int hashCode() {
        return this.f84741b.hashCode();
    }

    public String toString() {
        return (this.f84742c.containsKey("label") ? this.f84742c.get("label") : this.f84741b).toString();
    }

    public C12946b(PrivateKey privateKey, Map<String, Object> map) {
        this.f84741b = privateKey;
        this.f84742c = map;
    }
}
