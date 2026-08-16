package i1;

public final class C13563m0<T> implements InterfaceC13561l0<T> {

    public static final C13563m0<Object> f91338b = new C13563m0<>(null);

    public final T f91339a;

    public C13563m0(T t10) {
        this.f91339a = t10;
    }

    public static <T> InterfaceC13561l0<T> a(T t10) {
        if (t10 != null) {
            return new C13563m0(t10);
        }
        throw new NullPointerException("instance cannot be null");
    }

    @Override
    public final T O1() {
        return this.f91339a;
    }
}
