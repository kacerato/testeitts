package Y;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.eclipse.jdt.internal.core.JavaElement;

public class j {

    public Class<?> f29681a;

    public Class<?> f29682b;

    public Class<?> f29683c;

    public j() {
    }

    public void a(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
        b(cls, cls2, null);
    }

    public void b(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        this.f29681a = cls;
        this.f29682b = cls2;
        this.f29683c = cls3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        return this.f29681a.equals(jVar.f29681a) && this.f29682b.equals(jVar.f29682b) && m.d(this.f29683c, jVar.f29683c);
    }

    public int hashCode() {
        int hashCode = ((this.f29681a.hashCode() * 31) + this.f29682b.hashCode()) * 31;
        Class<?> cls = this.f29683c;
        return hashCode + (cls != null ? cls.hashCode() : 0);
    }

    public String toString() {
        return "MultiClassKey{first=" + ((Object) this.f29681a) + ", second=" + ((Object) this.f29682b) + JavaElement.JEM_ANNOTATION;
    }

    public j(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
        a(cls, cls2);
    }

    public j(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        b(cls, cls2, cls3);
    }
}
