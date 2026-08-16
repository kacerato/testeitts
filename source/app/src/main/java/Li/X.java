package Li;

import Bi.InterfaceC2379k;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class X implements Bi.Y {

    public static final int f13794f = 256;

    public byte[] f13795a = null;

    public int f13796b = 0;

    public int f13797c = 0;

    public byte[] f13798d = null;

    public boolean f13799e;

    public X() {
        Bi.r.a(new Hi.c(b(), 20));
    }

    private void c(byte[] bArr) {
        this.f13798d = bArr;
        this.f13796b = 0;
        this.f13797c = 0;
        if (this.f13795a == null) {
            this.f13795a = new byte[256];
        }
        for (int i10 = 0; i10 < 256; i10++) {
            this.f13795a[i10] = (byte) i10;
        }
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < 256; i13++) {
            int i14 = bArr[i11] & 255;
            byte[] bArr2 = this.f13795a;
            byte b10 = bArr2[i13];
            i12 = (i14 + b10 + i12) & 255;
            bArr2[i13] = bArr2[i12];
            bArr2[i12] = b10;
            i11 = (i11 + 1) % bArr.length;
        }
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (!(interfaceC2379k instanceof C3360o0)) {
            throw new IllegalArgumentException("invalid parameter passed to RC4 init - " + interfaceC2379k.getClass().getName());
        }
        byte[] b10 = ((C3360o0) interfaceC2379k).b();
        this.f13798d = b10;
        this.f13799e = z10;
        c(b10);
        Bi.r.a(new Hi.c(b(), 20, interfaceC2379k, x0.a(z10)));
    }

    @Override
    public String b() {
        return "RC4";
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i12 + i11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = (this.f13796b + 1) & 255;
            this.f13796b = i14;
            byte[] bArr3 = this.f13795a;
            byte b10 = bArr3[i14];
            int i15 = (this.f13797c + b10) & 255;
            this.f13797c = i15;
            bArr3[i14] = bArr3[i15];
            bArr3[i15] = b10;
            bArr2[i13 + i12] = (byte) (bArr3[(bArr3[i14] + b10) & 255] ^ bArr[i13 + i10]);
        }
        return i11;
    }

    @Override
    public byte i(byte b10) {
        int i10 = (this.f13796b + 1) & 255;
        this.f13796b = i10;
        byte[] bArr = this.f13795a;
        byte b11 = bArr[i10];
        int i11 = (this.f13797c + b11) & 255;
        this.f13797c = i11;
        bArr[i10] = bArr[i11];
        bArr[i11] = b11;
        return (byte) (b10 ^ bArr[(bArr[i10] + b11) & 255]);
    }

    @Override
    public void reset() {
        c(this.f13798d);
    }
}
