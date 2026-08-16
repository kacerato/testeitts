package w2;

import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import javax.annotation.CheckForNull;

@InterfaceC15894k
@v2.b(emulated = true)
public final class C15895l {

    @v2.c
    public static final Map<Class<? extends Enum<?>>, Map<String, WeakReference<? extends Enum<?>>>> f126342a = new WeakHashMap();

    public static final class a<T extends Enum<T>> extends AbstractC15892i<String, T> implements Serializable {

        public static final long f126343e = 0;

        public final Class<T> f126344d;

        public a(Class<T> cls) {
            this.f126344d = (Class) H.E(cls);
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof a) {
                return this.f126344d.equals(((a) obj).f126344d);
            }
            return false;
        }

        public int hashCode() {
            return this.f126344d.hashCode();
        }

        @Override
        public String g(T t10) {
            return t10.name();
        }

        @Override
        public T i(String str) {
            return (T) Enum.valueOf(this.f126344d, str);
        }

        public String toString() {
            String name = this.f126344d.getName();
            StringBuilder sb2 = new StringBuilder(name.length() + 29);
            sb2.append("Enums.stringConverter(");
            sb2.append(name);
            sb2.append(".class)");
            return sb2.toString();
        }
    }

    @v2.c
    public static <T extends Enum<T>> Map<String, WeakReference<? extends Enum<?>>> a(Class<T> cls) {
        Map<String, WeakReference<? extends Enum<?>>> map;
        Map<Class<? extends Enum<?>>, Map<String, WeakReference<? extends Enum<?>>>> map2 = f126342a;
        synchronized (map2) {
            try {
                map = map2.get(cls);
                if (map == null) {
                    map = d(cls);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return map;
    }

    @v2.c
    public static Field b(Enum<?> r12) {
        try {
            return r12.getDeclaringClass().getDeclaredField(r12.name());
        } catch (NoSuchFieldException e10) {
            throw new AssertionError(e10);
        }
    }

    public static <T extends Enum<T>> C<T> c(Class<T> cls, String str) {
        H.E(cls);
        H.E(str);
        return G.e(cls, str);
    }

    @v2.c
    public static <T extends Enum<T>> Map<String, WeakReference<? extends Enum<?>>> d(Class<T> cls) {
        HashMap hashMap = new HashMap();
        Iterator<E> it = EnumSet.allOf(cls).iterator();
        while (it.hasNext()) {
            Enum r22 = (Enum) it.next();
            hashMap.put(r22.name(), new WeakReference(r22));
        }
        f126342a.put(cls, hashMap);
        return hashMap;
    }

    public static <T extends Enum<T>> AbstractC15892i<String, T> e(Class<T> cls) {
        return new a(cls);
    }
}
