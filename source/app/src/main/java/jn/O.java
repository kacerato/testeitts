package jn;

public class O<T> {

    public final T f94204a;

    public final Q f94205b;

    public final String f94206c;

    public O(T result, Q status, String message) {
        this.f94204a = result;
        this.f94205b = status;
        this.f94206c = message;
    }

    public static <T> O<T> b() {
        return new O<>(null, Q.FAILURE, null);
    }

    public static <T> O<T> c(T result) {
        return new O<>(result, Q.FAILURE, null);
    }

    public static <T> O<T> d(String message) {
        return new O<>(null, Q.FAILURE, message);
    }

    public static <T> O<T> e() {
        return new O<>(null, Q.FAILURE_INVALID_PARAM, null);
    }

    public static <T> O<T> f(String message) {
        return new O<>(null, Q.FAILURE_INVALID_PARAM, message);
    }

    public static <T> O<T> g(Q status, T result) {
        return new O<>(result, status, null);
    }

    public static <T> O<T> h(Q status, String message) {
        return new O<>(null, status, message);
    }

    public static <T> O<T> i(T result) {
        return new O<>(null, Q.PARTIAL_RESULT, null);
    }

    public static <T> O<T> k(T result) {
        return new O<>(result, Q.SUCCSESS, null);
    }

    public boolean a() {
        return this.f94205b.b();
    }

    public boolean j() {
        return this.f94205b.e();
    }
}
