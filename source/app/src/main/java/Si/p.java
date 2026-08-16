package Si;

import Bi.I;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Xi.C3360o0;

public class p implements I {

    public static final int f23462e = 64;

    public static final byte f23463f = 54;

    public static final byte f23464g = 92;

    public InterfaceC2392y f23465a;

    public int f23466b;

    public byte[] f23467c = new byte[64];

    public byte[] f23468d = new byte[64];

    public p(InterfaceC2392y interfaceC2392y) {
        this.f23465a = interfaceC2392y;
        this.f23466b = interfaceC2392y.f();
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        this.f23465a.reset();
        byte[] b10 = ((C3360o0) interfaceC2379k).b();
        if (b10.length <= 64) {
            System.arraycopy(b10, 0, this.f23467c, 0, b10.length);
            int length = b10.length;
            while (true) {
                byte[] bArr = this.f23467c;
                if (length >= bArr.length) {
                    break;
                }
                bArr[length] = 0;
                length++;
            }
        } else {
            this.f23465a.update(b10, 0, b10.length);
            this.f23465a.c(this.f23467c, 0);
            int i10 = this.f23466b;
            while (true) {
                byte[] bArr2 = this.f23467c;
                if (i10 >= bArr2.length) {
                    break;
                }
                bArr2[i10] = 0;
                i10++;
            }
        }
        byte[] bArr3 = this.f23467c;
        byte[] bArr4 = new byte[bArr3.length];
        this.f23468d = bArr4;
        System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
        int i11 = 0;
        while (true) {
            byte[] bArr5 = this.f23467c;
            if (i11 >= bArr5.length) {
                break;
            }
            bArr5[i11] = (byte) (bArr5[i11] ^ 54);
            i11++;
        }
        int i12 = 0;
        while (true) {
            byte[] bArr6 = this.f23468d;
            if (i12 >= bArr6.length) {
                InterfaceC2392y interfaceC2392y = this.f23465a;
                byte[] bArr7 = this.f23467c;
                interfaceC2392y.update(bArr7, 0, bArr7.length);
                return;
            }
            bArr6[i12] = (byte) (bArr6[i12] ^ 92);
            i12++;
        }
    }

    @Override
    public String b() {
        return this.f23465a.b() + "/HMAC";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        int i11 = this.f23466b;
        byte[] bArr2 = new byte[i11];
        this.f23465a.c(bArr2, 0);
        InterfaceC2392y interfaceC2392y = this.f23465a;
        byte[] bArr3 = this.f23468d;
        interfaceC2392y.update(bArr3, 0, bArr3.length);
        this.f23465a.update(bArr2, 0, i11);
        int c10 = this.f23465a.c(bArr, i10);
        reset();
        return c10;
    }

    @Override
    public int d() {
        return this.f23466b;
    }

    public InterfaceC2392y e() {
        return this.f23465a;
    }

    @Override
    public void reset() {
        this.f23465a.reset();
        InterfaceC2392y interfaceC2392y = this.f23465a;
        byte[] bArr = this.f23467c;
        interfaceC2392y.update(bArr, 0, bArr.length);
    }

    @Override
    public void update(byte b10) {
        this.f23465a.update(b10);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f23465a.update(bArr, i10, i11);
    }
}
