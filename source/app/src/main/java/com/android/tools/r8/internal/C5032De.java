package com.android.tools.r8.internal;

public final class C5032De extends AbstractC5322Ie {

    public final byte[] f39577c;

    public final int f39578d;

    public int f39579e;

    public C5032De(int i10, byte[] bArr) {
        if (((bArr.length - i10) | i10) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i10)));
        }
        this.f39577c = bArr;
        this.f39579e = 0;
        this.f39578d = i10;
    }

    @Override
    public final void a(int i10, long j10) {
        d(i10, 1);
        c(j10);
    }

    @Override
    public final void b(int i10, int i11) {
        d(i10, 5);
        e(i11);
    }

    @Override
    public final void c(int i10, int i11) {
        d(i10, 0);
        f(i11);
    }

    @Override
    public final void d(long j10) {
        if (AbstractC5322Ie.f41157b && this.f39578d - this.f39579e >= 10) {
            while ((j10 & (-128)) != 0) {
                byte[] bArr = this.f39577c;
                int i10 = this.f39579e;
                this.f39579e = i10 + 1;
                AbstractC6671bw0.f46895c.a((Object) bArr, AbstractC6671bw0.f46898f + i10, (byte) ((((int) j10) & 127) | 128));
                j10 >>>= 7;
            }
            byte[] bArr2 = this.f39577c;
            int i11 = this.f39579e;
            this.f39579e = i11 + 1;
            AbstractC6671bw0.f46895c.a((Object) bArr2, AbstractC6671bw0.f46898f + i11, (byte) j10);
            return;
        }
        while ((j10 & (-128)) != 0) {
            try {
                byte[] bArr3 = this.f39577c;
                int i12 = this.f39579e;
                this.f39579e = i12 + 1;
                bArr3[i12] = (byte) ((((int) j10) & 127) | 128);
                j10 >>>= 7;
            } catch (IndexOutOfBoundsException e10) {
                throw new C5148Fe(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f39579e), Integer.valueOf(this.f39578d), 1), e10);
            }
        }
        byte[] bArr4 = this.f39577c;
        int i13 = this.f39579e;
        this.f39579e = i13 + 1;
        bArr4[i13] = (byte) j10;
    }

    @Override
    public final void e(int i10, int i11) {
        d(i10, 0);
        g(i11);
    }

    @Override
    public final void f(int i10) {
        if (i10 >= 0) {
            g(i10);
        } else {
            d(i10);
        }
    }

    @Override
    public final void g(int i10) {
        if (AbstractC5322Ie.f41157b && !AbstractC9690u2.a()) {
            int i11 = this.f39578d;
            int i12 = this.f39579e;
            if (i11 - i12 >= 5) {
                if ((i10 & (-128)) == 0) {
                    byte[] bArr = this.f39577c;
                    this.f39579e = i12 + 1;
                    AbstractC6671bw0.f46895c.a((Object) bArr, AbstractC6671bw0.f46898f + i12, (byte) i10);
                    return;
                }
                byte[] bArr2 = this.f39577c;
                this.f39579e = i12 + 1;
                AbstractC6504aw0 abstractC6504aw0 = AbstractC6671bw0.f46895c;
                long j10 = AbstractC6671bw0.f46898f;
                abstractC6504aw0.a((Object) bArr2, i12 + j10, (byte) (i10 | 128));
                int i13 = i10 >>> 7;
                if ((i13 & (-128)) == 0) {
                    byte[] bArr3 = this.f39577c;
                    int i14 = this.f39579e;
                    this.f39579e = i14 + 1;
                    abstractC6504aw0.a((Object) bArr3, j10 + i14, (byte) i13);
                    return;
                }
                byte[] bArr4 = this.f39577c;
                int i15 = this.f39579e;
                this.f39579e = i15 + 1;
                abstractC6504aw0.a((Object) bArr4, i15 + j10, (byte) (i13 | 128));
                int i16 = i10 >>> 14;
                if ((i16 & (-128)) == 0) {
                    byte[] bArr5 = this.f39577c;
                    int i17 = this.f39579e;
                    this.f39579e = i17 + 1;
                    abstractC6504aw0.a((Object) bArr5, j10 + i17, (byte) i16);
                    return;
                }
                byte[] bArr6 = this.f39577c;
                int i18 = this.f39579e;
                this.f39579e = i18 + 1;
                abstractC6504aw0.a((Object) bArr6, i18 + j10, (byte) (i16 | 128));
                int i19 = i10 >>> 21;
                if ((i19 & (-128)) == 0) {
                    byte[] bArr7 = this.f39577c;
                    int i20 = this.f39579e;
                    this.f39579e = i20 + 1;
                    abstractC6504aw0.a((Object) bArr7, j10 + i20, (byte) i19);
                    return;
                }
                byte[] bArr8 = this.f39577c;
                int i21 = this.f39579e;
                this.f39579e = i21 + 1;
                abstractC6504aw0.a((Object) bArr8, i21 + j10, (byte) (i19 | 128));
                byte[] bArr9 = this.f39577c;
                int i22 = this.f39579e;
                this.f39579e = i22 + 1;
                abstractC6504aw0.a((Object) bArr9, j10 + i22, (byte) (i10 >>> 28));
                return;
            }
        }
        while ((i10 & (-128)) != 0) {
            try {
                byte[] bArr10 = this.f39577c;
                int i23 = this.f39579e;
                this.f39579e = i23 + 1;
                bArr10[i23] = (byte) ((i10 & 127) | 128);
                i10 >>>= 7;
            } catch (IndexOutOfBoundsException e10) {
                throw new C5148Fe(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f39579e), Integer.valueOf(this.f39578d), 1), e10);
            }
        }
        byte[] bArr11 = this.f39577c;
        int i24 = this.f39579e;
        this.f39579e = i24 + 1;
        bArr11[i24] = (byte) i10;
    }

    @Override
    public final void a(int i10, boolean z10) {
        d(i10, 0);
        a(z10 ? (byte) 1 : (byte) 0);
    }

    @Override
    public final void b(int i10, long j10) {
        d(i10, 0);
        d(j10);
    }

    @Override
    public final void c(int i10, InterfaceC8095kW interfaceC8095kW) {
        d(1, 3);
        d(2, 0);
        g(i10);
        b(3, interfaceC8095kW);
        d(1, 4);
    }

    @Override
    public final void e(int i10) {
        try {
            byte[] bArr = this.f39577c;
            int i11 = this.f39579e;
            int i12 = i11 + 1;
            this.f39579e = i12;
            bArr[i11] = (byte) (i10 & 255);
            int i13 = i11 + 2;
            this.f39579e = i13;
            bArr[i12] = (byte) ((i10 >> 8) & 255);
            int i14 = i11 + 3;
            this.f39579e = i14;
            bArr[i13] = (byte) ((i10 >> 16) & 255);
            this.f39579e = i11 + 4;
            bArr[i14] = (byte) ((i10 >> 24) & 255);
        } catch (IndexOutOfBoundsException e10) {
            throw new C5148Fe(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f39579e), Integer.valueOf(this.f39578d), 1), e10);
        }
    }

    @Override
    public final void a(int i10, String str) {
        d(i10, 2);
        b(str);
    }

    @Override
    public final void b(int i10, AbstractC8373m8 abstractC8373m8) {
        d(i10, 2);
        g(abstractC8373m8.size());
        abstractC8373m8.a(this);
    }

    @Override
    public final void a(AbstractC8373m8 abstractC8373m8) {
        g(abstractC8373m8.size());
        abstractC8373m8.a(this);
    }

    @Override
    public final void b(int i10, InterfaceC8095kW interfaceC8095kW) {
        d(i10, 2);
        g(interfaceC8095kW.getSerializedSize());
        interfaceC8095kW.writeTo(this);
    }

    @Override
    public final void c(int i10, AbstractC8373m8 abstractC8373m8) {
        d(1, 3);
        d(2, 0);
        g(i10);
        b(3, abstractC8373m8);
        d(1, 4);
    }

    @Override
    public final void a(int i10, byte[] bArr) {
        g(i10);
        b(bArr, 0, i10);
    }

    @Override
    public final void a(InterfaceC8095kW interfaceC8095kW) {
        g(interfaceC8095kW.getSerializedSize());
        interfaceC8095kW.writeTo(this);
    }

    public final void b(byte[] bArr, int i10, int i11) {
        try {
            System.arraycopy(bArr, i10, this.f39577c, this.f39579e, i11);
            this.f39579e += i11;
        } catch (IndexOutOfBoundsException e10) {
            throw new C5148Fe(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f39579e), Integer.valueOf(this.f39578d), Integer.valueOf(i11)), e10);
        }
    }

    @Override
    public final void d(int i10, int i11) {
        g((i10 << 3) | i11);
    }

    @Override
    public final void a(byte b10) {
        try {
            byte[] bArr = this.f39577c;
            int i10 = this.f39579e;
            this.f39579e = i10 + 1;
            bArr[i10] = b10;
        } catch (IndexOutOfBoundsException e10) {
            throw new C5148Fe(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f39579e), Integer.valueOf(this.f39578d), 1), e10);
        }
    }

    @Override
    public final void c(long j10) {
        try {
            byte[] bArr = this.f39577c;
            int i10 = this.f39579e;
            int i11 = i10 + 1;
            this.f39579e = i11;
            bArr[i10] = (byte) (((int) j10) & 255);
            int i12 = i10 + 2;
            this.f39579e = i12;
            bArr[i11] = (byte) (((int) (j10 >> 8)) & 255);
            int i13 = i10 + 3;
            this.f39579e = i13;
            bArr[i12] = (byte) (((int) (j10 >> 16)) & 255);
            int i14 = i10 + 4;
            this.f39579e = i14;
            bArr[i13] = (byte) (((int) (j10 >> 24)) & 255);
            int i15 = i10 + 5;
            this.f39579e = i15;
            bArr[i14] = (byte) (((int) (j10 >> 32)) & 255);
            int i16 = i10 + 6;
            this.f39579e = i16;
            bArr[i15] = (byte) (((int) (j10 >> 40)) & 255);
            int i17 = i10 + 7;
            this.f39579e = i17;
            bArr[i16] = (byte) (((int) (j10 >> 48)) & 255);
            this.f39579e = i10 + 8;
            bArr[i17] = (byte) (((int) (j10 >> 56)) & 255);
        } catch (IndexOutOfBoundsException e10) {
            throw new C5148Fe(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f39579e), Integer.valueOf(this.f39578d), 1), e10);
        }
    }

    @Override
    public final void b(String str) {
        int i10 = this.f39579e;
        try {
            int c10 = AbstractC5322Ie.c(str.length() * 3);
            int c11 = AbstractC5322Ie.c(str.length());
            if (c11 == c10) {
                int i11 = i10 + c11;
                this.f39579e = i11;
                int a10 = AbstractC9672tw0.f52738a.a(str, this.f39577c, i11, this.f39578d - i11);
                this.f39579e = i10;
                g((a10 - i10) - c11);
                this.f39579e = a10;
                return;
            }
            g(AbstractC9672tw0.a(str));
            byte[] bArr = this.f39577c;
            int i12 = this.f39579e;
            this.f39579e = AbstractC9672tw0.f52738a.a(str, bArr, i12, this.f39578d - i12);
        } catch (C9172qw0 e10) {
            this.f39579e = i10;
            a(str, e10);
        } catch (IndexOutOfBoundsException e11) {
            throw new C5148Fe(e11);
        }
    }

    @Override
    public final void a(byte[] bArr, int i10, int i11) {
        b(bArr, i10, i11);
    }

    public final int a() {
        return this.f39578d - this.f39579e;
    }
}
