package com.android.tools.r8.internal;

import java.io.OutputStream;
import og.ExecutorC14502a;
import org.luaj.vm2.Lua;

public final class C5264He {

    public final byte[] f40811a;

    public final int f40812b;

    public int f40813c;

    public final OutputStream f40814d;

    public C5264He(int i10, byte[] bArr) {
        this.f40814d = null;
        this.f40811a = bArr;
        this.f40813c = 0;
        this.f40812b = i10;
    }

    public static int a(long j10) {
        if (((-128) & j10) == 0) {
            return 1;
        }
        if (((-16384) & j10) == 0) {
            return 2;
        }
        if ((ExecutorC14502a.f98708y & j10) == 0) {
            return 3;
        }
        if (((-268435456) & j10) == 0) {
            return 4;
        }
        if (((-34359738368L) & j10) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j10) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j10) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j10) == 0) {
            return 8;
        }
        return (j10 & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int b(int i10) {
        if ((i10 & (-128)) == 0) {
            return 1;
        }
        if ((i10 & Lua.MASK_Bx) == 0) {
            return 2;
        }
        if (((-2097152) & i10) == 0) {
            return 3;
        }
        return (i10 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int c(int i10) {
        return b(i10 << 3);
    }

    public final void d(int i10) {
        if (i10 >= 0) {
            g(i10);
        } else {
            d(i10);
        }
    }

    public final void e(int i10) {
        byte b10 = (byte) i10;
        if (this.f40813c == this.f40812b) {
            a();
        }
        byte[] bArr = this.f40811a;
        int i11 = this.f40813c;
        this.f40813c = i11 + 1;
        bArr[i11] = b10;
    }

    public final void f(int i10) {
        e(i10 & 255);
        e((i10 >> 8) & 255);
        e((i10 >> 16) & 255);
        e((i10 >> 24) & 255);
    }

    public final void g(int i10) {
        while ((i10 & (-128)) != 0) {
            e((i10 & 127) | 128);
            i10 >>>= 7;
        }
        e(i10);
    }

    public static C5264He a(C7872j8 c7872j8) {
        return new C5264He(c7872j8, new byte[1]);
    }

    public static long b(long j10) {
        return (j10 >> 63) ^ (j10 << 1);
    }

    public final void c(long j10) {
        e(((int) j10) & 255);
        e(((int) (j10 >> 8)) & 255);
        e(((int) (j10 >> 16)) & 255);
        e(((int) (j10 >> 24)) & 255);
        e(((int) (j10 >> 32)) & 255);
        e(((int) (j10 >> 40)) & 255);
        e(((int) (j10 >> 48)) & 255);
        e(((int) (j10 >> 56)) & 255);
    }

    public final void a(int i10, AbstractC8206l8 abstractC8206l8) {
        b(i10, 2);
        g(abstractC8206l8.size());
        a(abstractC8206l8);
    }

    public final void b(int i10, O0 o02) {
        b(i10, 2);
        g(o02.a());
        o02.a(this);
    }

    public final void d(long j10) {
        while (((-128) & j10) != 0) {
            e((((int) j10) & 127) | 128);
            j10 >>>= 7;
        }
        e((int) j10);
    }

    public C5264He(OutputStream outputStream, byte[] bArr) {
        this.f40814d = outputStream;
        this.f40811a = bArr;
        this.f40813c = 0;
        this.f40812b = bArr.length;
    }

    public static int a(int i10, int i11) {
        return c(i10) + (i11 >= 0 ? b(i11) : 10);
    }

    public final void b(int i10, int i11) {
        g((i10 << 3) | i11);
    }

    public static int a(int i10, O0 o02) {
        int c10 = c(i10);
        int a10 = o02.a();
        return b(a10) + a10 + c10;
    }

    public static int a(int i10) {
        if (i10 >= 0) {
            return b(i10);
        }
        return 10;
    }

    public final void a() {
        OutputStream outputStream = this.f40814d;
        if (outputStream != null) {
            outputStream.write(this.f40811a, 0, this.f40813c);
            this.f40813c = 0;
            return;
        }
        throw new C5090Ee();
    }

    public final void a(AbstractC8206l8 abstractC8206l8) {
        int size = abstractC8206l8.size();
        int i10 = this.f40812b;
        int i11 = this.f40813c;
        int i12 = i10 - i11;
        if (i12 >= size) {
            abstractC8206l8.a(this.f40811a, 0, i11, size);
            this.f40813c += size;
            return;
        }
        abstractC8206l8.a(this.f40811a, 0, i11, i12);
        int i13 = size - i12;
        this.f40813c = this.f40812b;
        a();
        if (i13 <= this.f40812b) {
            abstractC8206l8.a(this.f40811a, i12, 0, i13);
            this.f40813c = i13;
            return;
        }
        OutputStream outputStream = this.f40814d;
        if (i12 < 0) {
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Source offset < 0: ");
            sb2.append(i12);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        if (i13 >= 0) {
            int i14 = i12 + i13;
            if (i14 <= abstractC8206l8.size()) {
                if (i13 > 0) {
                    abstractC8206l8.a(outputStream, i12, i13);
                    return;
                }
                return;
            } else {
                StringBuilder sb3 = new StringBuilder(39);
                sb3.append("Source end offset exceeded: ");
                sb3.append(i14);
                throw new IndexOutOfBoundsException(sb3.toString());
            }
        }
        StringBuilder sb4 = new StringBuilder(23);
        sb4.append("Length < 0: ");
        sb4.append(i13);
        throw new IndexOutOfBoundsException(sb4.toString());
    }

    public final void a(byte[] bArr) {
        int length = bArr.length;
        int i10 = this.f40812b;
        int i11 = this.f40813c;
        int i12 = i10 - i11;
        if (i12 >= length) {
            System.arraycopy(bArr, 0, this.f40811a, i11, length);
            this.f40813c += length;
            return;
        }
        System.arraycopy(bArr, 0, this.f40811a, i11, i12);
        int i13 = length - i12;
        this.f40813c = this.f40812b;
        a();
        if (i13 <= this.f40812b) {
            System.arraycopy(bArr, i12, this.f40811a, 0, i13);
            this.f40813c = i13;
        } else {
            this.f40814d.write(bArr, i12, i13);
        }
    }
}
