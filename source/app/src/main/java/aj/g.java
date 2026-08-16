package aj;

import Bi.I;
import Bi.InterfaceC2392y;
import java.util.Hashtable;
import nl.C14464h;
import org.bouncycastle.util.k;

public class g {

    public static final Hashtable f32305a;

    static {
        Hashtable hashtable = new Hashtable();
        f32305a = hashtable;
        hashtable.put("SHA-1", k.j(128));
        hashtable.put("SHA-224", k.j(192));
        hashtable.put("SHA-256", k.j(256));
        hashtable.put("SHA-384", k.j(256));
        hashtable.put("SHA-512", k.j(256));
        hashtable.put("SHA-512/224", k.j(192));
        hashtable.put(C14464h.f98323d, k.j(256));
    }

    public static int a(InterfaceC2392y interfaceC2392y) {
        return ((Integer) f32305a.get(interfaceC2392y.b())).intValue();
    }

    public static int b(I i10) {
        String b10 = i10.b();
        return ((Integer) f32305a.get(b10.substring(0, b10.indexOf("/")))).intValue();
    }

    public static byte[] c(InterfaceC2392y interfaceC2392y, byte[] bArr, int i10) {
        int i11 = (i10 + 7) / 8;
        byte[] bArr2 = new byte[i11];
        int f10 = i11 / interfaceC2392y.f();
        int f11 = interfaceC2392y.f();
        byte[] bArr3 = new byte[f11];
        int i12 = 1;
        int i13 = 0;
        for (int i14 = 0; i14 <= f10; i14++) {
            interfaceC2392y.update((byte) i12);
            interfaceC2392y.update((byte) (i10 >> 24));
            interfaceC2392y.update((byte) (i10 >> 16));
            interfaceC2392y.update((byte) (i10 >> 8));
            interfaceC2392y.update((byte) i10);
            interfaceC2392y.update(bArr, 0, bArr.length);
            interfaceC2392y.c(bArr3, 0);
            int i15 = i14 * f11;
            int i16 = i11 - i15;
            if (i16 > f11) {
                i16 = f11;
            }
            System.arraycopy(bArr3, 0, bArr2, i15, i16);
            i12++;
        }
        int i17 = i10 % 8;
        if (i17 != 0) {
            int i18 = 8 - i17;
            int i19 = 0;
            while (i13 != i11) {
                int i20 = bArr2[i13] & 255;
                bArr2[i13] = (byte) ((i19 << (8 - i18)) | (i20 >>> i18));
                i13++;
                i19 = i20;
            }
        }
        return bArr2;
    }

    public static boolean d(byte[] bArr, int i10) {
        return bArr != null && bArr.length > i10;
    }
}
