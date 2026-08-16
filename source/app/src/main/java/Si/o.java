package Si;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.w0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class o {

    public byte[] f23457a;

    public byte[] f23458b;

    public byte[] f23459c;

    public int f23460d;

    public InterfaceC2374f f23461e;

    public o(InterfaceC2374f interfaceC2374f, int i10) {
        this.f23461e = interfaceC2374f;
        this.f23460d = i10 / 8;
        this.f23457a = new byte[interfaceC2374f.c()];
        this.f23458b = new byte[interfaceC2374f.c()];
        this.f23459c = new byte[interfaceC2374f.c()];
    }

    public String a() {
        return this.f23461e.b() + "/CFB" + (this.f23460d * 8);
    }

    public int b() {
        return this.f23460d;
    }

    public void c(byte[] bArr) {
        this.f23461e.g(this.f23458b, 0, bArr, 0);
    }

    public void d(InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        InterfaceC2374f interfaceC2374f;
        if (interfaceC2379k instanceof w0) {
            w0 w0Var = (w0) interfaceC2379k;
            byte[] a10 = w0Var.a();
            int length = a10.length;
            byte[] bArr = this.f23457a;
            if (length < bArr.length) {
                System.arraycopy(a10, 0, bArr, bArr.length - a10.length, a10.length);
            } else {
                System.arraycopy(a10, 0, bArr, 0, bArr.length);
            }
            f();
            interfaceC2374f = this.f23461e;
            interfaceC2379k = w0Var.b();
        } else {
            f();
            interfaceC2374f = this.f23461e;
        }
        interfaceC2374f.a(true, interfaceC2379k);
    }

    public int e(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        int i12 = this.f23460d;
        if (i10 + i12 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i12 + i11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        this.f23461e.g(this.f23458b, 0, this.f23459c, 0);
        int i13 = 0;
        while (true) {
            int i14 = this.f23460d;
            if (i13 >= i14) {
                byte[] bArr3 = this.f23458b;
                System.arraycopy(bArr3, i14, bArr3, 0, bArr3.length - i14);
                byte[] bArr4 = this.f23458b;
                int length = bArr4.length;
                int i15 = this.f23460d;
                System.arraycopy(bArr2, i11, bArr4, length - i15, i15);
                return this.f23460d;
            }
            bArr2[i11 + i13] = (byte) (this.f23459c[i13] ^ bArr[i10 + i13]);
            i13++;
        }
    }

    public void f() {
        byte[] bArr = this.f23457a;
        System.arraycopy(bArr, 0, this.f23458b, 0, bArr.length);
        this.f23461e.reset();
    }
}
