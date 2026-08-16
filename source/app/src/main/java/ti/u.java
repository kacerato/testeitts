package Ti;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Bi.X;
import Xi.w0;
import android.R;
import android.text.Spanned;
import org.bouncycastle.crypto.DataLengthException;

public class u extends X {

    public static final int f25330k = 16843012;

    public static final int f25331l = 16843009;

    public byte[] f25332b;

    public byte[] f25333c;

    public byte[] f25334d;

    public int f25335e;

    public final int f25336f;

    public final InterfaceC2374f f25337g;

    public boolean f25338h;

    public int f25339i;

    public int f25340j;

    public u(InterfaceC2374f interfaceC2374f) {
        super(interfaceC2374f);
        this.f25338h = true;
        this.f25337g = interfaceC2374f;
        int c10 = interfaceC2374f.c();
        this.f25336f = c10;
        if (c10 != 8) {
            throw new IllegalArgumentException("GCTR only for 64 bit block ciphers");
        }
        this.f25332b = new byte[interfaceC2374f.c()];
        this.f25333c = new byte[interfaceC2374f.c()];
        this.f25334d = new byte[interfaceC2374f.c()];
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        InterfaceC2374f interfaceC2374f;
        this.f25338h = true;
        this.f25339i = 0;
        this.f25340j = 0;
        if (interfaceC2379k instanceof w0) {
            w0 w0Var = (w0) interfaceC2379k;
            byte[] a10 = w0Var.a();
            int length = a10.length;
            byte[] bArr = this.f25332b;
            if (length < bArr.length) {
                System.arraycopy(a10, 0, bArr, bArr.length - a10.length, a10.length);
                int i10 = 0;
                while (true) {
                    byte[] bArr2 = this.f25332b;
                    if (i10 >= bArr2.length - a10.length) {
                        break;
                    }
                    bArr2[i10] = 0;
                    i10++;
                }
            } else {
                System.arraycopy(a10, 0, bArr, 0, bArr.length);
            }
            reset();
            if (w0Var.b() == null) {
                return;
            }
            interfaceC2374f = this.f25337g;
            interfaceC2379k = w0Var.b();
        } else {
            reset();
            if (interfaceC2379k == null) {
                return;
            } else {
                interfaceC2374f = this.f25337g;
            }
        }
        interfaceC2374f.a(true, interfaceC2379k);
    }

    @Override
    public String b() {
        return this.f25337g.b() + "/GCTR";
    }

    @Override
    public int c() {
        return this.f25336f;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        f(bArr, i10, this.f25336f, bArr2, i11);
        return this.f25336f;
    }

    @Override
    public byte k(byte b10) {
        if (this.f25335e == 0) {
            if (this.f25338h) {
                this.f25338h = false;
                this.f25337g.g(this.f25333c, 0, this.f25334d, 0);
                this.f25339i = l(this.f25334d, 0);
                this.f25340j = l(this.f25334d, 4);
            }
            int i10 = this.f25339i + 16843009;
            this.f25339i = i10;
            int i11 = this.f25340j;
            int i12 = i11 + 16843012;
            this.f25340j = i12;
            if (i12 < 16843012 && i12 > 0) {
                this.f25340j = i11 + R.attr.format;
            }
            m(i10, this.f25333c, 0);
            m(this.f25340j, this.f25333c, 4);
            this.f25337g.g(this.f25333c, 0, this.f25334d, 0);
        }
        byte[] bArr = this.f25334d;
        int i13 = this.f25335e;
        int i14 = i13 + 1;
        this.f25335e = i14;
        byte b11 = (byte) (b10 ^ bArr[i13]);
        int i15 = this.f25336f;
        if (i14 == i15) {
            this.f25335e = 0;
            byte[] bArr2 = this.f25333c;
            System.arraycopy(bArr2, i15, bArr2, 0, bArr2.length - i15);
            byte[] bArr3 = this.f25334d;
            byte[] bArr4 = this.f25333c;
            int length = bArr4.length;
            int i16 = this.f25336f;
            System.arraycopy(bArr3, 0, bArr4, length - i16, i16);
        }
        return b11;
    }

    public final int l(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] << 24) & (-16777216)) + ((bArr[i10 + 2] << 16) & Spanned.SPAN_PRIORITY) + ((bArr[i10 + 1] << 8) & 65280) + (bArr[i10] & 255);
    }

    public final void m(int i10, byte[] bArr, int i11) {
        bArr[i11 + 3] = (byte) (i10 >>> 24);
        bArr[i11 + 2] = (byte) (i10 >>> 16);
        bArr[i11 + 1] = (byte) (i10 >>> 8);
        bArr[i11] = (byte) i10;
    }

    @Override
    public void reset() {
        this.f25338h = true;
        this.f25339i = 0;
        this.f25340j = 0;
        byte[] bArr = this.f25332b;
        System.arraycopy(bArr, 0, this.f25333c, 0, bArr.length);
        this.f25335e = 0;
        this.f25337g.reset();
    }
}
