package Li;

import Bi.InterfaceC2379k;
import Xi.C3360o0;
import android.text.format.DateUtils;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class J implements Bi.Y {

    public byte[] f13627d;

    public byte[] f13628e;

    public boolean f13629f;

    public int[] f13624a = new int[1024];

    public int[] f13625b = new int[1024];

    public int f13626c = 0;

    public byte[] f13630g = new byte[4];

    public int f13631h = 0;

    private byte c() {
        if (this.f13631h == 0) {
            int h10 = h();
            byte[] bArr = this.f13630g;
            bArr[0] = (byte) (h10 & 255);
            bArr[1] = (byte) ((h10 >> 8) & 255);
            bArr[2] = (byte) ((h10 >> 16) & 255);
            bArr[3] = (byte) ((h10 >> 24) & 255);
        }
        byte[] bArr2 = this.f13630g;
        int i10 = this.f13631h;
        byte b10 = bArr2[i10];
        this.f13631h = 3 & (i10 + 1);
        return b10;
    }

    private void e() {
        byte[] bArr = this.f13627d;
        if (bArr.length != 32 && bArr.length != 16) {
            throw new IllegalArgumentException("The key must be 128/256 bits long");
        }
        if (this.f13628e.length < 16) {
            throw new IllegalArgumentException("The IV must be at least 128 bits long");
        }
        if (bArr.length != 32) {
            byte[] bArr2 = new byte[32];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            byte[] bArr3 = this.f13627d;
            System.arraycopy(bArr3, 0, bArr2, 16, bArr3.length);
            this.f13627d = bArr2;
        }
        byte[] bArr4 = this.f13628e;
        if (bArr4.length < 32) {
            byte[] bArr5 = new byte[32];
            System.arraycopy(bArr4, 0, bArr5, 0, bArr4.length);
            byte[] bArr6 = this.f13628e;
            System.arraycopy(bArr6, 0, bArr5, bArr6.length, 32 - bArr6.length);
            this.f13628e = bArr5;
        }
        this.f13631h = 0;
        this.f13626c = 0;
        int[] iArr = new int[DateUtils.FORMAT_NO_NOON_MIDNIGHT];
        for (int i10 = 0; i10 < 32; i10++) {
            int i11 = i10 >> 2;
            iArr[i11] = iArr[i11] | ((this.f13627d[i10] & 255) << ((i10 & 3) * 8));
        }
        for (int i12 = 0; i12 < 32; i12++) {
            int i13 = (i12 >> 2) + 8;
            iArr[i13] = iArr[i13] | ((this.f13628e[i12] & 255) << ((i12 & 3) * 8));
        }
        for (int i14 = 16; i14 < 2560; i14++) {
            int i15 = iArr[i14 - 2];
            int i16 = iArr[i14 - 15];
            iArr[i14] = ((i15 >>> 10) ^ (g(i15, 17) ^ g(i15, 19))) + iArr[i14 - 7] + ((i16 >>> 3) ^ (g(i16, 7) ^ g(i16, 18))) + iArr[i14 - 16] + i14;
        }
        System.arraycopy(iArr, 512, this.f13624a, 0, 1024);
        System.arraycopy(iArr, 1536, this.f13625b, 0, 1024);
        for (int i17 = 0; i17 < 4096; i17++) {
            h();
        }
        this.f13626c = 0;
    }

    private static int g(int i10, int i11) {
        return (i10 << (-i11)) | (i10 >>> i11);
    }

    private int h() {
        int i10;
        int i11;
        int i12 = this.f13626c;
        int i13 = i12 & 1023;
        if (i12 < 1024) {
            int[] iArr = this.f13624a;
            int i14 = iArr[(i13 - 3) & 1023];
            int i15 = iArr[(i13 - 1023) & 1023];
            int i16 = iArr[i13];
            int g10 = iArr[(i13 - 10) & 1023] + (g(i15, 23) ^ g(i14, 10));
            int[] iArr2 = this.f13625b;
            iArr[i13] = i16 + g10 + iArr2[(i14 ^ i15) & 1023];
            int[] iArr3 = this.f13624a;
            int i17 = iArr3[(i13 - 12) & 1023];
            i10 = iArr2[i17 & 255] + iArr2[((i17 >> 8) & 255) + 256] + iArr2[((i17 >> 16) & 255) + 512] + iArr2[((i17 >> 24) & 255) + 768];
            i11 = iArr3[i13];
        } else {
            int[] iArr4 = this.f13625b;
            int i18 = iArr4[(i13 - 3) & 1023];
            int i19 = iArr4[(i13 - 1023) & 1023];
            int i20 = iArr4[i13];
            int g11 = iArr4[(i13 - 10) & 1023] + (g(i19, 23) ^ g(i18, 10));
            int[] iArr5 = this.f13624a;
            iArr4[i13] = i20 + g11 + iArr5[(i18 ^ i19) & 1023];
            int[] iArr6 = this.f13625b;
            int i21 = iArr6[(i13 - 12) & 1023];
            i10 = iArr5[i21 & 255] + iArr5[((i21 >> 8) & 255) + 256] + iArr5[((i21 >> 16) & 255) + 512] + iArr5[((i21 >> 24) & 255) + 768];
            i11 = iArr6[i13];
        }
        int i22 = i11 ^ i10;
        this.f13626c = (this.f13626c + 1) & 2047;
        return i22;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        InterfaceC2379k interfaceC2379k2;
        if (interfaceC2379k instanceof Xi.w0) {
            Xi.w0 w0Var = (Xi.w0) interfaceC2379k;
            this.f13628e = w0Var.a();
            interfaceC2379k2 = w0Var.b();
        } else {
            this.f13628e = new byte[0];
            interfaceC2379k2 = interfaceC2379k;
        }
        if (!(interfaceC2379k2 instanceof C3360o0)) {
            throw new IllegalArgumentException("Invalid parameter passed to HC256 init - " + interfaceC2379k.getClass().getName());
        }
        this.f13627d = ((C3360o0) interfaceC2379k2).b();
        e();
        Bi.r.a(new Hi.c(b(), this.f13627d.length * 8, interfaceC2379k, x0.a(z10)));
        this.f13629f = true;
    }

    @Override
    public String b() {
        return "HC-256";
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
        if (!this.f13629f) {
            throw new IllegalStateException(b() + " not initialised");
        }
        if (i10 + i11 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i12 + i11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        for (int i13 = 0; i13 < i11; i13++) {
            bArr2[i12 + i13] = (byte) (bArr[i10 + i13] ^ c());
        }
        return i11;
    }

    @Override
    public byte i(byte b10) {
        return (byte) (b10 ^ c());
    }

    @Override
    public void reset() {
        e();
    }
}
