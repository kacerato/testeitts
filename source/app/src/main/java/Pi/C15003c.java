package pi;

import Bi.InterfaceC2392y;
import Ii.J;
import Oi.D;
import Xi.C3362p0;
import java.security.SecureRandom;
import oi.InterfaceC14567m;

public class C15003c implements InterfaceC14567m {

    public int f103981a;

    public SecureRandom f103982b;

    public InterfaceC2392y f103983c;

    public C15003c(int i10) {
        this(i10, null);
    }

    @Override
    public byte[] a(byte[] bArr) {
        int f10 = this.f103983c.f();
        byte[] bArr2 = new byte[f10];
        int f11 = this.f103981a - this.f103983c.f();
        byte[] bArr3 = new byte[f11];
        System.arraycopy(bArr, 0, bArr2, 0, f10);
        D d10 = new D(this.f103983c);
        d10.c(new C3362p0(bArr2));
        d10.a(bArr3, 0, f11);
        for (int i10 = 0; i10 != f11; i10++) {
            int i11 = i10 + f10;
            bArr[i11] = (byte) (bArr[i11] ^ bArr3[i10]);
        }
        int length = bArr.length - 1;
        while (true) {
            if (length == f10) {
                length = 0;
                break;
            }
            if (bArr[length] == 0) {
                break;
            }
            length--;
        }
        if (length == 0) {
            throw new IllegalStateException("bad padding in encoding");
        }
        int i12 = length - f10;
        byte[] bArr4 = new byte[i12];
        System.arraycopy(bArr, f10, bArr4, 0, i12);
        return bArr4;
    }

    @Override
    public byte[] b(byte[] bArr) {
        int i10 = this.f103981a;
        byte[] bArr2 = new byte[i10];
        int f10 = this.f103983c.f();
        byte[] bArr3 = new byte[f10];
        int f11 = this.f103981a - this.f103983c.f();
        byte[] bArr4 = new byte[f11];
        if (this.f103982b == null) {
            this.f103982b = new SecureRandom();
        }
        this.f103982b.nextBytes(bArr3);
        D d10 = new D(this.f103983c);
        d10.c(new C3362p0(bArr3));
        d10.a(bArr4, 0, f11);
        System.arraycopy(bArr3, 0, bArr2, 0, f10);
        System.arraycopy(bArr, 0, bArr2, f10, bArr.length);
        int length = bArr.length + f10;
        while (true) {
            length++;
            if (length == i10) {
                break;
            }
            bArr2[length] = (byte) (this.f103982b.nextInt(255) + 1);
        }
        for (int i11 = 0; i11 != f11; i11++) {
            int i12 = i11 + f10;
            bArr2[i12] = (byte) (bArr2[i12] ^ bArr4[i11]);
        }
        return bArr2;
    }

    public C15003c(int i10, SecureRandom secureRandom) {
        this.f103983c = new J();
        this.f103981a = i10;
        this.f103982b = secureRandom;
    }
}
