package aj;

import Bi.InterfaceC2392y;
import java.util.Hashtable;
import nl.C14464h;
import org.bouncycastle.util.k;

public class e implements f {

    public static final byte[] f32294h = {1};

    public static final long f32295i = 140737488355328L;

    public static final int f32296j = 262144;

    public static final Hashtable f32297k;

    public InterfaceC2392y f32298a;

    public byte[] f32299b;

    public byte[] f32300c;

    public long f32301d;

    public Zi.d f32302e;

    public int f32303f;

    public int f32304g;

    static {
        Hashtable hashtable = new Hashtable();
        f32297k = hashtable;
        hashtable.put("SHA-1", k.j(440));
        hashtable.put("SHA-224", k.j(440));
        hashtable.put("SHA-256", k.j(440));
        hashtable.put(C14464h.f98323d, k.j(440));
        hashtable.put("SHA-512/224", k.j(440));
        hashtable.put("SHA-384", k.j(888));
        hashtable.put("SHA-512", k.j(888));
    }

    public e(InterfaceC2392y interfaceC2392y, int i10, Zi.d dVar, byte[] bArr, byte[] bArr2) {
        if (i10 > g.a(interfaceC2392y)) {
            throw new IllegalArgumentException("Requested security strength is not supported by the derivation function");
        }
        if (dVar.d() < i10) {
            throw new IllegalArgumentException("Not enough entropy for security strength required");
        }
        this.f32298a = interfaceC2392y;
        this.f32302e = dVar;
        this.f32303f = i10;
        this.f32304g = ((Integer) f32297k.get(interfaceC2392y.b())).intValue();
        byte[] c10 = g.c(this.f32298a, org.bouncycastle.util.a.C(f(), bArr2, bArr), this.f32304g);
        this.f32299b = c10;
        byte[] bArr3 = new byte[c10.length + 1];
        System.arraycopy(c10, 0, bArr3, 1, c10.length);
        this.f32300c = g.c(this.f32298a, bArr3, this.f32304g);
        this.f32301d = 1L;
    }

    private byte[] f() {
        byte[] b10 = this.f32302e.b();
        if (b10.length >= (this.f32303f + 7) / 8) {
            return b10;
        }
        throw new IllegalStateException("Insufficient entropy provided by entropy source");
    }

    @Override
    public int a(byte[] bArr, byte[] bArr2, boolean z10) {
        int length = bArr.length * 8;
        if (length > 262144) {
            throw new IllegalArgumentException("Number of bits per request limited to 262144");
        }
        if (this.f32301d > 140737488355328L) {
            return -1;
        }
        if (z10) {
            b(bArr2);
            bArr2 = null;
        }
        if (bArr2 != null) {
            byte[] bArr3 = this.f32299b;
            byte[] bArr4 = new byte[bArr3.length + 1 + bArr2.length];
            bArr4[0] = 2;
            System.arraycopy(bArr3, 0, bArr4, 1, bArr3.length);
            System.arraycopy(bArr2, 0, bArr4, this.f32299b.length + 1, bArr2.length);
            d(this.f32299b, g(bArr4));
        }
        byte[] h10 = h(this.f32299b, length);
        byte[] bArr5 = this.f32299b;
        byte[] bArr6 = new byte[bArr5.length + 1];
        System.arraycopy(bArr5, 0, bArr6, 1, bArr5.length);
        bArr6[0] = 3;
        d(this.f32299b, g(bArr6));
        d(this.f32299b, this.f32300c);
        d(this.f32299b, new byte[]{(byte) (r6 >> 24), (byte) (r6 >> 16), (byte) (r6 >> 8), (byte) this.f32301d});
        this.f32301d++;
        System.arraycopy(h10, 0, bArr, 0, bArr.length);
        return length;
    }

    @Override
    public void b(byte[] bArr) {
        byte[] c10 = g.c(this.f32298a, org.bouncycastle.util.a.D(f32294h, this.f32299b, f(), bArr), this.f32304g);
        this.f32299b = c10;
        byte[] bArr2 = new byte[c10.length + 1];
        bArr2[0] = 0;
        System.arraycopy(c10, 0, bArr2, 1, c10.length);
        this.f32300c = g.c(this.f32298a, bArr2, this.f32304g);
        this.f32301d = 1L;
    }

    @Override
    public int c() {
        return this.f32298a.f() * 8;
    }

    public final void d(byte[] bArr, byte[] bArr2) {
        int i10 = 0;
        for (int i11 = 1; i11 <= bArr2.length; i11++) {
            int i12 = (bArr[bArr.length - i11] & 255) + (bArr2[bArr2.length - i11] & 255) + i10;
            i10 = i12 > 255 ? 1 : 0;
            bArr[bArr.length - i11] = (byte) i12;
        }
        for (int length = bArr2.length + 1; length <= bArr.length; length++) {
            int i13 = (bArr[bArr.length - length] & 255) + i10;
            i10 = i13 > 255 ? 1 : 0;
            bArr[bArr.length - length] = (byte) i13;
        }
    }

    public final void e(byte[] bArr, byte[] bArr2) {
        this.f32298a.update(bArr, 0, bArr.length);
        this.f32298a.c(bArr2, 0);
    }

    public final byte[] g(byte[] bArr) {
        byte[] bArr2 = new byte[this.f32298a.f()];
        e(bArr, bArr2);
        return bArr2;
    }

    public final byte[] h(byte[] bArr, int i10) {
        int i11 = i10 / 8;
        int f10 = i11 / this.f32298a.f();
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        byte[] bArr3 = new byte[i11];
        int f11 = this.f32298a.f();
        byte[] bArr4 = new byte[f11];
        for (int i12 = 0; i12 <= f10; i12++) {
            e(bArr2, bArr4);
            int i13 = i12 * f11;
            int i14 = i11 - i13;
            if (i14 > f11) {
                i14 = f11;
            }
            System.arraycopy(bArr4, 0, bArr3, i13, i14);
            d(bArr2, f32294h);
        }
        return bArr3;
    }
}
