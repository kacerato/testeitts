package oh;

import java.io.IOException;

public class a1 extends C14529m0 {

    public final boolean f98850e;

    public a1(int i10, int i11, boolean z10, I i12) {
        super(i10, i11, i12);
        this.f98850e = z10;
    }

    @Override
    public InterfaceC14516g b() throws IOException {
        return e().j();
    }

    @Override
    public B c() throws IOException {
        return this.f98913d.b(this.f98911b, this.f98912c, this.f98850e);
    }

    @Override
    public InterfaceC14516g d(boolean z10, int i10) throws IOException {
        return z10 ? e().h(i10) : this.f98850e ? this.f98913d.d(i10) : this.f98913d.f(i10);
    }

    public final I e() throws IOException {
        if (this.f98850e) {
            return this.f98913d;
        }
        throw new IOException("Explicit tags must be constructed (see X.690 8.14.2)");
    }

    @Override
    public N h(int i10, int i11) throws IOException {
        return new a1(i10, i11, this.f98850e, this.f98913d);
    }

    @Override
    public N j() throws IOException {
        return e().i();
    }
}
