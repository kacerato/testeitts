package oh;

import java.io.IOException;

public class C14523j0 extends G {
    public C14523j0() {
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.u(z10, 49, this.f98796b);
    }

    @Override
    public int y(boolean z10) throws IOException {
        int i10 = z10 ? 4 : 3;
        int length = this.f98796b.length;
        for (int i11 = 0; i11 < length; i11++) {
            i10 += this.f98796b[i11].r().y(true);
        }
        return i10;
    }

    public C14523j0(InterfaceC14516g interfaceC14516g) {
        super(interfaceC14516g);
    }

    public C14523j0(C14518h c14518h) {
        super(c14518h, false);
    }

    public C14523j0(boolean z10, InterfaceC14516g[] interfaceC14516gArr) {
        super(z10, interfaceC14516gArr);
    }

    public C14523j0(InterfaceC14516g[] interfaceC14516gArr) {
        super(interfaceC14516gArr, false);
    }
}
