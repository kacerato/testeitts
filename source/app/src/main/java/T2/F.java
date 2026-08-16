package T2;

import androidx.annotation.NonNull;
import java.lang.annotation.Annotation;

public final class F<T> {

    public final Class<? extends Annotation> f23962a;

    public final Class<T> f23963b;

    public @interface a {
    }

    public F(Class<? extends Annotation> cls, Class<T> cls2) {
        this.f23962a = cls;
        this.f23963b = cls2;
    }

    @NonNull
    public static <T> F<T> a(Class<? extends Annotation> cls, Class<T> cls2) {
        return new F<>(cls, cls2);
    }

    @NonNull
    public static <T> F<T> b(Class<T> cls) {
        return new F<>(a.class, cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || F.class != obj.getClass()) {
            return false;
        }
        F f10 = (F) obj;
        if (this.f23963b.equals(f10.f23963b)) {
            return this.f23962a.equals(f10.f23962a);
        }
        return false;
    }

    public int hashCode() {
        return (this.f23963b.hashCode() * 31) + this.f23962a.hashCode();
    }

    public String toString() {
        if (this.f23962a == a.class) {
            return this.f23963b.getName();
        }
        return "@" + this.f23962a.getName() + " " + this.f23963b.getName();
    }
}
