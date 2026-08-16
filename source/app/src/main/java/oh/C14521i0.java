package oh;

import java.io.IOException;

public class C14521i0 implements F {

    public I f98895b;

    public C14521i0(I i10) {
        this.f98895b = i10;
    }

    public static C14517g0 e(I i10) throws IOException {
        return new C14517g0(i10.k());
    }

    @Override
    public B c() throws IOException {
        return e(this.f98895b);
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
        return this.f98895b.j();
    }
}
