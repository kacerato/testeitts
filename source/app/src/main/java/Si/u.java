package Si;

import Bi.I;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import Xi.w0;
import org.bouncycastle.crypto.DataLengthException;

public class u implements I {

    public byte f23507a;

    public byte f23508b = 0;

    public byte[] f23509c = null;

    public byte f23510d = 0;

    public byte[] f23511e;

    public byte[] f23512f;

    public byte[] f23513g;

    public byte f23514h;

    public byte f23515i;

    public byte f23516j;

    public byte f23517k;

    private void e(byte[] bArr, byte[] bArr2) {
        this.f23510d = (byte) 0;
        this.f23509c = new byte[256];
        for (int i10 = 0; i10 < 256; i10++) {
            this.f23509c[i10] = (byte) i10;
        }
        for (int i11 = 0; i11 < 768; i11++) {
            byte[] bArr3 = this.f23509c;
            byte b10 = this.f23510d;
            int i12 = i11 & 255;
            byte b11 = bArr3[i12];
            byte b12 = bArr3[(b10 + b11 + bArr[i11 % bArr.length]) & 255];
            this.f23510d = b12;
            bArr3[i12] = bArr3[b12 & 255];
            bArr3[b12 & 255] = b11;
        }
        for (int i13 = 0; i13 < 768; i13++) {
            byte[] bArr4 = this.f23509c;
            byte b13 = this.f23510d;
            int i14 = i13 & 255;
            byte b14 = bArr4[i14];
            byte b15 = bArr4[(b13 + b14 + bArr2[i13 % bArr2.length]) & 255];
            this.f23510d = b15;
            bArr4[i14] = bArr4[b15 & 255];
            bArr4[b15 & 255] = b14;
        }
        this.f23508b = (byte) 0;
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        if (!(interfaceC2379k instanceof w0)) {
            throw new IllegalArgumentException("VMPC-MAC Init parameters must include an IV");
        }
        w0 w0Var = (w0) interfaceC2379k;
        C3360o0 c3360o0 = (C3360o0) w0Var.b();
        if (!(w0Var.b() instanceof C3360o0)) {
            throw new IllegalArgumentException("VMPC-MAC Init parameters must include a key");
        }
        byte[] a10 = w0Var.a();
        this.f23512f = a10;
        if (a10 == null || a10.length < 1 || a10.length > 768) {
            throw new IllegalArgumentException("VMPC-MAC requires 1 to 768 bytes of IV");
        }
        this.f23513g = c3360o0.b();
        reset();
    }

    @Override
    public String b() {
        return "VMPC-MAC";
    }

    @Override
    public int c(byte[] bArr, int i10) throws DataLengthException, IllegalStateException {
        for (int i11 = 1; i11 < 25; i11++) {
            byte[] bArr2 = this.f23509c;
            byte b10 = this.f23510d;
            byte b11 = this.f23508b;
            byte b12 = bArr2[(b10 + bArr2[b11 & 255]) & 255];
            this.f23510d = b12;
            byte b13 = this.f23517k;
            byte b14 = this.f23516j;
            byte b15 = bArr2[(b13 + b14 + i11) & 255];
            this.f23517k = b15;
            byte b16 = this.f23515i;
            byte b17 = bArr2[(b14 + b16 + i11) & 255];
            this.f23516j = b17;
            byte b18 = this.f23514h;
            byte b19 = bArr2[(b16 + b18 + i11) & 255];
            this.f23515i = b19;
            byte b20 = bArr2[(b18 + b12 + i11) & 255];
            this.f23514h = b20;
            byte[] bArr3 = this.f23511e;
            byte b21 = this.f23507a;
            bArr3[b21 & 31] = (byte) (b20 ^ bArr3[b21 & 31]);
            bArr3[(b21 + 1) & 31] = (byte) (b19 ^ bArr3[(b21 + 1) & 31]);
            bArr3[(b21 + 2) & 31] = (byte) (b17 ^ bArr3[(b21 + 2) & 31]);
            bArr3[(b21 + 3) & 31] = (byte) (b15 ^ bArr3[(b21 + 3) & 31]);
            this.f23507a = (byte) ((b21 + 4) & 31);
            byte b22 = bArr2[b11 & 255];
            bArr2[b11 & 255] = bArr2[b12 & 255];
            bArr2[b12 & 255] = b22;
            this.f23508b = (byte) ((b11 + 1) & 255);
        }
        for (int i12 = 0; i12 < 768; i12++) {
            byte[] bArr4 = this.f23509c;
            byte b23 = this.f23510d;
            int i13 = i12 & 255;
            byte b24 = bArr4[i13];
            byte b25 = bArr4[(b23 + b24 + this.f23511e[i12 & 31]) & 255];
            this.f23510d = b25;
            bArr4[i13] = bArr4[b25 & 255];
            bArr4[b25 & 255] = b24;
        }
        byte[] bArr5 = new byte[20];
        for (int i14 = 0; i14 < 20; i14++) {
            byte[] bArr6 = this.f23509c;
            int i15 = i14 & 255;
            byte b26 = bArr6[(this.f23510d + bArr6[i15]) & 255];
            this.f23510d = b26;
            bArr5[i14] = bArr6[(bArr6[bArr6[b26 & 255] & 255] + 1) & 255];
            byte b27 = bArr6[i15];
            bArr6[i15] = bArr6[b26 & 255];
            bArr6[b26 & 255] = b27;
        }
        System.arraycopy(bArr5, 0, bArr, i10, 20);
        reset();
        return 20;
    }

    @Override
    public int d() {
        return 20;
    }

    @Override
    public void reset() {
        e(this.f23513g, this.f23512f);
        this.f23508b = (byte) 0;
        this.f23517k = (byte) 0;
        this.f23516j = (byte) 0;
        this.f23515i = (byte) 0;
        this.f23514h = (byte) 0;
        this.f23507a = (byte) 0;
        this.f23511e = new byte[32];
        for (int i10 = 0; i10 < 32; i10++) {
            this.f23511e[i10] = 0;
        }
    }

    @Override
    public void update(byte b10) throws IllegalStateException {
        byte[] bArr = this.f23509c;
        byte b11 = this.f23510d;
        byte b12 = this.f23508b;
        byte b13 = bArr[(b11 + bArr[b12 & 255]) & 255];
        this.f23510d = b13;
        byte b14 = (byte) (b10 ^ bArr[(bArr[bArr[b13 & 255] & 255] + 1) & 255]);
        byte b15 = this.f23517k;
        byte b16 = this.f23516j;
        byte b17 = bArr[(b15 + b16) & 255];
        this.f23517k = b17;
        byte b18 = this.f23515i;
        byte b19 = bArr[(b16 + b18) & 255];
        this.f23516j = b19;
        byte b20 = this.f23514h;
        byte b21 = bArr[(b18 + b20) & 255];
        this.f23515i = b21;
        byte b22 = bArr[(b20 + b13 + b14) & 255];
        this.f23514h = b22;
        byte[] bArr2 = this.f23511e;
        byte b23 = this.f23507a;
        bArr2[b23 & 31] = (byte) (b22 ^ bArr2[b23 & 31]);
        bArr2[(b23 + 1) & 31] = (byte) (b21 ^ bArr2[(b23 + 1) & 31]);
        bArr2[(b23 + 2) & 31] = (byte) (b19 ^ bArr2[(b23 + 2) & 31]);
        bArr2[(b23 + 3) & 31] = (byte) (b17 ^ bArr2[(b23 + 3) & 31]);
        this.f23507a = (byte) ((b23 + 4) & 31);
        byte b24 = bArr[b12 & 255];
        bArr[b12 & 255] = bArr[b13 & 255];
        bArr[b13 & 255] = b24;
        this.f23508b = (byte) ((b12 + 1) & 255);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalStateException {
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        for (int i12 = 0; i12 < i11; i12++) {
            update(bArr[i10 + i12]);
        }
    }
}
