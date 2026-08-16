package Ic;

public class N<T> {

    public final Object f9082a = new Object();

    public T f9083b;

    public interface a<T> {
        boolean a(T value);
    }

    public N() {
    }

    public boolean a(a<T> comparator, T newValue) {
        comparator.getClass();
        synchronized (this.f9082a) {
            try {
                if (!comparator.a(this.f9083b)) {
                    return false;
                }
                this.f9083b = newValue;
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public T b() {
        T t10;
        synchronized (this.f9082a) {
            t10 = this.f9083b;
        }
        return t10;
    }

    public boolean c(T newValue) {
        synchronized (this.f9082a) {
            try {
                if (this.f9083b == null) {
                    return false;
                }
                this.f9083b = newValue;
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean d(T newValue) {
        synchronized (this.f9082a) {
            try {
                if (this.f9083b != null) {
                    return false;
                }
                this.f9083b = newValue;
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e(T value) {
        synchronized (this.f9082a) {
            this.f9083b = value;
        }
    }

    public N(T value) {
        this.f9083b = value;
    }
}
