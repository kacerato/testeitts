package Si;

import Bi.D;
import Bi.I;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Xi.C3360o0;
import android.security.keystore.KeyProperties;
import java.util.Hashtable;

public class k implements I {

    public static final byte f23430h = 54;

    public static final byte f23431i = 92;

    public static Hashtable f23432j;

    public InterfaceC2392y f23433a;

    public int f23434b;

    public int f23435c;

    public org.bouncycastle.util.n f23436d;

    public org.bouncycastle.util.n f23437e;

    public byte[] f23438f;

    public byte[] f23439g;

    static {
        Hashtable hashtable = new Hashtable();
        f23432j = hashtable;
        hashtable.put("GOST3411", org.bouncycastle.util.k.j(32));
        f23432j.put("MD2", org.bouncycastle.util.k.j(16));
        f23432j.put("MD4", org.bouncycastle.util.k.j(64));
        f23432j.put(KeyProperties.DIGEST_MD5, org.bouncycastle.util.k.j(64));
        f23432j.put("RIPEMD128", org.bouncycastle.util.k.j(64));
        f23432j.put("RIPEMD160", org.bouncycastle.util.k.j(64));
        f23432j.put("SHA-1", org.bouncycastle.util.k.j(64));
        f23432j.put("SHA-224", org.bouncycastle.util.k.j(64));
        f23432j.put("SHA-256", org.bouncycastle.util.k.j(64));
        f23432j.put("SHA-384", org.bouncycastle.util.k.j(128));
        f23432j.put("SHA-512", org.bouncycastle.util.k.j(128));
        f23432j.put("Tiger", org.bouncycastle.util.k.j(64));
        f23432j.put("Whirlpool", org.bouncycastle.util.k.j(64));
    }

    public k(InterfaceC2392y interfaceC2392y) {
        this(interfaceC2392y, e(interfaceC2392y));
    }

    public static int e(InterfaceC2392y interfaceC2392y) {
        if (interfaceC2392y instanceof D) {
            return ((D) interfaceC2392y).i();
        }
        Integer num = (Integer) f23432j.get(interfaceC2392y.b());
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalArgumentException("unknown digest passed: " + interfaceC2392y.b());
    }

    public static void g(byte[] bArr, int i10, byte b10) {
        for (int i11 = 0; i11 < i10; i11++) {
            bArr[i11] = (byte) (bArr[i11] ^ b10);
        }
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        byte[] bArr;
        this.f23433a.reset();
        byte[] b10 = ((C3360o0) interfaceC2379k).b();
        int length = b10.length;
        if (length > this.f23435c) {
            this.f23433a.update(b10, 0, length);
            this.f23433a.c(this.f23438f, 0);
            length = this.f23434b;
        } else {
            System.arraycopy(b10, 0, this.f23438f, 0, length);
        }
        while (true) {
            bArr = this.f23438f;
            if (length >= bArr.length) {
                break;
            }
            bArr[length] = 0;
            length++;
        }
        System.arraycopy(bArr, 0, this.f23439g, 0, this.f23435c);
        g(this.f23438f, this.f23435c, (byte) 54);
        g(this.f23439g, this.f23435c, (byte) 92);
        InterfaceC2392y interfaceC2392y = this.f23433a;
        if (interfaceC2392y instanceof org.bouncycastle.util.n) {
            org.bouncycastle.util.n copy = ((org.bouncycastle.util.n) interfaceC2392y).copy();
            this.f23437e = copy;
            ((InterfaceC2392y) copy).update(this.f23439g, 0, this.f23435c);
        }
        InterfaceC2392y interfaceC2392y2 = this.f23433a;
        byte[] bArr2 = this.f23438f;
        interfaceC2392y2.update(bArr2, 0, bArr2.length);
        InterfaceC2392y interfaceC2392y3 = this.f23433a;
        if (interfaceC2392y3 instanceof org.bouncycastle.util.n) {
            this.f23436d = ((org.bouncycastle.util.n) interfaceC2392y3).copy();
        }
    }

    @Override
    public String b() {
        return this.f23433a.b() + "/HMAC";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        this.f23433a.c(this.f23439g, this.f23435c);
        org.bouncycastle.util.n nVar = this.f23437e;
        if (nVar != null) {
            ((org.bouncycastle.util.n) this.f23433a).j(nVar);
            InterfaceC2392y interfaceC2392y = this.f23433a;
            interfaceC2392y.update(this.f23439g, this.f23435c, interfaceC2392y.f());
        } else {
            InterfaceC2392y interfaceC2392y2 = this.f23433a;
            byte[] bArr2 = this.f23439g;
            interfaceC2392y2.update(bArr2, 0, bArr2.length);
        }
        int c10 = this.f23433a.c(bArr, i10);
        int i11 = this.f23435c;
        while (true) {
            byte[] bArr3 = this.f23439g;
            if (i11 >= bArr3.length) {
                break;
            }
            bArr3[i11] = 0;
            i11++;
        }
        org.bouncycastle.util.n nVar2 = this.f23436d;
        if (nVar2 != null) {
            ((org.bouncycastle.util.n) this.f23433a).j(nVar2);
        } else {
            InterfaceC2392y interfaceC2392y3 = this.f23433a;
            byte[] bArr4 = this.f23438f;
            interfaceC2392y3.update(bArr4, 0, bArr4.length);
        }
        return c10;
    }

    @Override
    public int d() {
        return this.f23434b;
    }

    public InterfaceC2392y f() {
        return this.f23433a;
    }

    @Override
    public void reset() {
        org.bouncycastle.util.n nVar = this.f23436d;
        if (nVar != null) {
            ((org.bouncycastle.util.n) this.f23433a).j(nVar);
            return;
        }
        this.f23433a.reset();
        InterfaceC2392y interfaceC2392y = this.f23433a;
        byte[] bArr = this.f23438f;
        interfaceC2392y.update(bArr, 0, bArr.length);
    }

    @Override
    public void update(byte b10) {
        this.f23433a.update(b10);
    }

    public k(InterfaceC2392y interfaceC2392y, int i10) {
        this.f23433a = interfaceC2392y;
        int f10 = interfaceC2392y.f();
        this.f23434b = f10;
        this.f23435c = i10;
        this.f23438f = new byte[i10];
        this.f23439g = new byte[i10 + f10];
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f23433a.update(bArr, i10, i11);
    }
}
