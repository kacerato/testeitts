package gn;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UTFDataFormatException;

public class b extends FilterOutputStream {

    public int f90129b;

    public b(OutputStream out) {
        super(out);
    }

    public int c() {
        return this.f90129b;
    }

    public void d(boolean b10) throws IOException {
        if (b10) {
            write(1);
        } else {
            write(0);
        }
    }

    public void e(int b10) throws IOException {
        this.out.write(b10);
        this.f90129b++;
    }

    public void f(String s10) throws IOException {
        int length = s10.length();
        for (int i10 = 0; i10 < length; i10++) {
            this.out.write((byte) s10.charAt(i10));
        }
        this.f90129b += length;
    }

    public void g(int c10) throws IOException {
        this.out.write(c10 & 255);
        this.out.write((c10 >>> 8) & 255);
        this.f90129b += 2;
    }

    public void h(String s10) throws IOException {
        int length = s10.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = s10.charAt(i10);
            this.out.write(charAt & '\u00ff');
            this.out.write((charAt >>> '\b') & 255);
        }
        this.f90129b += length * 2;
    }

    public final void j(double d10) throws IOException {
        m(Double.doubleToLongBits(d10));
    }

    public final void k(float f10) throws IOException {
        l(Float.floatToIntBits(f10));
    }

    public void l(int i10) throws IOException {
        this.out.write(i10 & 255);
        this.out.write((i10 >>> 8) & 255);
        this.out.write((i10 >>> 16) & 255);
        this.out.write((i10 >>> 24) & 255);
        this.f90129b += 4;
    }

    public void m(long l10) throws IOException {
        this.out.write(((int) l10) & 255);
        this.out.write(((int) (l10 >>> 8)) & 255);
        this.out.write(((int) (l10 >>> 16)) & 255);
        this.out.write(((int) (l10 >>> 24)) & 255);
        this.out.write(((int) (l10 >>> 32)) & 255);
        this.out.write(((int) (l10 >>> 40)) & 255);
        this.out.write(((int) (l10 >>> 48)) & 255);
        this.out.write(((int) (l10 >>> 56)) & 255);
        this.f90129b += 8;
    }

    public void n(int s10) throws IOException {
        this.out.write(s10 & 255);
        this.out.write((s10 >>> 8) & 255);
        this.f90129b += 2;
    }

    public void o(String s10) throws IOException {
        int length = s10.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char charAt = s10.charAt(i11);
            i10 = (charAt < 1 || charAt > '\u007f') ? charAt > '\u07ff' ? i10 + 3 : i10 + 2 : i10 + 1;
        }
        if (i10 > 65535) {
            throw new UTFDataFormatException();
        }
        this.out.write((i10 >>> 8) & 255);
        this.out.write(i10 & 255);
        for (int i12 = 0; i12 < length; i12++) {
            char charAt2 = s10.charAt(i12);
            if (charAt2 >= 1 && charAt2 <= '\u007f') {
                this.out.write(charAt2);
            } else if (charAt2 > '\u07ff') {
                this.out.write(((charAt2 >> '\f') & 15) | 224);
                this.out.write(((charAt2 >> 6) & 63) | 128);
                this.out.write((charAt2 & '?') | 128);
                this.f90129b += 2;
            } else {
                this.out.write(((charAt2 >> 6) & 31) | 192);
                this.out.write((charAt2 & '?') | 128);
                this.f90129b++;
            }
        }
        this.f90129b += length + 2;
    }

    @Override
    public synchronized void write(int b10) throws IOException {
        this.out.write(b10);
        this.f90129b++;
    }

    @Override
    public synchronized void write(byte[] data, int offset, int length) throws IOException {
        this.out.write(data, offset, length);
        this.f90129b += length;
    }
}
