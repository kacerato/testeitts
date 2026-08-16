package Be;

public final class A<T> {

    public static final A<Object> f1700b = new A<>(null);

    public final Object f1701a;

    public A(Object obj) {
        this.f1701a = obj;
    }

    @Ce.f
    public static <T> A<T> a() {
        return (A<T>) f1700b;
    }

    @Ce.f
    public static <T> A<T> b(@Ce.f Throwable th2) {
        He.b.g(th2, "error is null");
        return new A<>(io.reactivex.internal.util.p.h(th2));
    }

    @Ce.f
    public static <T> A<T> c(@Ce.f T t10) {
        He.b.g(t10, "value is null");
        return new A<>(t10);
    }

    @Ce.g
    public Throwable d() {
        Object obj = this.f1701a;
        if (io.reactivex.internal.util.p.r(obj)) {
            return io.reactivex.internal.util.p.j(obj);
        }
        return null;
    }

    @Ce.g
    public T e() {
        Object obj = this.f1701a;
        if (obj == null || io.reactivex.internal.util.p.r(obj)) {
            return null;
        }
        return (T) this.f1701a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof A) {
            return He.b.c(this.f1701a, ((A) obj).f1701a);
        }
        return false;
    }

    public boolean f() {
        return this.f1701a == null;
    }

    public boolean g() {
        return io.reactivex.internal.util.p.r(this.f1701a);
    }

    public boolean h() {
        Object obj = this.f1701a;
        return (obj == null || io.reactivex.internal.util.p.r(obj)) ? false : true;
    }

    public int hashCode() {
        Object obj = this.f1701a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public String toString() {
        Object obj = this.f1701a;
        if (obj == null) {
            return "OnCompleteNotification";
        }
        if (io.reactivex.internal.util.p.r(obj)) {
            return "OnErrorNotification[" + ((Object) io.reactivex.internal.util.p.j(obj)) + "]";
        }
        return "OnNextNotification[" + this.f1701a + "]";
    }
}
