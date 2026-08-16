package oh;

import java.io.IOException;
import java.util.Date;

public class C14548w0 extends C14530n {
    public C14548w0(String str) {
        super(str);
    }

    @Override
    public B C() {
        return this;
    }

    @Override
    public B D() {
        return this;
    }

    public final byte[] S() {
        byte[] bArr = this.f98915b;
        if (bArr[bArr.length - 1] != 90) {
            return bArr;
        }
        if (!O()) {
            byte[] bArr2 = this.f98915b;
            byte[] bArr3 = new byte[bArr2.length + 4];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length - 1);
            System.arraycopy(org.bouncycastle.util.w.j("0000Z"), 0, bArr3, this.f98915b.length - 1, 5);
            return bArr3;
        }
        if (!P()) {
            byte[] bArr4 = this.f98915b;
            byte[] bArr5 = new byte[bArr4.length + 2];
            System.arraycopy(bArr4, 0, bArr5, 0, bArr4.length - 1);
            System.arraycopy(org.bouncycastle.util.w.j("00Z"), 0, bArr5, this.f98915b.length - 1, 3);
            return bArr5;
        }
        if (!N()) {
            return this.f98915b;
        }
        int length = this.f98915b.length - 2;
        while (length > 0 && this.f98915b[length] == 48) {
            length--;
        }
        byte[] bArr6 = this.f98915b;
        if (bArr6[length] == 46) {
            byte[] bArr7 = new byte[length + 1];
            System.arraycopy(bArr6, 0, bArr7, 0, length);
            bArr7[length] = 90;
            return bArr7;
        }
        byte[] bArr8 = new byte[length + 2];
        int i10 = length + 1;
        System.arraycopy(bArr6, 0, bArr8, 0, i10);
        bArr8[i10] = 90;
        return bArr8;
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.r(z10, 24, S());
    }

    @Override
    public int y(boolean z10) {
        return C14503A.i(z10, S().length);
    }

    public C14548w0(Date date) {
        super(date);
    }

    public C14548w0(byte[] bArr) {
        super(bArr);
    }
}
