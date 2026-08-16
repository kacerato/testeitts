package ck;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import oh.C14549x;
import yh.InterfaceC16192a;

public class C4217j implements AlgorithmParameterSpec {

    public static Map f34915d;

    public byte[] f34916b;

    public byte[] f34917c;

    static {
        HashMap hashMap = new HashMap();
        f34915d = hashMap;
        hashMap.put(InterfaceC16192a.f130276h, "E-A");
        f34915d.put(InterfaceC16192a.f130277i, "E-B");
        f34915d.put(InterfaceC16192a.f130278j, "E-C");
        f34915d.put(InterfaceC16192a.f130279k, "E-D");
        f34915d.put(Cj.a.f4478w, "Param-Z");
    }

    public C4217j(String str) {
        this.f34916b = null;
        this.f34917c = null;
        this.f34917c = Li.C.m(str);
    }

    public static String b(C14549x c14549x) {
        String str = (String) f34915d.get(c14549x);
        if (str != null) {
            return str;
        }
        throw new IllegalArgumentException("unknown OID: " + ((Object) c14549x));
    }

    public byte[] a() {
        return org.bouncycastle.util.a.p(this.f34916b);
    }

    public byte[] c() {
        return org.bouncycastle.util.a.p(this.f34917c);
    }

    public byte[] d() {
        return org.bouncycastle.util.a.p(this.f34917c);
    }

    public C4217j(String str, byte[] bArr) {
        this(str);
        byte[] bArr2 = new byte[bArr.length];
        this.f34916b = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
    }

    public C4217j(C14549x c14549x, byte[] bArr) {
        this(b(c14549x));
        this.f34916b = org.bouncycastle.util.a.p(bArr);
    }

    public C4217j(byte[] bArr) {
        this.f34916b = null;
        this.f34917c = null;
        byte[] bArr2 = new byte[bArr.length];
        this.f34917c = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
    }

    public C4217j(byte[] bArr, byte[] bArr2) {
        this(bArr);
        byte[] bArr3 = new byte[bArr2.length];
        this.f34916b = bArr3;
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
    }
}
