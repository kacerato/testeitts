package Ti;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class E implements InterfaceC2374f {

    public byte[] f25151a;

    public byte[] f25152b;

    public byte[] f25153c;

    public InterfaceC2374f f25154d;

    public int f25155e;

    public int f25156f;

    public boolean f25157g;

    public E(InterfaceC2374f interfaceC2374f) {
        this.f25154d = interfaceC2374f;
        int c10 = interfaceC2374f.c();
        this.f25156f = c10;
        this.f25151a = new byte[c10];
        this.f25152b = new byte[c10];
        this.f25153c = new byte[c10];
    }

    private int f(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        int i12;
        int i13 = this.f25156f;
        if (i10 + i13 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i11 + i13 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        int i14 = this.f25155e;
        int i15 = 2;
        int i16 = 0;
        if (i14 > i13) {
            byte b10 = bArr[i10];
            this.f25152b[i13 - 2] = b10;
            bArr2[i11] = j(b10, i13 - 2);
            byte b11 = bArr[i10 + 1];
            byte[] bArr3 = this.f25152b;
            int i17 = this.f25156f;
            bArr3[i17 - 1] = b11;
            bArr2[i11 + 1] = j(b11, i17 - 1);
            this.f25154d.g(this.f25152b, 0, this.f25153c, 0);
            while (i15 < this.f25156f) {
                byte b12 = bArr[i10 + i15];
                int i18 = i15 - 2;
                this.f25152b[i18] = b12;
                bArr2[i11 + i15] = j(b12, i18);
                i15++;
            }
        } else {
            if (i14 != 0) {
                if (i14 == i13) {
                    this.f25154d.g(this.f25152b, 0, this.f25153c, 0);
                    byte b13 = bArr[i10];
                    byte b14 = bArr[i10 + 1];
                    bArr2[i11] = j(b13, 0);
                    bArr2[i11 + 1] = j(b14, 1);
                    byte[] bArr4 = this.f25152b;
                    System.arraycopy(bArr4, 2, bArr4, 0, this.f25156f - 2);
                    byte[] bArr5 = this.f25152b;
                    int i19 = this.f25156f;
                    bArr5[i19 - 2] = b13;
                    bArr5[i19 - 1] = b14;
                    this.f25154d.g(bArr5, 0, this.f25153c, 0);
                    while (true) {
                        i12 = this.f25156f;
                        if (i15 >= i12) {
                            break;
                        }
                        byte b15 = bArr[i10 + i15];
                        int i20 = i15 - 2;
                        this.f25152b[i20] = b15;
                        bArr2[i11 + i15] = j(b15, i20);
                        i15++;
                    }
                }
            } else {
                this.f25154d.g(this.f25152b, 0, this.f25153c, 0);
                while (true) {
                    i12 = this.f25156f;
                    if (i16 >= i12) {
                        break;
                    }
                    int i21 = i10 + i16;
                    this.f25152b[i16] = bArr[i21];
                    bArr2[i11 + i16] = j(bArr[i21], i16);
                    i16++;
                }
            }
            this.f25155e += i12;
        }
        return this.f25156f;
    }

    private int i(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        int i12;
        int i13 = this.f25156f;
        if (i10 + i13 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i11 + i13 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        int i14 = this.f25155e;
        int i15 = 2;
        int i16 = 0;
        if (i14 > i13) {
            byte[] bArr3 = this.f25152b;
            int i17 = i13 - 2;
            byte j10 = j(bArr[i10], i13 - 2);
            bArr2[i11] = j10;
            bArr3[i17] = j10;
            byte[] bArr4 = this.f25152b;
            int i18 = this.f25156f;
            int i19 = i18 - 1;
            byte j11 = j(bArr[i10 + 1], i18 - 1);
            bArr2[i11 + 1] = j11;
            bArr4[i19] = j11;
            this.f25154d.g(this.f25152b, 0, this.f25153c, 0);
            while (i15 < this.f25156f) {
                byte[] bArr5 = this.f25152b;
                int i20 = i15 - 2;
                byte j12 = j(bArr[i10 + i15], i20);
                bArr2[i11 + i15] = j12;
                bArr5[i20] = j12;
                i15++;
            }
        } else {
            if (i14 != 0) {
                if (i14 == i13) {
                    this.f25154d.g(this.f25152b, 0, this.f25153c, 0);
                    bArr2[i11] = j(bArr[i10], 0);
                    bArr2[i11 + 1] = j(bArr[i10 + 1], 1);
                    byte[] bArr6 = this.f25152b;
                    System.arraycopy(bArr6, 2, bArr6, 0, this.f25156f - 2);
                    System.arraycopy(bArr2, i11, this.f25152b, this.f25156f - 2, 2);
                    this.f25154d.g(this.f25152b, 0, this.f25153c, 0);
                    while (true) {
                        i12 = this.f25156f;
                        if (i15 >= i12) {
                            break;
                        }
                        byte[] bArr7 = this.f25152b;
                        int i21 = i15 - 2;
                        byte j13 = j(bArr[i10 + i15], i21);
                        bArr2[i11 + i15] = j13;
                        bArr7[i21] = j13;
                        i15++;
                    }
                }
            } else {
                this.f25154d.g(this.f25152b, 0, this.f25153c, 0);
                while (true) {
                    i12 = this.f25156f;
                    if (i16 >= i12) {
                        break;
                    }
                    byte[] bArr8 = this.f25152b;
                    byte j14 = j(bArr[i10 + i16], i16);
                    bArr2[i11 + i16] = j14;
                    bArr8[i16] = j14;
                    i16++;
                }
            }
            this.f25155e += i12;
        }
        return this.f25156f;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        this.f25157g = z10;
        reset();
        this.f25154d.a(true, interfaceC2379k);
    }

    @Override
    public String b() {
        return this.f25154d.b() + "/OpenPGPCFB";
    }

    @Override
    public int c() {
        return this.f25154d.c();
    }

    public InterfaceC2374f d() {
        return this.f25154d;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        return this.f25157g ? i(bArr, i10, bArr2, i11) : f(bArr, i10, bArr2, i11);
    }

    public final byte j(byte b10, int i10) {
        return (byte) (b10 ^ this.f25153c[i10]);
    }

    @Override
    public void reset() {
        this.f25155e = 0;
        byte[] bArr = this.f25151a;
        byte[] bArr2 = this.f25152b;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.f25154d.reset();
    }
}
