package oh;

import java.io.IOException;

public class Z0 extends M {
    public Z0(int i10, int i11, int i12, InterfaceC14516g interfaceC14516g) {
        super(i10, i11, i12, interfaceC14516g);
    }

    @Override
    public B D() {
        return this;
    }

    @Override
    public E Z(B b10) {
        return new V0(b10);
    }

    @Override
    public M a0(int i10, int i11) {
        return new Z0(this.f98817b, i10, i11, this.f98820e);
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        B D10 = this.f98820e.r().D();
        boolean X10 = X();
        if (z10) {
            int i10 = this.f98818c;
            if (X10 || D10.x()) {
                i10 |= 32;
            }
            c14503a.w(true, i10, this.f98819d);
        }
        if (X10) {
            c14503a.m(D10.y(true));
        }
        D10.v(c14503a.g(), X10);
    }

    @Override
    public boolean x() {
        return X() || this.f98820e.r().D().x();
    }

    @Override
    public int y(boolean z10) throws IOException {
        B D10 = this.f98820e.r().D();
        boolean X10 = X();
        int y10 = D10.y(X10);
        if (X10) {
            y10 += C14503A.h(y10);
        }
        return y10 + (z10 ? C14503A.j(this.f98819d) : 0);
    }

    public Z0(int i10, int i11, InterfaceC14516g interfaceC14516g) {
        super(true, i10, i11, interfaceC14516g);
    }

    public Z0(int i10, InterfaceC14516g interfaceC14516g) {
        super(true, i10, interfaceC14516g);
    }

    public Z0(boolean z10, int i10, int i11, InterfaceC14516g interfaceC14516g) {
        super(z10, i10, i11, interfaceC14516g);
    }

    public Z0(boolean z10, int i10, InterfaceC14516g interfaceC14516g) {
        super(z10, i10, interfaceC14516g);
    }
}
