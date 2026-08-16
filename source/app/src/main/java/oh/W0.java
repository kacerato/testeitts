package oh;

import java.io.IOException;

public class W0 implements F {

    public I f98837b;

    public W0(I i10) {
        this.f98837b = i10;
    }

    @Override
    public B c() throws IOException {
        return T0.a(this.f98837b.k());
    }

    @Override
    public B r() {
        try {
            return c();
        } catch (IOException e10) {
            throw new IllegalStateException(e10.getMessage());
        }
    }

    @Override
    public InterfaceC14516g readObject() throws IOException {
        return this.f98837b.j();
    }
}
