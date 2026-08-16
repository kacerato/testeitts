package oh;

import java.io.IOException;

public class C14538r0 extends AbstractC14508c {
    public C14538r0(byte b10, int i10) {
        super(b10, i10);
    }

    public static C14538r0 N(AbstractC14508c abstractC14508c) {
        return (C14538r0) abstractC14508c.C();
    }

    public static C14538r0 O(AbstractC14551y abstractC14551y) {
        return new C14538r0(abstractC14551y.H(), true);
    }

    @Override
    public B C() {
        return this;
    }

    @Override
    public B D() {
        return this;
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        byte[] bArr = this.f98861b;
        int i10 = bArr[0] & 255;
        int length = bArr.length - 1;
        byte b10 = bArr[length];
        byte b11 = (byte) ((255 << i10) & b10);
        if (b10 == b11) {
            c14503a.r(z10, 3, bArr);
        } else {
            c14503a.t(z10, 3, bArr, 0, length, b11);
        }
    }

    @Override
    public boolean x() {
        return false;
    }

    @Override
    public int y(boolean z10) {
        return C14503A.i(z10, this.f98861b.length);
    }

    public C14538r0(int i10) {
        super(AbstractC14508c.G(i10), AbstractC14508c.K(i10));
    }

    public C14538r0(InterfaceC14516g interfaceC14516g) throws IOException {
        super(interfaceC14516g.r().s(InterfaceC14520i.f98892a), 0);
    }

    public C14538r0(byte[] bArr) {
        this(bArr, 0);
    }

    public C14538r0(byte[] bArr, int i10) {
        super(bArr, i10);
    }

    public C14538r0(byte[] bArr, boolean z10) {
        super(bArr, z10);
    }
}
