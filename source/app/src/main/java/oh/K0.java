package oh;

import java.io.IOException;

public class K0 extends M {
    public K0(int i10, int i11, int i12, InterfaceC14516g interfaceC14516g) {
        super(i10, i11, i12, interfaceC14516g);
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
    public E Z(B b10) {
        return new G0(b10);
    }

    @Override
    public M a0(int i10, int i11) {
        return new K0(this.f98817b, i10, i11, this.f98820e);
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        B C10 = this.f98820e.r().C();
        boolean X10 = X();
        if (z10) {
            int i10 = this.f98818c;
            if (X10 || C10.x()) {
                i10 |= 32;
            }
            c14503a.w(true, i10, this.f98819d);
        }
        if (X10) {
            c14503a.m(C10.y(true));
        }
        C10.v(c14503a.f(), X10);
    }

    @Override
    public boolean x() {
        return X() || this.f98820e.r().C().x();
    }

    @Override
    public int y(boolean z10) throws IOException {
        B C10 = this.f98820e.r().C();
        boolean X10 = X();
        int y10 = C10.y(X10);
        if (X10) {
            y10 += C14503A.h(y10);
        }
        return y10 + (z10 ? C14503A.j(this.f98819d) : 0);
    }

    public K0(int i10, int i11, InterfaceC14516g interfaceC14516g) {
        super(true, i10, i11, interfaceC14516g);
    }

    public K0(int i10, InterfaceC14516g interfaceC14516g) {
        super(true, i10, interfaceC14516g);
    }

    public K0(boolean z10, int i10, int i11, InterfaceC14516g interfaceC14516g) {
        super(z10, i10, i11, interfaceC14516g);
    }

    public K0(boolean z10, int i10, InterfaceC14516g interfaceC14516g) {
        super(z10, i10, interfaceC14516g);
    }
}
