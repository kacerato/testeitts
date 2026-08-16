package oh;

import java.io.IOException;

public class G0 extends E {

    public int f98803d;

    public G0() {
        this.f98803d = -1;
    }

    public static G0 S(E e10) {
        return (G0) e10.C();
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
    public AbstractC14508c M() {
        return new C14538r0(Y.N(E()), false);
    }

    @Override
    public AbstractC14524k N() {
        return new C14540s0(this);
    }

    @Override
    public AbstractC14551y O() {
        return new C0(C14509c0.K(F()));
    }

    @Override
    public G P() {
        return new X0(false, R());
    }

    public final int T() throws IOException {
        if (this.f98803d < 0) {
            int length = this.f98789b.length;
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                i10 += this.f98789b[i11].r().C().y(true);
            }
            this.f98803d = i10;
        }
        return this.f98803d;
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        c14503a.v(z10, 48);
        E0 f10 = c14503a.f();
        int length = this.f98789b.length;
        int i10 = 0;
        if (this.f98803d >= 0 || length > 16) {
            c14503a.m(T());
            while (i10 < length) {
                this.f98789b[i10].r().C().v(f10, true);
                i10++;
            }
            return;
        }
        B[] bArr = new B[length];
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            B C10 = this.f98789b[i12].r().C();
            bArr[i12] = C10;
            i11 += C10.y(true);
        }
        this.f98803d = i11;
        c14503a.m(i11);
        while (i10 < length) {
            bArr[i10].v(f10, true);
            i10++;
        }
    }

    @Override
    public int y(boolean z10) throws IOException {
        return C14503A.i(z10, T());
    }

    public G0(InterfaceC14516g interfaceC14516g) {
        super(interfaceC14516g);
        this.f98803d = -1;
    }

    public G0(C14518h c14518h) {
        super(c14518h);
        this.f98803d = -1;
    }

    public G0(InterfaceC14516g[] interfaceC14516gArr) {
        super(interfaceC14516gArr);
        this.f98803d = -1;
    }

    public G0(InterfaceC14516g[] interfaceC14516gArr, boolean z10) {
        super(interfaceC14516gArr, z10);
        this.f98803d = -1;
    }
}
