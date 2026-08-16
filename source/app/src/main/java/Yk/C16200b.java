package yk;

import yk.C16204f;

public class C16200b implements InterfaceC16202d {

    public final C16204f.b f130416a;

    public C16201c f130417b;

    public C16200b(C16204f.b bVar) {
        this.f130416a = bVar;
    }

    @Override
    public C16201c build() {
        C16201c c16201c;
        synchronized (this) {
            try {
                if (this.f130417b == null) {
                    this.f130417b = this.f130416a.f();
                }
                c16201c = this.f130417b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return c16201c;
    }
}
