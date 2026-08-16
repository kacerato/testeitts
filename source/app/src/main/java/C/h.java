package C;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import java.security.MessageDigest;
import org.eclipse.jdt.internal.core.JavaElement;

public final class h implements e {

    public final ArrayMap<g<?>, Object> f1963c = new Y.b();

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void d(@NonNull g<T> gVar, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        gVar.h(obj, messageDigest);
    }

    @Nullable
    public <T> T a(@NonNull g<T> gVar) {
        return this.f1963c.containsKey(gVar) ? (T) this.f1963c.get(gVar) : gVar.d();
    }

    public void b(@NonNull h hVar) {
        this.f1963c.putAll((SimpleArrayMap<? extends g<?>, ? extends Object>) hVar.f1963c);
    }

    @NonNull
    public <T> h c(@NonNull g<T> gVar, @NonNull T t10) {
        this.f1963c.put(gVar, t10);
        return this;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof h) {
            return this.f1963c.equals(((h) obj).f1963c);
        }
        return false;
    }

    @Override
    public int hashCode() {
        return this.f1963c.hashCode();
    }

    public String toString() {
        return "Options{values=" + ((Object) this.f1963c) + JavaElement.JEM_ANNOTATION;
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        for (int i10 = 0; i10 < this.f1963c.size(); i10++) {
            d(this.f1963c.keyAt(i10), this.f1963c.valueAt(i10), messageDigest);
        }
    }
}
