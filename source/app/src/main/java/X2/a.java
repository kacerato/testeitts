package X2;

import T2.E;

public class a<T> {

    public final Class<T> f27917a;

    public final T f27918b;

    public a(Class<T> cls, T t10) {
        this.f27917a = (Class) E.b(cls);
        this.f27918b = (T) E.b(t10);
    }

    public T a() {
        return this.f27918b;
    }

    public Class<T> b() {
        return this.f27917a;
    }

    public String toString() {
        return String.format("Event{type: %s, payload: %s}", this.f27917a, this.f27918b);
    }
}
