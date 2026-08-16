package qd;

public final class C15059b<T> implements InterfaceC15066i<T>, t {

    public final InterfaceC15066i<T>[] f106088a;

    public C15059b(InterfaceC15066i<T>... interfaceC15066iArr) {
        this.f106088a = interfaceC15066iArr;
    }

    @Override
    public void b(T t10, long j10, boolean z10) throws Exception {
        for (InterfaceC15066i<T> interfaceC15066i : this.f106088a) {
            interfaceC15066i.b(t10, j10, z10);
        }
    }

    @Override
    public void c() {
        for (InterfaceC15066i<T> interfaceC15066i : this.f106088a) {
            if (interfaceC15066i instanceof t) {
                ((t) interfaceC15066i).c();
            }
        }
    }

    @Override
    public void onStart() {
        for (InterfaceC15066i<T> interfaceC15066i : this.f106088a) {
            if (interfaceC15066i instanceof t) {
                ((t) interfaceC15066i).onStart();
            }
        }
    }
}
