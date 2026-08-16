package Ti;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.w0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class F implements InterfaceC2374f {

    public byte[] f25158a;

    public byte[] f25159b;

    public byte[] f25160c;

    public byte[] f25161d;

    public InterfaceC2374f f25162e;

    public int f25163f;

    public int f25164g;

    public boolean f25165h;

    public boolean f25166i;

    public F(InterfaceC2374f interfaceC2374f, boolean z10) {
        this.f25162e = interfaceC2374f;
        this.f25166i = z10;
        int c10 = interfaceC2374f.c();
        this.f25164g = c10;
        this.f25158a = new byte[c10];
        this.f25159b = new byte[c10];
        this.f25160c = new byte[c10];
        this.f25161d = new byte[c10];
    }

    private int f(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        int i12 = this.f25164g;
        if (i10 + i12 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i12 + i11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        int i13 = 0;
        this.f25162e.g(this.f25159b, 0, this.f25160c, 0);
        for (int i14 = 0; i14 < this.f25164g; i14++) {
            bArr2[i11 + i14] = l(bArr[i10 + i14], i14);
        }
        while (true) {
            int i15 = this.f25164g;
            if (i13 >= i15) {
                return i15;
            }
            this.f25159b[i13] = bArr[i10 + i13];
            i13++;
        }
    }

    private int j(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        int i12 = this.f25164g;
        if (i10 + i12 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i12 + i11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        int i13 = 0;
        this.f25162e.g(this.f25159b, 0, this.f25160c, 0);
        for (int i14 = 0; i14 < this.f25164g; i14++) {
            bArr2[i11 + i14] = l(bArr[i10 + i14], i14);
        }
        while (true) {
            int i15 = this.f25164g;
            if (i13 >= i15) {
                return i15;
            }
            this.f25159b[i13] = bArr2[i11 + i13];
            i13++;
        }
    }

    private byte l(byte b10, int i10) {
        return (byte) (b10 ^ this.f25160c[i10]);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        InterfaceC2374f interfaceC2374f;
        this.f25165h = z10;
        if (interfaceC2379k instanceof w0) {
            w0 w0Var = (w0) interfaceC2379k;
            byte[] a10 = w0Var.a();
            int length = a10.length;
            byte[] bArr = this.f25158a;
            if (length < bArr.length) {
                System.arraycopy(a10, 0, bArr, bArr.length - a10.length, a10.length);
                int i10 = 0;
                while (true) {
                    byte[] bArr2 = this.f25158a;
                    if (i10 >= bArr2.length - a10.length) {
                        break;
                    }
                    bArr2[i10] = 0;
                    i10++;
                }
            } else {
                System.arraycopy(a10, 0, bArr, 0, bArr.length);
            }
            reset();
            interfaceC2374f = this.f25162e;
            interfaceC2379k = w0Var.b();
        } else {
            reset();
            interfaceC2374f = this.f25162e;
        }
        interfaceC2374f.a(true, interfaceC2379k);
    }

    @Override
    public String b() {
        StringBuilder sb2;
        String str;
        if (this.f25166i) {
            sb2 = new StringBuilder();
            sb2.append(this.f25162e.b());
            str = "/PGPCFBwithIV";
        } else {
            sb2 = new StringBuilder();
            sb2.append(this.f25162e.b());
            str = "/PGPCFB";
        }
        sb2.append(str);
        return sb2.toString();
    }

    @Override
    public int c() {
        return this.f25162e.c();
    }

    public InterfaceC2374f d() {
        return this.f25162e;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        return this.f25166i ? this.f25165h ? k(bArr, i10, bArr2, i11) : i(bArr, i10, bArr2, i11) : this.f25165h ? j(bArr, i10, bArr2, i11) : f(bArr, i10, bArr2, i11);
    }

    public final int i(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        int i12;
        int i13 = this.f25164g;
        if (i10 + i13 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i11 + i13 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        int i14 = this.f25163f;
        if (i14 == 0) {
            for (int i15 = 0; i15 < this.f25164g; i15++) {
                this.f25159b[i15] = bArr[i10 + i15];
            }
            this.f25162e.g(this.f25159b, 0, this.f25160c, 0);
            this.f25163f += this.f25164g;
            return 0;
        }
        if (i14 != i13) {
            if (i14 >= i13 + 2) {
                System.arraycopy(bArr, i10, this.f25161d, 0, i13);
                bArr2[i11] = l(this.f25161d[0], this.f25164g - 2);
                bArr2[i11 + 1] = l(this.f25161d[1], this.f25164g - 1);
                System.arraycopy(this.f25161d, 0, this.f25159b, this.f25164g - 2, 2);
                this.f25162e.g(this.f25159b, 0, this.f25160c, 0);
                int i16 = 0;
                while (true) {
                    i12 = this.f25164g;
                    if (i16 >= i12 - 2) {
                        break;
                    }
                    bArr2[i11 + i16 + 2] = l(this.f25161d[i16 + 2], i16);
                    i16++;
                }
                System.arraycopy(this.f25161d, 2, this.f25159b, 0, i12 - 2);
            }
            return this.f25164g;
        }
        System.arraycopy(bArr, i10, this.f25161d, 0, i13);
        byte[] bArr3 = this.f25159b;
        System.arraycopy(bArr3, 2, bArr3, 0, this.f25164g - 2);
        byte[] bArr4 = this.f25159b;
        int i17 = this.f25164g;
        byte[] bArr5 = this.f25161d;
        bArr4[i17 - 2] = bArr5[0];
        bArr4[i17 - 1] = bArr5[1];
        this.f25162e.g(bArr4, 0, this.f25160c, 0);
        int i18 = 0;
        while (true) {
            int i19 = this.f25164g;
            if (i18 >= i19 - 2) {
                System.arraycopy(this.f25161d, 2, this.f25159b, 0, i19 - 2);
                this.f25163f += 2;
                return this.f25164g - 2;
            }
            bArr2[i11 + i18] = l(this.f25161d[i18 + 2], i18);
            i18++;
        }
    }

    public final int k(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        int i12;
        int i13;
        int i14 = this.f25164g;
        if (i10 + i14 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        int i15 = this.f25163f;
        if (i15 != 0) {
            if (i15 >= i14 + 2) {
                if (i14 + i11 > bArr2.length) {
                    throw new OutputLengthException("output buffer too short");
                }
                this.f25162e.g(this.f25159b, 0, this.f25160c, 0);
                int i16 = 0;
                while (true) {
                    i12 = this.f25164g;
                    if (i16 >= i12) {
                        break;
                    }
                    bArr2[i11 + i16] = l(bArr[i10 + i16], i16);
                    i16++;
                }
                System.arraycopy(bArr2, i11, this.f25159b, 0, i12);
            }
            return this.f25164g;
        }
        if ((i14 * 2) + i11 + 2 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        this.f25162e.g(this.f25159b, 0, this.f25160c, 0);
        int i17 = 0;
        while (true) {
            i13 = this.f25164g;
            if (i17 >= i13) {
                break;
            }
            bArr2[i11 + i17] = l(this.f25158a[i17], i17);
            i17++;
        }
        System.arraycopy(bArr2, i11, this.f25159b, 0, i13);
        this.f25162e.g(this.f25159b, 0, this.f25160c, 0);
        int i18 = this.f25164g;
        bArr2[i11 + i18] = l(this.f25158a[i18 - 2], 0);
        int i19 = this.f25164g;
        bArr2[i11 + i19 + 1] = l(this.f25158a[i19 - 1], 1);
        System.arraycopy(bArr2, i11 + 2, this.f25159b, 0, this.f25164g);
        this.f25162e.g(this.f25159b, 0, this.f25160c, 0);
        int i20 = 0;
        while (true) {
            int i21 = this.f25164g;
            if (i20 >= i21) {
                System.arraycopy(bArr2, i11 + i21 + 2, this.f25159b, 0, i21);
                int i22 = this.f25163f;
                int i23 = this.f25164g;
                this.f25163f = i22 + (i23 * 2) + 2;
                return (i23 * 2) + 2;
            }
            bArr2[i21 + i11 + 2 + i20] = l(bArr[i10 + i20], i20);
            i20++;
        }
    }

    @Override
    public void reset() {
        this.f25163f = 0;
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f25159b;
            if (i10 == bArr.length) {
                this.f25162e.reset();
                return;
            }
            if (this.f25166i) {
                bArr[i10] = 0;
            } else {
                bArr[i10] = this.f25158a[i10];
            }
            i10++;
        }
    }
}
