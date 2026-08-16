package Qk;

import fm.C13257a;
import hi.C13486b;
import java.io.OutputStream;

public class C3012e implements InterfaceC3013f {

    public final InterfaceC3013f f22465a;

    public final OutputStream f22466b;

    public C3012e(InterfaceC3013f interfaceC3013f) {
        this.f22465a = interfaceC3013f;
        this.f22466b = new C13257a(interfaceC3013f.getOutputStream());
    }

    @Override
    public C13486b a() {
        return this.f22465a.a();
    }

    @Override
    public OutputStream getOutputStream() {
        return this.f22466b;
    }

    @Override
    public byte[] getSignature() {
        return this.f22465a.getSignature();
    }

    public C3012e(InterfaceC3013f interfaceC3013f, int i10) {
        this.f22465a = interfaceC3013f;
        this.f22466b = new C13257a(interfaceC3013f.getOutputStream(), i10);
    }
}
