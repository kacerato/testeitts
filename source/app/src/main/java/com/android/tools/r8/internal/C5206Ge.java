package com.android.tools.r8.internal;

import java.io.OutputStream;

public final class C5206Ge extends AbstractC5322Ie {

    public final byte[] f40542c;

    public final int f40543d;

    public int f40544e;

    public final OutputStream f40545f;

    public C5206Ge(OutputStream outputStream, int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("bufferSize must be >= 0");
        }
        int max = Math.max(i10, 20);
        this.f40542c = new byte[max];
        this.f40543d = max;
        if (outputStream == null) {
            throw new NullPointerException("out");
        }
        this.f40545f = outputStream;
    }

    @Override
    public final void a(int i10, long j10) {
        j(18);
        f(i10, 1);
        e(j10);
    }

    @Override
    public final void b(int i10, int i11) {
        j(14);
        f(i10, 5);
        h(i11);
    }

    @Override
    public final void c(int i10, int i11) {
        j(20);
        f(i10, 0);
        if (i11 >= 0) {
            i(i11);
        } else {
            f(i11);
        }
    }

    @Override
    public final void d(int i10, int i11) {
        j(5);
        i((i10 << 3) | i11);
    }

    public final void e(long j10) {
        byte[] bArr = this.f40542c;
        int i10 = this.f40544e;
        int i11 = i10 + 1;
        this.f40544e = i11;
        bArr[i10] = (byte) (j10 & 255);
        int i12 = i10 + 2;
        this.f40544e = i12;
        bArr[i11] = (byte) ((j10 >> 8) & 255);
        int i13 = i10 + 3;
        this.f40544e = i13;
        bArr[i12] = (byte) ((j10 >> 16) & 255);
        int i14 = i10 + 4;
        this.f40544e = i14;
        bArr[i13] = (byte) (255 & (j10 >> 24));
        int i15 = i10 + 5;
        this.f40544e = i15;
        bArr[i14] = (byte) (((int) (j10 >> 32)) & 255);
        int i16 = i10 + 6;
        this.f40544e = i16;
        bArr[i15] = (byte) (((int) (j10 >> 40)) & 255);
        int i17 = i10 + 7;
        this.f40544e = i17;
        bArr[i16] = (byte) (((int) (j10 >> 48)) & 255);
        this.f40544e = i10 + 8;
        bArr[i17] = (byte) (((int) (j10 >> 56)) & 255);
    }

    public final void f(long j10) {
        if (AbstractC5322Ie.f41157b) {
            while ((j10 & (-128)) != 0) {
                byte[] bArr = this.f40542c;
                int i10 = this.f40544e;
                this.f40544e = i10 + 1;
                AbstractC6671bw0.f46895c.a((Object) bArr, AbstractC6671bw0.f46898f + i10, (byte) ((((int) j10) & 127) | 128));
                j10 >>>= 7;
            }
            byte[] bArr2 = this.f40542c;
            int i11 = this.f40544e;
            this.f40544e = i11 + 1;
            AbstractC6671bw0.f46895c.a((Object) bArr2, AbstractC6671bw0.f46898f + i11, (byte) j10);
            return;
        }
        while ((j10 & (-128)) != 0) {
            byte[] bArr3 = this.f40542c;
            int i12 = this.f40544e;
            this.f40544e = i12 + 1;
            bArr3[i12] = (byte) ((((int) j10) & 127) | 128);
            j10 >>>= 7;
        }
        byte[] bArr4 = this.f40542c;
        int i13 = this.f40544e;
        this.f40544e = i13 + 1;
        bArr4[i13] = (byte) j10;
    }

    @Override
    public final void g(int i10) {
        j(5);
        i(i10);
    }

    public final void h(int i10) {
        byte[] bArr = this.f40542c;
        int i11 = this.f40544e;
        int i12 = i11 + 1;
        this.f40544e = i12;
        bArr[i11] = (byte) (i10 & 255);
        int i13 = i11 + 2;
        this.f40544e = i13;
        bArr[i12] = (byte) ((i10 >> 8) & 255);
        int i14 = i11 + 3;
        this.f40544e = i14;
        bArr[i13] = (byte) ((i10 >> 16) & 255);
        this.f40544e = i11 + 4;
        bArr[i14] = (byte) ((i10 >> 24) & 255);
    }

    public final void i(int i10) {
        if (!AbstractC5322Ie.f41157b) {
            while ((i10 & (-128)) != 0) {
                byte[] bArr = this.f40542c;
                int i11 = this.f40544e;
                this.f40544e = i11 + 1;
                bArr[i11] = (byte) ((i10 & 127) | 128);
                i10 >>>= 7;
            }
            byte[] bArr2 = this.f40542c;
            int i12 = this.f40544e;
            this.f40544e = i12 + 1;
            bArr2[i12] = (byte) i10;
            return;
        }
        while ((i10 & (-128)) != 0) {
            byte[] bArr3 = this.f40542c;
            int i13 = this.f40544e;
            this.f40544e = i13 + 1;
            AbstractC6671bw0.f46895c.a((Object) bArr3, AbstractC6671bw0.f46898f + i13, (byte) ((i10 & 127) | 128));
            i10 >>>= 7;
        }
        byte[] bArr4 = this.f40542c;
        int i14 = this.f40544e;
        this.f40544e = i14 + 1;
        AbstractC6671bw0.f46895c.a((Object) bArr4, AbstractC6671bw0.f46898f + i14, (byte) i10);
    }

    public final void j(int i10) {
        if (this.f40543d - this.f40544e < i10) {
            a();
        }
    }

    @Override
    public final void d(long j10) {
        j(10);
        f(j10);
    }

    @Override
    public final void a(int i10, boolean z10) {
        j(11);
        f(i10, 0);
        byte b10 = z10 ? (byte) 1 : (byte) 0;
        byte[] bArr = this.f40542c;
        int i11 = this.f40544e;
        this.f40544e = i11 + 1;
        bArr[i11] = b10;
    }

    @Override
    public final void b(int i10, long j10) {
        j(20);
        f(i10, 0);
        f(j10);
    }

    @Override
    public final void c(int i10, InterfaceC8095kW interfaceC8095kW) {
        d(1, 3);
        e(2, i10);
        d(3, 2);
        a(interfaceC8095kW);
        d(1, 4);
    }

    @Override
    public final void a(int i10, String str) {
        d(i10, 2);
        b(str);
    }

    @Override
    public final void b(int i10, AbstractC8373m8 abstractC8373m8) {
        d(i10, 2);
        a(abstractC8373m8);
    }

    public final void f(int i10, int i11) {
        i((i10 << 3) | i11);
    }

    @Override
    public final void a(AbstractC8373m8 abstractC8373m8) {
        int size = abstractC8373m8.size();
        j(5);
        i(size);
        abstractC8373m8.a(this);
    }

    @Override
    public final void b(int i10, InterfaceC8095kW interfaceC8095kW) {
        d(i10, 2);
        a(interfaceC8095kW);
    }

    @Override
    public final void e(int i10, int i11) {
        j(20);
        f(i10, 0);
        i(i11);
    }

    @Override
    public final void f(int i10) {
        if (i10 >= 0) {
            j(5);
            i(i10);
        } else {
            j(10);
            f(i10);
        }
    }

    @Override
    public final void c(int i10, AbstractC8373m8 abstractC8373m8) {
        d(1, 3);
        e(2, i10);
        d(3, 2);
        a(abstractC8373m8);
        d(1, 4);
    }

    @Override
    public final void b(String str) {
        try {
            int length = str.length() * 3;
            int c10 = AbstractC5322Ie.c(length);
            int i10 = c10 + length;
            int i11 = this.f40543d;
            if (i10 > i11) {
                byte[] bArr = new byte[length];
                int a10 = AbstractC9672tw0.f52738a.a(str, bArr, 0, length);
                j(5);
                i(a10);
                b(bArr, 0, a10);
                return;
            }
            if (i10 > i11 - this.f40544e) {
                a();
            }
            int c11 = AbstractC5322Ie.c(str.length());
            int i12 = this.f40544e;
            try {
                if (c11 == c10) {
                    int i13 = i12 + c11;
                    this.f40544e = i13;
                    int a11 = AbstractC9672tw0.f52738a.a(str, this.f40542c, i13, this.f40543d - i13);
                    this.f40544e = i12;
                    i((a11 - i12) - c11);
                    this.f40544e = a11;
                } else {
                    int a12 = AbstractC9672tw0.a(str);
                    i(a12);
                    this.f40544e = AbstractC9672tw0.f52738a.a(str, this.f40542c, this.f40544e, a12);
                }
            } catch (C9172qw0 e10) {
                this.f40544e = i12;
                throw e10;
            } catch (ArrayIndexOutOfBoundsException e11) {
                throw new C5148Fe(e11);
            }
        } catch (C9172qw0 e12) {
            a(str, e12);
        }
    }

    @Override
    public final void e(int i10) {
        j(4);
        h(i10);
    }

    @Override
    public final void a(InterfaceC8095kW interfaceC8095kW) {
        int serializedSize = interfaceC8095kW.getSerializedSize();
        j(5);
        i(serializedSize);
        interfaceC8095kW.writeTo(this);
    }

    @Override
    public final void c(long j10) {
        j(8);
        e(j10);
    }

    @Override
    public final void a(byte b10) {
        if (this.f40544e == this.f40543d) {
            a();
        }
        byte[] bArr = this.f40542c;
        int i10 = this.f40544e;
        this.f40544e = i10 + 1;
        bArr[i10] = b10;
    }

    @Override
    public final void a(int i10, byte[] bArr) {
        j(5);
        i(i10);
        b(bArr, 0, i10);
    }

    @Override
    public final void a(byte[] bArr, int i10, int i11) {
        b(bArr, i10, i11);
    }

    public final void a() {
        this.f40545f.write(this.f40542c, 0, this.f40544e);
        this.f40544e = 0;
    }

    public final void b(byte[] bArr, int i10, int i11) {
        int i12 = this.f40543d;
        int i13 = this.f40544e;
        int i14 = i12 - i13;
        if (i14 >= i11) {
            System.arraycopy(bArr, i10, this.f40542c, i13, i11);
            this.f40544e += i11;
            return;
        }
        System.arraycopy(bArr, i10, this.f40542c, i13, i14);
        int i15 = i10 + i14;
        int i16 = i11 - i14;
        this.f40544e = this.f40543d;
        a();
        if (i16 <= this.f40543d) {
            System.arraycopy(bArr, i15, this.f40542c, 0, i16);
            this.f40544e = i16;
        } else {
            this.f40545f.write(bArr, i15, i16);
        }
    }
}
