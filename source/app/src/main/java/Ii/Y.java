package Ii;

import Bi.InterfaceC2392y;
import org.bouncycastle.crypto.DataLengthException;

public class Y implements Bi.a0, InterfaceC2392y {

    public static final byte[] f9642e = org.bouncycastle.util.w.j("TupleHash");

    public final C2651i f9643a;

    public final int f9644b;

    public final int f9645c;

    public boolean f9646d;

    public Y(int i10, byte[] bArr) {
        this(i10, bArr, i10 * 2);
    }

    private void a(int i10) {
        byte[] d10 = b0.d(i10 * 8);
        this.f9643a.update(d10, 0, d10.length);
        this.f9646d = false;
    }

    @Override
    public String b() {
        return "TupleHash" + this.f9643a.b().substring(6);
    }

    @Override
    public int c(byte[] bArr, int i10) throws DataLengthException, IllegalStateException {
        if (this.f9646d) {
            a(f());
        }
        int e10 = this.f9643a.e(bArr, i10, f());
        reset();
        return e10;
    }

    @Override
    public int e(byte[] bArr, int i10, int i11) {
        if (this.f9646d) {
            a(f());
        }
        int e10 = this.f9643a.e(bArr, i10, i11);
        reset();
        return e10;
    }

    @Override
    public int f() {
        return this.f9645c;
    }

    @Override
    public int h(byte[] bArr, int i10, int i11) {
        if (this.f9646d) {
            a(0);
        }
        return this.f9643a.h(bArr, i10, i11);
    }

    @Override
    public int i() {
        return this.f9643a.i();
    }

    @Override
    public void reset() {
        this.f9643a.reset();
        this.f9646d = true;
    }

    @Override
    public void update(byte b10) throws IllegalStateException {
        byte[] a10 = b0.a(b10);
        this.f9643a.update(a10, 0, a10.length);
    }

    public Y(int i10, byte[] bArr, int i11) {
        this.f9643a = new C2651i(i10, f9642e, bArr);
        this.f9644b = i10;
        this.f9645c = (i11 + 7) / 8;
        reset();
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalStateException {
        byte[] b10 = b0.b(bArr, i10, i11);
        this.f9643a.update(b10, 0, b10.length);
    }

    public Y(Y y10) {
        C2651i c2651i = new C2651i(y10.f9643a);
        this.f9643a = c2651i;
        int i10 = c2651i.f9973f;
        this.f9644b = i10;
        this.f9645c = (i10 * 2) / 8;
        this.f9646d = y10.f9646d;
    }
}
