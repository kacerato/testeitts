package oh;

import java.io.IOException;

public class I0 extends G {

    public int f98808e;

    public I0() {
        this.f98808e = -1;
    }

    public static boolean O(boolean z10) {
        if (z10) {
            return z10;
        }
        throw new IllegalStateException("DERSet elements should always be in sorted order");
    }

    public static I0 P(G g10) {
        return (I0) g10.C();
    }

    private int Q() throws IOException {
        if (this.f98808e < 0) {
            int length = this.f98796b.length;
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                i10 += this.f98796b[i11].r().C().y(true);
            }
            this.f98808e = i10;
        }
        return this.f98808e;
    }

    @Override
    public B C() {
        return this.f98797c != null ? this : super.C();
    }

    @Override
    public B D() {
        return this;
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.v(z10, 49);
        E0 f10 = c14503a.f();
        int length = this.f98796b.length;
        int i10 = 0;
        if (this.f98808e >= 0 || length > 16) {
            c14503a.m(Q());
            while (i10 < length) {
                this.f98796b[i10].r().C().v(f10, true);
                i10++;
            }
            return;
        }
        B[] bArr = new B[length];
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            B C10 = this.f98796b[i12].r().C();
            bArr[i12] = C10;
            i11 += C10.y(true);
        }
        this.f98808e = i11;
        c14503a.m(i11);
        while (i10 < length) {
            bArr[i10].v(f10, true);
            i10++;
        }
    }

    @Override
    public int y(boolean z10) throws IOException {
        return C14503A.i(z10, Q());
    }

    public I0(InterfaceC14516g interfaceC14516g) {
        super(interfaceC14516g);
        this.f98808e = -1;
    }

    public I0(C14518h c14518h) {
        super(c14518h, true);
        this.f98808e = -1;
    }

    public I0(boolean z10, InterfaceC14516g[] interfaceC14516gArr) {
        super(O(z10), interfaceC14516gArr);
        this.f98808e = -1;
    }

    public I0(InterfaceC14516g[] interfaceC14516gArr) {
        super(interfaceC14516gArr, true);
        this.f98808e = -1;
    }
}
