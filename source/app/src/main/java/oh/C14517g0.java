package oh;

import java.io.IOException;

public class C14517g0 extends E {
    public C14517g0() {
    }

    @Override
    public AbstractC14508c M() {
        return new Y(E());
    }

    @Override
    public AbstractC14524k N() {
        return ((E) D()).N();
    }

    @Override
    public AbstractC14551y O() {
        return new C14509c0(F());
    }

    @Override
    public G P() {
        return new C14523j0(false, R());
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.u(z10, 48, this.f98789b);
    }

    @Override
    public int y(boolean z10) throws IOException {
        int i10 = z10 ? 4 : 3;
        int length = this.f98789b.length;
        for (int i11 = 0; i11 < length; i11++) {
            i10 += this.f98789b[i11].r().y(true);
        }
        return i10;
    }

    public C14517g0(InterfaceC14516g interfaceC14516g) {
        super(interfaceC14516g);
    }

    public C14517g0(C14518h c14518h) {
        super(c14518h);
    }

    public C14517g0(InterfaceC14516g[] interfaceC14516gArr) {
        super(interfaceC14516gArr);
    }
}
