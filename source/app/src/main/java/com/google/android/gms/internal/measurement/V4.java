package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Locale;

public final class V4 extends W4 {

    public final byte[] f62145e;

    public final int f62146f;

    public int f62147g;

    public V4(byte[] bArr, int i10, int i11) {
        super(null);
        int length = bArr.length;
        if (((length - i11) | i11) < 0) {
            throw new IllegalArgumentException(String.format(Locale.US, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i11)));
        }
        this.f62145e = bArr;
        this.f62147g = 0;
        this.f62146f = i11;
    }

    @Override
    public final void A(int i10) throws IOException {
        int i11 = this.f62147g;
        try {
            byte[] bArr = this.f62145e;
            bArr[i11] = (byte) i10;
            bArr[i11 + 1] = (byte) (i10 >> 8);
            bArr[i11 + 2] = (byte) (i10 >> 16);
            bArr[i11 + 3] = (byte) (i10 >> 24);
            this.f62147g = i11 + 4;
        } catch (IndexOutOfBoundsException e10) {
            throw new zzlk(i11, this.f62146f, 4, e10);
        }
    }

    @Override
    public final void B(long j10) throws IOException {
        boolean z10;
        int i10;
        IndexOutOfBoundsException indexOutOfBoundsException;
        int i11;
        z10 = W4.f62158c;
        int i12 = this.f62147g;
        if (!z10 || this.f62146f - i12 < 10) {
            while ((j10 & (-128)) != 0) {
                try {
                    i11 = i12 + 1;
                } catch (IndexOutOfBoundsException e10) {
                    indexOutOfBoundsException = e10;
                }
                try {
                    this.f62145e[i12] = (byte) (((int) j10) | 128);
                    j10 >>>= 7;
                    i12 = i11;
                } catch (IndexOutOfBoundsException e11) {
                    indexOutOfBoundsException = e11;
                    i12 = i11;
                    throw new zzlk(i12, this.f62146f, 1, indexOutOfBoundsException);
                }
            }
            i10 = i12 + 1;
            try {
                this.f62145e[i12] = (byte) j10;
            } catch (IndexOutOfBoundsException e12) {
                indexOutOfBoundsException = e12;
                i12 = i10;
                throw new zzlk(i12, this.f62146f, 1, indexOutOfBoundsException);
            }
        } else {
            while ((j10 & (-128)) != 0) {
                C12244z6.u(this.f62145e, i12, (byte) (((int) j10) | 128));
                j10 >>>= 7;
                i12++;
            }
            i10 = i12 + 1;
            C12244z6.u(this.f62145e, i12, (byte) j10);
        }
        this.f62147g = i10;
    }

    @Override
    public final void C(long j10) throws IOException {
        int i10 = this.f62147g;
        try {
            byte[] bArr = this.f62145e;
            bArr[i10] = (byte) j10;
            bArr[i10 + 1] = (byte) (j10 >> 8);
            bArr[i10 + 2] = (byte) (j10 >> 16);
            bArr[i10 + 3] = (byte) (j10 >> 24);
            bArr[i10 + 4] = (byte) (j10 >> 32);
            bArr[i10 + 5] = (byte) (j10 >> 40);
            bArr[i10 + 6] = (byte) (j10 >> 48);
            bArr[i10 + 7] = (byte) (j10 >> 56);
            this.f62147g = i10 + 8;
        } catch (IndexOutOfBoundsException e10) {
            throw new zzlk(i10, this.f62146f, 8, e10);
        }
    }

    @Override
    public final void D(byte[] bArr, int i10, int i11) throws IOException {
        H(bArr, 0, i11);
    }

    @Override
    public final void E(String str) throws IOException {
        int i10 = this.f62147g;
        try {
            int G10 = W4.G(str.length() * 3);
            int G11 = W4.G(str.length());
            if (G11 != G10) {
                z(B6.b(str));
                byte[] bArr = this.f62145e;
                int i11 = this.f62147g;
                this.f62147g = B6.c(str, bArr, i11, this.f62146f - i11);
                return;
            }
            int i12 = i10 + G11;
            this.f62147g = i12;
            int c10 = B6.c(str, this.f62145e, i12, this.f62146f - i12);
            this.f62147g = i10;
            z((c10 - i10) - G11);
            this.f62147g = c10;
        } catch (zzoq e10) {
            this.f62147g = i10;
            f(str, e10);
        } catch (IndexOutOfBoundsException e11) {
            throw new zzlk(e11);
        }
    }

    @Override
    public final int F() {
        return this.f62146f - this.f62147g;
    }

    public final void H(byte[] bArr, int i10, int i11) throws IOException {
        try {
            System.arraycopy(bArr, 0, this.f62145e, this.f62147g, i11);
            this.f62147g += i11;
        } catch (IndexOutOfBoundsException e10) {
            throw new zzlk(this.f62147g, this.f62146f, i11, e10);
        }
    }

    @Override
    public final void i(int i10, int i11) throws IOException {
        z((i10 << 3) | i11);
    }

    @Override
    public final void j(int i10, int i11) throws IOException {
        z(i10 << 3);
        y(i11);
    }

    @Override
    public final void k(int i10, int i11) throws IOException {
        z(i10 << 3);
        z(i11);
    }

    @Override
    public final void l(int i10, int i11) throws IOException {
        z((i10 << 3) | 5);
        A(i11);
    }

    @Override
    public final void m(int i10, long j10) throws IOException {
        z(i10 << 3);
        B(j10);
    }

    @Override
    public final void n(int i10, long j10) throws IOException {
        z((i10 << 3) | 1);
        C(j10);
    }

    @Override
    public final void o(int i10, boolean z10) throws IOException {
        z(i10 << 3);
        x(z10 ? (byte) 1 : (byte) 0);
    }

    @Override
    public final void p(int i10, String str) throws IOException {
        z((i10 << 3) | 2);
        E(str);
    }

    @Override
    public final void q(int i10, S4 s42) throws IOException {
        z((i10 << 3) | 2);
        r(s42);
    }

    @Override
    public final void r(S4 s42) throws IOException {
        z(s42.l());
        s42.n(this);
    }

    @Override
    public final void s(byte[] bArr, int i10, int i11) throws IOException {
        z(i11);
        H(bArr, 0, i11);
    }

    @Override
    public final void t(int i10, W5 w52, InterfaceC12083h6 interfaceC12083h6) throws IOException {
        z((i10 << 3) | 2);
        z(((C4) w52).h(interfaceC12083h6));
        interfaceC12083h6.c(w52, this.f62160a);
    }

    @Override
    public final void u(int i10, W5 w52) throws IOException {
        z(11);
        k(2, i10);
        z(26);
        w(w52);
        z(12);
    }

    @Override
    public final void v(int i10, S4 s42) throws IOException {
        z(11);
        k(2, i10);
        q(3, s42);
        z(12);
    }

    @Override
    public final void w(W5 w52) throws IOException {
        z(w52.f());
        w52.c(this);
    }

    @Override
    public final void x(byte b10) throws IOException {
        IndexOutOfBoundsException indexOutOfBoundsException;
        int i10 = this.f62147g;
        try {
            int i11 = i10 + 1;
            try {
                this.f62145e[i10] = b10;
                this.f62147g = i11;
            } catch (IndexOutOfBoundsException e10) {
                indexOutOfBoundsException = e10;
                i10 = i11;
                throw new zzlk(i10, this.f62146f, 1, indexOutOfBoundsException);
            }
        } catch (IndexOutOfBoundsException e11) {
            indexOutOfBoundsException = e11;
        }
    }

    @Override
    public final void y(int i10) throws IOException {
        if (i10 >= 0) {
            z(i10);
        } else {
            B(i10);
        }
    }

    @Override
    public final void z(int i10) throws IOException {
        int i11;
        IndexOutOfBoundsException indexOutOfBoundsException;
        int i12 = this.f62147g;
        while ((i10 & (-128)) != 0) {
            try {
                i11 = i12 + 1;
                try {
                    this.f62145e[i12] = (byte) (i10 | 128);
                    i10 >>>= 7;
                    i12 = i11;
                } catch (IndexOutOfBoundsException e10) {
                    indexOutOfBoundsException = e10;
                    i12 = i11;
                    throw new zzlk(i12, this.f62146f, 1, indexOutOfBoundsException);
                }
            } catch (IndexOutOfBoundsException e11) {
                indexOutOfBoundsException = e11;
                throw new zzlk(i12, this.f62146f, 1, indexOutOfBoundsException);
            }
        }
        i11 = i12 + 1;
        this.f62145e[i12] = (byte) i10;
        this.f62147g = i11;
    }
}
