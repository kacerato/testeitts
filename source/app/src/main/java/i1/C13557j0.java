package i1;

public final class C13557j0<T> implements InterfaceC13561l0<T> {

    public p0<T> f91315a;

    public static <T> void a(p0<T> p0Var, p0<T> p0Var2) {
        C13557j0 c13557j0 = (C13557j0) p0Var;
        if (c13557j0.f91315a != null) {
            throw new IllegalStateException();
        }
        c13557j0.f91315a = p0Var2;
    }

    @Override
    public final T O1() {
        p0<T> p0Var = this.f91315a;
        if (p0Var != null) {
            return p0Var.O1();
        }
        throw new IllegalStateException();
    }
}
