package ck;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import oh.C14549x;
import yh.InterfaceC16192a;

public class k implements AlgorithmParameterSpec {

    public static Map f34918d;

    public byte[] f34919b;

    public byte[] f34920c;

    static {
        HashMap hashMap = new HashMap();
        f34918d = hashMap;
        hashMap.put(InterfaceC16192a.f130276h, "E-A");
        f34918d.put(InterfaceC16192a.f130277i, "E-B");
        f34918d.put(InterfaceC16192a.f130278j, "E-C");
        f34918d.put(InterfaceC16192a.f130279k, "E-D");
        f34918d.put(Cj.a.f4478w, "Param-Z");
    }

    public k(String str) {
        this.f34919b = null;
        this.f34920c = null;
        this.f34920c = Li.C.m(str);
    }

    public static String a(C14549x c14549x) {
        String str = (String) f34918d.get(c14549x);
        if (str != null) {
            return str;
        }
        throw new IllegalArgumentException("unknown OID: " + ((Object) c14549x));
    }

    public byte[] b() {
        return org.bouncycastle.util.a.p(this.f34920c);
    }

    public byte[] c() {
        return org.bouncycastle.util.a.p(this.f34919b);
    }

    public k(String str, byte[] bArr) {
        this(str);
        byte[] bArr2 = new byte[bArr.length];
        this.f34919b = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
    }

    public k(C14549x c14549x, byte[] bArr) {
        this(a(c14549x));
        this.f34919b = org.bouncycastle.util.a.p(bArr);
    }

    public k(byte[] bArr) {
        this.f34919b = null;
        this.f34920c = null;
        byte[] bArr2 = new byte[bArr.length];
        this.f34920c = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
    }

    public k(byte[] bArr, byte[] bArr2) {
        this(bArr);
        byte[] bArr3 = new byte[bArr2.length];
        this.f34919b = bArr3;
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
    }
}
