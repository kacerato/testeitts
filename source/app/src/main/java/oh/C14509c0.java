package oh;

import java.io.IOException;

public class C14509c0 extends AbstractC14551y {

    public static final int f98862g = 1000;

    public final int f98863e;

    public final AbstractC14551y[] f98864f;

    public C14509c0(byte[] bArr) {
        this(bArr, 1000);
    }

    public static byte[] K(AbstractC14551y[] abstractC14551yArr) {
        int length = abstractC14551yArr.length;
        if (length == 0) {
            return AbstractC14551y.f99003d;
        }
        if (length == 1) {
            return abstractC14551yArr[0].f99004b;
        }
        int i10 = 0;
        for (AbstractC14551y abstractC14551y : abstractC14551yArr) {
            i10 += abstractC14551y.f99004b.length;
        }
        byte[] bArr = new byte[i10];
        int i11 = 0;
        for (AbstractC14551y abstractC14551y2 : abstractC14551yArr) {
            byte[] bArr2 = abstractC14551y2.f99004b;
            System.arraycopy(bArr2, 0, bArr, i11, bArr2.length);
            i11 += bArr2.length;
        }
        return bArr;
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.v(z10, 36);
        c14503a.k(128);
        AbstractC14551y[] abstractC14551yArr = this.f98864f;
        if (abstractC14551yArr == null) {
            int i10 = 0;
            while (true) {
                byte[] bArr = this.f99004b;
                if (i10 >= bArr.length) {
                    break;
                }
                int min = Math.min(bArr.length - i10, this.f98863e);
                C0.K(c14503a, true, this.f99004b, i10, min);
                i10 += min;
            }
        } else {
            c14503a.A(abstractC14551yArr);
        }
        c14503a.k(0);
        c14503a.k(0);
    }

    @Override
    public boolean x() {
        return true;
    }

    @Override
    public int y(boolean z10) throws IOException {
        int i10 = z10 ? 4 : 3;
        if (this.f98864f == null) {
            int length = this.f99004b.length;
            int i11 = this.f98863e;
            int i12 = length / i11;
            int L10 = i10 + (C0.L(true, i11) * i12);
            int length2 = this.f99004b.length - (i12 * this.f98863e);
            return length2 > 0 ? L10 + C0.L(true, length2) : L10;
        }
        int i13 = 0;
        while (true) {
            AbstractC14551y[] abstractC14551yArr = this.f98864f;
            if (i13 >= abstractC14551yArr.length) {
                return i10;
            }
            i10 += abstractC14551yArr[i13].y(true);
            i13++;
        }
    }

    public C14509c0(byte[] bArr, int i10) {
        this(bArr, null, i10);
    }

    public C14509c0(byte[] bArr, AbstractC14551y[] abstractC14551yArr, int i10) {
        super(bArr);
        this.f98864f = abstractC14551yArr;
        this.f98863e = i10;
    }

    public C14509c0(AbstractC14551y[] abstractC14551yArr) {
        this(abstractC14551yArr, 1000);
    }

    public C14509c0(AbstractC14551y[] abstractC14551yArr, int i10) {
        this(K(abstractC14551yArr), abstractC14551yArr, i10);
    }
}
