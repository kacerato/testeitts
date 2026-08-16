package oh;

import java.io.IOException;

public class X0 extends G {

    public int f98840e;

    public X0() {
        this.f98840e = -1;
    }

    private int O() throws IOException {
        if (this.f98840e < 0) {
            int length = this.f98796b.length;
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                i10 += this.f98796b[i11].r().D().y(true);
            }
            this.f98840e = i10;
        }
        return this.f98840e;
    }

    @Override
    public B D() {
        return this;
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.v(z10, 49);
        U0 g10 = c14503a.g();
        int length = this.f98796b.length;
        int i10 = 0;
        if (this.f98840e >= 0 || length > 16) {
            c14503a.m(O());
            while (i10 < length) {
                g10.z(this.f98796b[i10].r(), true);
                i10++;
            }
            return;
        }
        B[] bArr = new B[length];
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            B D10 = this.f98796b[i12].r().D();
            bArr[i12] = D10;
            i11 += D10.y(true);
        }
        this.f98840e = i11;
        c14503a.m(i11);
        while (i10 < length) {
            g10.z(bArr[i10], true);
            i10++;
        }
    }

    @Override
    public int y(boolean z10) throws IOException {
        return C14503A.i(z10, O());
    }

    public X0(InterfaceC14516g interfaceC14516g) {
        super(interfaceC14516g);
        this.f98840e = -1;
    }

    public X0(C14518h c14518h) {
        super(c14518h, false);
        this.f98840e = -1;
    }

    public X0(boolean z10, InterfaceC14516g[] interfaceC14516gArr) {
        super(z10, interfaceC14516gArr);
        this.f98840e = -1;
    }

    public X0(InterfaceC14516g[] interfaceC14516gArr) {
        super(interfaceC14516gArr, false);
        this.f98840e = -1;
    }

    public X0(InterfaceC14516g[] interfaceC14516gArr, InterfaceC14516g[] interfaceC14516gArr2) {
        super(interfaceC14516gArr, interfaceC14516gArr2);
        this.f98840e = -1;
    }
}
