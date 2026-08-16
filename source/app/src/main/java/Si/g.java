package Si;

import Bi.I;
import Bi.InterfaceC2379k;
import Ii.C2652j;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class g implements I {

    public static final int f23402f = 8;

    public C2652j f23403a;

    public int f23404b;

    public byte[] f23405c = null;

    public byte[] f23406d = null;

    public long f23407e;

    public g(int i10) {
        this.f23403a = new C2652j(i10);
        this.f23404b = i10 / 8;
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        this.f23405c = null;
        reset();
        if (!(interfaceC2379k instanceof C3360o0)) {
            throw new IllegalArgumentException("Bad parameter passed");
        }
        byte[] b10 = ((C3360o0) interfaceC2379k).b();
        this.f23406d = new byte[b10.length];
        this.f23405c = f(b10);
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f23406d;
            if (i10 >= bArr.length) {
                C2652j c2652j = this.f23403a;
                byte[] bArr2 = this.f23405c;
                c2652j.update(bArr2, 0, bArr2.length);
                return;
            }
            bArr[i10] = (byte) (~b10[i10]);
            i10++;
        }
    }

    @Override
    public String b() {
        return "DSTU7564Mac";
    }

    @Override
    public int c(byte[] bArr, int i10) throws DataLengthException, IllegalStateException {
        if (this.f23405c == null) {
            throw new IllegalStateException(b() + " not initialised");
        }
        if (bArr.length - i10 < this.f23404b) {
            throw new OutputLengthException("Output buffer too short");
        }
        e();
        C2652j c2652j = this.f23403a;
        byte[] bArr2 = this.f23406d;
        c2652j.update(bArr2, 0, bArr2.length);
        this.f23407e = 0L;
        int c10 = this.f23403a.c(bArr, i10);
        reset();
        return c10;
    }

    @Override
    public int d() {
        return this.f23404b;
    }

    public final void e() {
        int i10 = this.f23403a.i() - ((int) (this.f23407e % this.f23403a.i()));
        if (i10 < 13) {
            i10 += this.f23403a.i();
        }
        byte[] bArr = new byte[i10];
        bArr[0] = Byte.MIN_VALUE;
        org.bouncycastle.util.p.J(this.f23407e * 8, bArr, i10 - 12);
        this.f23403a.update(bArr, 0, i10);
    }

    public final byte[] f(byte[] bArr) {
        int length = (((bArr.length + this.f23403a.i()) - 1) / this.f23403a.i()) * this.f23403a.i();
        if (length - bArr.length < 13) {
            length += this.f23403a.i();
        }
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        bArr2[bArr.length] = Byte.MIN_VALUE;
        org.bouncycastle.util.p.m(bArr.length * 8, bArr2, length - 12);
        return bArr2;
    }

    @Override
    public void reset() {
        this.f23407e = 0L;
        this.f23403a.reset();
        byte[] bArr = this.f23405c;
        if (bArr != null) {
            this.f23403a.update(bArr, 0, bArr.length);
        }
    }

    @Override
    public void update(byte b10) throws IllegalStateException {
        this.f23403a.update(b10);
        this.f23407e++;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalStateException {
        if (bArr.length - i10 < i11) {
            throw new DataLengthException("Input buffer too short");
        }
        if (this.f23405c != null) {
            this.f23403a.update(bArr, i10, i11);
            this.f23407e += i11;
        } else {
            throw new IllegalStateException(b() + " not initialised");
        }
    }
}
