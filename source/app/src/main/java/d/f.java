package D;

import D.e;
import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class f {

    public static final e.a<?> f4502b = new a();

    public final Map<Class<?>, e.a<?>> f4503a = new HashMap();

    public class a implements e.a<Object> {
        @Override
        @NonNull
        public Class<Object> a() {
            throw new UnsupportedOperationException("Not implemented");
        }

        @Override
        @NonNull
        public e<Object> b(@NonNull Object obj) {
            return new b(obj);
        }
    }

    public static final class b implements e<Object> {

        public final Object f4504a;

        public b(@NonNull Object obj) {
            this.f4504a = obj;
        }

        @Override
        @NonNull
        public Object a() {
            return this.f4504a;
        }

        @Override
        public void cleanup() {
        }
    }

    @NonNull
    public synchronized <T> e<T> a(@NonNull T t10) {
        e.a<?> aVar;
        try {
            Y.k.d(t10);
            aVar = this.f4503a.get(t10.getClass());
            if (aVar == null) {
                Iterator<e.a<?>> it = this.f4503a.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    e.a<?> next = it.next();
                    if (next.a().isAssignableFrom(t10.getClass())) {
                        aVar = next;
                        break;
                    }
                }
            }
            if (aVar == null) {
                aVar = f4502b;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return (e<T>) aVar.b(t10);
    }

    public synchronized void b(@NonNull e.a<?> aVar) {
        this.f4503a.put(aVar.a(), aVar);
    }
}
