package Li;

import Bi.InterfaceC2379k;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class y0 implements Bi.Y {

    public byte f14350a = 0;

    public byte[] f14351b = null;

    public byte f14352c = 0;

    public byte[] f14353d;

    public byte[] f14354e;

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (!(interfaceC2379k instanceof Xi.w0)) {
            throw new IllegalArgumentException("VMPC init parameters must include an IV");
        }
        Xi.w0 w0Var = (Xi.w0) interfaceC2379k;
        if (!(w0Var.b() instanceof C3360o0)) {
            throw new IllegalArgumentException("VMPC init parameters must include a key");
        }
        C3360o0 c3360o0 = (C3360o0) w0Var.b();
        byte[] a10 = w0Var.a();
        this.f14353d = a10;
        if (a10 == null || a10.length < 1 || a10.length > 768) {
            throw new IllegalArgumentException("VMPC requires 1 to 768 bytes of IV");
        }
        byte[] b10 = c3360o0.b();
        this.f14354e = b10;
        c(b10, this.f14353d);
        String b11 = b();
        byte[] bArr = this.f14354e;
        Bi.r.a(new Hi.c(b11, bArr.length >= 32 ? 256 : bArr.length * 8, interfaceC2379k, x0.a(z10)));
    }

    @Override
    public String b() {
        return "VMPC";
    }

    public void c(byte[] bArr, byte[] bArr2) {
        this.f14352c = (byte) 0;
        this.f14351b = new byte[256];
        for (int i10 = 0; i10 < 256; i10++) {
            this.f14351b[i10] = (byte) i10;
        }
        for (int i11 = 0; i11 < 768; i11++) {
            byte[] bArr3 = this.f14351b;
            byte b10 = this.f14352c;
            int i12 = i11 & 255;
            byte b11 = bArr3[i12];
            byte b12 = bArr3[(b10 + b11 + bArr[i11 % bArr.length]) & 255];
            this.f14352c = b12;
            bArr3[i12] = bArr3[b12 & 255];
            bArr3[b12 & 255] = b11;
        }
        for (int i13 = 0; i13 < 768; i13++) {
            byte[] bArr4 = this.f14351b;
            byte b13 = this.f14352c;
            int i14 = i13 & 255;
            byte b14 = bArr4[i14];
            byte b15 = bArr4[(b13 + b14 + bArr2[i13 % bArr2.length]) & 255];
            this.f14352c = b15;
            bArr4[i14] = bArr4[b15 & 255];
            bArr4[b15 & 255] = b14;
        }
        this.f14350a = (byte) 0;
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
            byte[] bArr3 = this.f14351b;
            byte b10 = this.f14352c;
            byte b11 = this.f14350a;
            byte b12 = bArr3[(b10 + bArr3[b11 & 255]) & 255];
            this.f14352c = b12;
            byte b13 = bArr3[(bArr3[bArr3[b12 & 255] & 255] + 1) & 255];
            byte b14 = bArr3[b11 & 255];
            bArr3[b11 & 255] = bArr3[b12 & 255];
            bArr3[b12 & 255] = b14;
            this.f14350a = (byte) ((b11 + 1) & 255);
            bArr2[i13 + i12] = (byte) (bArr[i13 + i10] ^ b13);
        }
        return i11;
    }

    @Override
    public byte i(byte b10) {
        byte[] bArr = this.f14351b;
        byte b11 = this.f14352c;
        byte b12 = this.f14350a;
        byte b13 = bArr[(b11 + bArr[b12 & 255]) & 255];
        this.f14352c = b13;
        byte b14 = bArr[(bArr[bArr[b13 & 255] & 255] + 1) & 255];
        byte b15 = bArr[b12 & 255];
        bArr[b12 & 255] = bArr[b13 & 255];
        bArr[b13 & 255] = b15;
        this.f14350a = (byte) ((b12 + 1) & 255);
        return (byte) (b10 ^ b14);
    }

    @Override
    public void reset() {
        c(this.f14354e, this.f14353d);
    }
}
