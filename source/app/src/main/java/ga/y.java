package ga;

import aa.C3595c;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import java.lang.reflect.Constructor;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.function.Function;

public final class y {

    public static final Map<Class<?>, j<?>> f88242e = new HashMap();

    public static final Map<Class<?>, i<?>> f88243f = new HashMap();

    public final Map<Class<?>, ArrayDeque<Object>> f88244a = new HashMap();

    public final Map<Class<?>, ArrayDeque<Object>> f88245b = new HashMap();

    public final IdentityHashMap<Object, Class<?>> f88246c = new IdentityHashMap<>();

    public final Function f88247d = new h();

    public class a implements i<Vector2> {
        @Override
        public void a(Vector2 value) {
            value.v0(0.0f);
        }
    }

    public class b implements i<Vector3> {
        @Override
        public void a(Vector3 value) {
            value.set(0.0f);
        }
    }

    public class c implements i<Vector4> {
        @Override
        public void a(Vector4 value) {
            value.i(0.0f);
        }
    }

    public class d implements i<Quaternion> {
        @Override
        public void a(Quaternion value) {
            value.t0(1.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    public class e implements i<ColorINT> {
        @Override
        public void a(ColorINT value) {
            value.W();
        }
    }

    public class f implements i<aa.d> {
        @Override
        public void a(aa.d value) {
            value.f31957b.set(0.0f);
            value.f31958c.set(0.0f, 0.0f, 1.0f);
        }
    }

    public class g implements i<C3595c> {
        @Override
        public void a(C3595c value) {
            aa.d dVar = value.f31953b;
            if (dVar == null) {
                value.f31953b = new aa.d();
            } else {
                dVar.f31957b.set(0.0f);
                value.f31953b.f31958c.set(0.0f, 0.0f, 1.0f);
            }
            value.f31954c = 0.0f;
            value.f31955d = null;
        }
    }

    public class h implements Function<Class<?>, ArrayDeque<Object>> {
        public h() {
        }

        @Override
        public ArrayDeque<Object> apply(Class<?> ignored) {
            return new ArrayDeque<>();
        }
    }

    public interface i<T> {
        void a(T value);
    }

    public interface j<T> {
        T a();
    }

    static {
        f(Vector2.class, new j() {
            @Override
            public final Object a() {
                return new Vector2();
            }
        }, new a());
        f(Vector3.class, new j() {
            @Override
            public final Object a() {
                return new Vector3();
            }
        }, new b());
        f(Vector4.class, new j() {
            @Override
            public final Object a() {
                return new Vector4();
            }
        }, new c());
        f(Quaternion.class, new j() {
            @Override
            public final Object a() {
                return new Quaternion();
            }
        }, new d());
        f(ColorINT.class, new j() {
            @Override
            public final Object a() {
                return new ColorINT();
            }
        }, new e());
        f(aa.d.class, new j() {
            @Override
            public final Object a() {
                return new aa.d();
            }
        }, new f());
        f(C3595c.class, new j() {
            @Override
            public final Object a() {
                return new C3595c();
            }
        }, new g());
    }

    public static i<Object> b(Class<?> cls) {
        return f88243f.get(cls);
    }

    public static <T> T c(Class<T> cls) {
        try {
            j<?> jVar = f88242e.get(cls);
            if (jVar != null) {
                return cls.cast(jVar.a());
            }
            Constructor<T> declaredConstructor = cls.getDeclaredConstructor(null);
            declaredConstructor.setAccessible(true);
            return declaredConstructor.newInstance(null);
        } catch (Exception e10) {
            throw new RuntimeException("Failed to instantiate pooled type " + ((Object) cls), e10);
        }
    }

    public static <T> void f(Class<T> cls, j<? extends T> factory, i<? super T> cleaner) {
        f88242e.put(cls, factory);
        f88243f.put(cls, cleaner);
    }

    public static void h(ArrayDeque<Object> values, Object target) {
        if (values == null || target == null || values.isEmpty()) {
            return;
        }
        ArrayDeque arrayDeque = new ArrayDeque(values.size());
        boolean z10 = false;
        while (!values.isEmpty()) {
            Object pollFirst = values.pollFirst();
            if (z10 || pollFirst != target) {
                arrayDeque.addLast(pollFirst);
            } else {
                z10 = true;
            }
        }
        values.addAll(arrayDeque);
    }

    public <T> T a(Class<T> cls) {
        if (cls == null) {
            return null;
        }
        ArrayDeque<Object> arrayDeque = this.f88244a.get(cls);
        Object pollFirst = arrayDeque != null ? arrayDeque.pollFirst() : null;
        if (pollFirst == null) {
            pollFirst = c(cls);
        } else {
            i<Object> b10 = b(cls);
            if (b10 != null) {
                b10.a(pollFirst);
            }
        }
        this.f88245b.computeIfAbsent(cls, this.f88247d).addLast(pollFirst);
        this.f88246c.put(pollFirst, cls);
        return cls.cast(pollFirst);
    }

    public boolean d(Object value) {
        return value != null && this.f88246c.containsKey(value);
    }

    public void e() {
        if (this.f88245b.isEmpty()) {
            return;
        }
        for (Map.Entry<Class<?>, ArrayDeque<Object>> entry : this.f88245b.entrySet()) {
            this.f88244a.computeIfAbsent(entry.getKey(), this.f88247d).addAll(entry.getValue());
        }
        this.f88245b.clear();
        this.f88246c.clear();
    }

    public void g(Object value) {
        Class<?> remove;
        if (value == null || (remove = this.f88246c.remove(value)) == null) {
            return;
        }
        ArrayDeque<Object> arrayDeque = this.f88245b.get(remove);
        if (arrayDeque != null) {
            h(arrayDeque, value);
            if (arrayDeque.isEmpty()) {
                this.f88245b.remove(remove);
            }
        }
        this.f88244a.computeIfAbsent(remove, this.f88247d).addLast(value);
    }
}
