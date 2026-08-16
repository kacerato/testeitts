package oh;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class H0 extends AbstractC14550x0 {

    public final ByteArrayOutputStream f98804e;

    public H0(OutputStream outputStream) throws IOException {
        super(outputStream);
        this.f98804e = new ByteArrayOutputStream();
    }

    @Override
    public OutputStream a() {
        return this.f98804e;
    }

    public void e(InterfaceC14516g interfaceC14516g) throws IOException {
        interfaceC14516g.r().f(this.f98804e, InterfaceC14520i.f98892a);
    }

    public void f(B b10) throws IOException {
        b10.f(this.f98804e, InterfaceC14520i.f98892a);
    }

    public void g() throws IOException {
        b(48, this.f98804e.toByteArray());
    }

    public H0(OutputStream outputStream, int i10, boolean z10) throws IOException {
        super(outputStream, i10, z10);
        this.f98804e = new ByteArrayOutputStream();
    }
}
