package T;

import C.k;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

public class f {

    public final List<a<?>> f23805a = new ArrayList();

    public static final class a<T> {

        public final Class<T> f23806a;

        public final k<T> f23807b;

        public a(@NonNull Class<T> cls, @NonNull k<T> kVar) {
            this.f23806a = cls;
            this.f23807b = kVar;
        }

        public boolean a(@NonNull Class<?> cls) {
            return this.f23806a.isAssignableFrom(cls);
        }
    }

    public synchronized <Z> void a(@NonNull Class<Z> cls, @NonNull k<Z> kVar) {
        this.f23805a.add(new a<>(cls, kVar));
    }

    @Nullable
    public synchronized <Z> k<Z> b(@NonNull Class<Z> cls) {
        int size = this.f23805a.size();
        for (int i10 = 0; i10 < size; i10++) {
            a<?> aVar = this.f23805a.get(i10);
            if (aVar.a(cls)) {
                return (k<Z>) aVar.f23807b;
            }
        }
        return null;
    }

    public synchronized <Z> void c(@NonNull Class<Z> cls, @NonNull k<Z> kVar) {
        this.f23805a.add(0, new a<>(cls, kVar));
    }
}
