package oh;

import java.io.IOException;

public class Y extends AbstractC14508c {

    public static final int f98841g = 1000;

    public final int f98842e;

    public final AbstractC14508c[] f98843f;

    public Y(byte b10, int i10) {
        super(b10, i10);
        this.f98843f = null;
        this.f98842e = 1000;
    }

    public static byte[] N(AbstractC14508c[] abstractC14508cArr) {
        int length = abstractC14508cArr.length;
        if (length == 0) {
            return new byte[]{0};
        }
        if (length == 1) {
            return abstractC14508cArr[0].f98861b;
        }
        int i10 = length - 1;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            byte[] bArr = abstractC14508cArr[i12].f98861b;
            if (bArr[0] != 0) {
                throw new IllegalArgumentException("only the last nested bitstring can have padding");
            }
            i11 += bArr.length - 1;
        }
        byte[] bArr2 = abstractC14508cArr[i10].f98861b;
        byte b10 = bArr2[0];
        byte[] bArr3 = new byte[i11 + bArr2.length];
        bArr3[0] = b10;
        int i13 = 1;
        for (AbstractC14508c abstractC14508c : abstractC14508cArr) {
            byte[] bArr4 = abstractC14508c.f98861b;
            int length2 = bArr4.length - 1;
            System.arraycopy(bArr4, 1, bArr3, i13, length2);
            i13 += length2;
        }
        return bArr3;
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        if (!x()) {
            byte[] bArr = this.f98861b;
            Q0.O(c14503a, z10, bArr, 0, bArr.length);
            return;
        }
        c14503a.v(z10, 35);
        c14503a.k(128);
        AbstractC14508c[] abstractC14508cArr = this.f98843f;
        if (abstractC14508cArr != null) {
            c14503a.A(abstractC14508cArr);
        } else {
            byte[] bArr2 = this.f98861b;
            if (bArr2.length >= 2) {
                byte b10 = bArr2[0];
                int length = bArr2.length;
                int i10 = length - 1;
                int i11 = this.f98842e - 1;
                while (i10 > i11) {
                    Q0.N(c14503a, true, (byte) 0, this.f98861b, length - i10, i11);
                    i10 -= i11;
                }
                Q0.N(c14503a, true, b10, this.f98861b, length - i10, i10);
            }
        }
        c14503a.k(0);
        c14503a.k(0);
    }

    @Override
    public boolean x() {
        return this.f98843f != null || this.f98861b.length > this.f98842e;
    }

    @Override
    public int y(boolean z10) throws IOException {
        if (!x()) {
            return Q0.P(z10, this.f98861b.length);
        }
        int i10 = z10 ? 4 : 3;
        if (this.f98843f == null) {
            byte[] bArr = this.f98861b;
            if (bArr.length < 2) {
                return i10;
            }
            int length = bArr.length - 2;
            int i11 = this.f98842e;
            int i12 = length / (i11 - 1);
            return i10 + (Q0.P(true, i11) * i12) + Q0.P(true, this.f98861b.length - (i12 * (this.f98842e - 1)));
        }
        int i13 = 0;
        while (true) {
            AbstractC14508c[] abstractC14508cArr = this.f98843f;
            if (i13 >= abstractC14508cArr.length) {
                return i10;
            }
            i10 += abstractC14508cArr[i13].y(true);
            i13++;
        }
    }

    public Y(InterfaceC14516g interfaceC14516g) throws IOException {
        this(interfaceC14516g.r().s(InterfaceC14520i.f98892a), 0);
    }

    public Y(byte[] bArr) {
        this(bArr, 0);
    }

    public Y(byte[] bArr, int i10) {
        this(bArr, i10, 1000);
    }

    public Y(byte[] bArr, int i10, int i11) {
        super(bArr, i10);
        this.f98843f = null;
        this.f98842e = i11;
    }

    public Y(byte[] bArr, boolean z10) {
        super(bArr, z10);
        this.f98843f = null;
        this.f98842e = 1000;
    }

    public Y(AbstractC14508c[] abstractC14508cArr) {
        this(abstractC14508cArr, 1000);
    }

    public Y(AbstractC14508c[] abstractC14508cArr, int i10) {
        super(N(abstractC14508cArr), false);
        this.f98843f = abstractC14508cArr;
        this.f98842e = i10;
    }
}
