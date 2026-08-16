package C;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.security.MessageDigest;
import org.eclipse.jdt.internal.core.JavaElement;

public final class g<T> {

    public static final b<Object> f1958e = new a();

    public final T f1959a;

    public final b<T> f1960b;

    public final String f1961c;

    public volatile byte[] f1962d;

    public class a implements b<Object> {
        @Override
        public void a(@NonNull byte[] bArr, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        }
    }

    public interface b<T> {
        void a(@NonNull byte[] bArr, @NonNull T t10, @NonNull MessageDigest messageDigest);
    }

    public g(@NonNull String str, @Nullable T t10, @NonNull b<T> bVar) {
        this.f1961c = Y.k.b(str);
        this.f1959a = t10;
        this.f1960b = (b) Y.k.d(bVar);
    }

    @NonNull
    public static <T> g<T> a(@NonNull String str, @NonNull b<T> bVar) {
        return new g<>(str, null, bVar);
    }

    @NonNull
    public static <T> g<T> b(@NonNull String str, @Nullable T t10, @NonNull b<T> bVar) {
        return new g<>(str, t10, bVar);
    }

    @NonNull
    public static <T> b<T> c() {
        return (b<T>) f1958e;
    }

    @NonNull
    public static <T> g<T> f(@NonNull String str) {
        return new g<>(str, null, c());
    }

    @NonNull
    public static <T> g<T> g(@NonNull String str, @NonNull T t10) {
        return new g<>(str, t10, c());
    }

    @Nullable
    public T d() {
        return this.f1959a;
    }

    @NonNull
    public final byte[] e() {
        if (this.f1962d == null) {
            this.f1962d = this.f1961c.getBytes(e.f1956b);
        }
        return this.f1962d;
    }

    public boolean equals(Object obj) {
        if (obj instanceof g) {
            return this.f1961c.equals(((g) obj).f1961c);
        }
        return false;
    }

    public void h(@NonNull T t10, @NonNull MessageDigest messageDigest) {
        this.f1960b.a(e(), t10, messageDigest);
    }

    public int hashCode() {
        return this.f1961c.hashCode();
    }

    public String toString() {
        return "Option{key='" + this.f1961c + JavaElement.JEM_MODULAR_CLASSFILE + JavaElement.JEM_ANNOTATION;
    }
}
