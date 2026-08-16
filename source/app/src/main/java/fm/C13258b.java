package fm;

import java.io.OutputStream;

public class C13258b extends OutputStream {

    public final byte[] f86592b;

    public int f86593c = 0;

    public C13258b(int i10) {
        this.f86592b = new byte[i10];
    }

    public int a(byte[] bArr, int i10) {
        System.arraycopy(this.f86592b, 0, bArr, i10, this.f86593c);
        return this.f86593c;
    }

    public int c() {
        return this.f86592b.length;
    }

    public void d() {
        this.f86593c = 0;
    }

    public int e() {
        return this.f86593c;
    }

    @Override
    public void write(int i10) {
        byte[] bArr = this.f86592b;
        int i11 = this.f86593c;
        this.f86593c = i11 + 1;
        bArr[i11] = (byte) i10;
    }

    @Override
    public void write(byte[] bArr) {
        System.arraycopy(bArr, 0, this.f86592b, this.f86593c, bArr.length);
        this.f86593c += bArr.length;
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) {
        System.arraycopy(bArr, i10, this.f86592b, this.f86593c, i11);
        this.f86593c += i11;
    }
}
