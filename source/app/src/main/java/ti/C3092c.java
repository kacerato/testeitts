package Ti;

import Bi.AbstractC2389v;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.w0;
import org.bouncycastle.crypto.DataLengthException;

public class C3092c extends AbstractC2389v implements InterfaceC3093d {

    public byte[] f25173a;

    public byte[] f25174b;

    public byte[] f25175c;

    public int f25176d;

    public InterfaceC2374f f25177e;

    public boolean f25178f;

    public C3092c(InterfaceC2374f interfaceC2374f) {
        this.f25177e = interfaceC2374f;
        int c10 = interfaceC2374f.c();
        this.f25176d = c10;
        this.f25173a = new byte[c10];
        this.f25174b = new byte[c10];
        this.f25175c = new byte[c10];
    }

    private int k(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        int i12 = this.f25176d;
        if (i10 + i12 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        System.arraycopy(bArr, i10, this.f25175c, 0, i12);
        int g10 = this.f25177e.g(bArr, i10, bArr2, i11);
        for (int i13 = 0; i13 < this.f25176d; i13++) {
            int i14 = i11 + i13;
            bArr2[i14] = (byte) (bArr2[i14] ^ this.f25174b[i13]);
        }
        byte[] bArr3 = this.f25174b;
        this.f25174b = this.f25175c;
        this.f25175c = bArr3;
        return g10;
    }

    private int l(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        if (this.f25176d + i10 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        for (int i12 = 0; i12 < this.f25176d; i12++) {
            byte[] bArr3 = this.f25174b;
            bArr3[i12] = (byte) (bArr3[i12] ^ bArr[i10 + i12]);
        }
        int g10 = this.f25177e.g(this.f25174b, 0, bArr2, i11);
        byte[] bArr4 = this.f25174b;
        System.arraycopy(bArr2, i11, bArr4, 0, bArr4.length);
        return g10;
    }

    public static InterfaceC3093d m(InterfaceC2374f interfaceC2374f) {
        return new C3092c(interfaceC2374f);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        boolean z11 = this.f25178f;
        this.f25178f = z10;
        if (interfaceC2379k instanceof w0) {
            w0 w0Var = (w0) interfaceC2379k;
            byte[] a10 = w0Var.a();
            if (a10.length != this.f25176d) {
                throw new IllegalArgumentException("initialisation vector must be the same length as block size");
            }
            System.arraycopy(a10, 0, this.f25173a, 0, a10.length);
            interfaceC2379k = w0Var.b();
        } else {
            org.bouncycastle.util.a.e0(this.f25173a, (byte) 0);
        }
        reset();
        if (interfaceC2379k != null) {
            this.f25177e.a(z10, interfaceC2379k);
        } else if (z11 != z10) {
            throw new IllegalArgumentException("cannot change encrypting state without providing key.");
        }
    }

    @Override
    public String b() {
        return this.f25177e.b() + "/CBC";
    }

    @Override
    public int c() {
        return this.f25177e.c();
    }

    @Override
    public InterfaceC2374f d() {
        return this.f25177e;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        return this.f25178f ? l(bArr, i10, bArr2, i11) : k(bArr, i10, bArr2, i11);
    }

    @Override
    public void reset() {
        byte[] bArr = this.f25173a;
        System.arraycopy(bArr, 0, this.f25174b, 0, bArr.length);
        org.bouncycastle.util.a.e0(this.f25175c, (byte) 0);
        this.f25177e.reset();
    }
}
