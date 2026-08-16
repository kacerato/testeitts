package oh;

import java.io.IOException;

public class Q0 extends AbstractC14508c {
    public Q0(byte b10, int i10) {
        super(b10, i10);
    }

    public static void N(C14503A c14503a, boolean z10, byte b10, byte[] bArr, int i10, int i11) throws IOException {
        c14503a.p(z10, 3, b10, bArr, i10, i11);
    }

    public static void O(C14503A c14503a, boolean z10, byte[] bArr, int i10, int i11) throws IOException {
        c14503a.s(z10, 3, bArr, i10, i11);
    }

    public static int P(boolean z10, int i10) {
        return C14503A.i(z10, i10);
    }

    @Override
    public B D() {
        return this;
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.r(z10, 3, this.f98861b);
    }

    @Override
    public boolean x() {
        return false;
    }

    @Override
    public int y(boolean z10) {
        return C14503A.i(z10, this.f98861b.length);
    }

    public Q0(int i10) {
        super(AbstractC14508c.G(i10), AbstractC14508c.K(i10));
    }

    public Q0(InterfaceC14516g interfaceC14516g) throws IOException {
        super(interfaceC14516g.r().s(InterfaceC14520i.f98892a), 0);
    }

    public Q0(byte[] bArr) {
        this(bArr, 0);
    }

    public Q0(byte[] bArr, int i10) {
        super(bArr, i10);
    }

    public Q0(byte[] bArr, boolean z10) {
        super(bArr, z10);
    }
}
