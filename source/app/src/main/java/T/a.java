package T;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

public class a {

    public final List<C0567a<?>> f23791a = new ArrayList();

    public static final class C0567a<T> {

        public final Class<T> f23792a;

        public final C.d<T> f23793b;

        public C0567a(@NonNull Class<T> cls, @NonNull C.d<T> dVar) {
            this.f23792a = cls;
            this.f23793b = dVar;
        }

        public boolean a(@NonNull Class<?> cls) {
            return this.f23792a.isAssignableFrom(cls);
        }
    }

    public synchronized <T> void a(@NonNull Class<T> cls, @NonNull C.d<T> dVar) {
        this.f23791a.add(new C0567a<>(cls, dVar));
    }

    @Nullable
    public synchronized <T> C.d<T> b(@NonNull Class<T> cls) {
        for (C0567a<?> c0567a : this.f23791a) {
            if (c0567a.a(cls)) {
                return (C.d<T>) c0567a.f23793b;
            }
        }
        return null;
    }

    public synchronized <T> void c(@NonNull Class<T> cls, @NonNull C.d<T> dVar) {
        this.f23791a.add(0, new C0567a<>(cls, dVar));
    }
}
