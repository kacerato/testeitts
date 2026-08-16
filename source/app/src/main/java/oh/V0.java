package oh;

import java.io.IOException;

public class V0 extends E {

    public int f98834d;

    public V0() {
        this.f98834d = -1;
    }

    private int S() throws IOException {
        if (this.f98834d < 0) {
            int length = this.f98789b.length;
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                i10 += this.f98789b[i11].r().D().y(true);
            }
            this.f98834d = i10;
        }
        return this.f98834d;
    }

    @Override
    public B D() {
        return this;
    }

    @Override
    public AbstractC14508c M() {
        return new Q0(Y.N(E()), false);
    }

    @Override
    public AbstractC14524k N() {
        return new S0(this);
    }

    @Override
    public AbstractC14551y O() {
        return new C0(C14509c0.K(F()));
    }

    @Override
    public G P() {
        return new X0(false, R());
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.v(z10, 48);
        U0 g10 = c14503a.g();
        int length = this.f98789b.length;
        int i10 = 0;
        if (this.f98834d >= 0 || length > 16) {
            c14503a.m(S());
            while (i10 < length) {
                g10.z(this.f98789b[i10].r(), true);
                i10++;
            }
            return;
        }
        B[] bArr = new B[length];
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            B D10 = this.f98789b[i12].r().D();
            bArr[i12] = D10;
            i11 += D10.y(true);
        }
        this.f98834d = i11;
        c14503a.m(i11);
        while (i10 < length) {
            g10.z(bArr[i10], true);
            i10++;
        }
    }

    @Override
    public int y(boolean z10) throws IOException {
        return C14503A.i(z10, S());
    }

    public V0(InterfaceC14516g interfaceC14516g) {
        super(interfaceC14516g);
        this.f98834d = -1;
    }

    public V0(C14518h c14518h) {
        super(c14518h);
        this.f98834d = -1;
    }

    public V0(InterfaceC14516g[] interfaceC14516gArr) {
        super(interfaceC14516gArr);
        this.f98834d = -1;
    }

    public V0(InterfaceC14516g[] interfaceC14516gArr, boolean z10) {
        super(interfaceC14516gArr, z10);
        this.f98834d = -1;
    }
}
