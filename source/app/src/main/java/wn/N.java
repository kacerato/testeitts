package wn;

import com.android.tools.r8.internal.C6176Wz0;
import eg.C13143u0;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.BiConsumer;
import java.util.function.Function;

public class N {

    public ThreadLocal<Map<String, AtomicLong>> f127662a;

    public final Map<String, AtomicLong> f127663b = new ConcurrentHashMap();

    public class a extends ThreadLocal<Map<String, AtomicLong>> {
        public a() {
        }

        @Override
        public Map<String, AtomicLong> initialValue() {
            return new HashMap();
        }
    }

    public N() {
        this.f127662a = null;
        this.f127662a = ThreadLocal.withInitial(new C6176Wz0());
    }

    public static void c(String str, AtomicLong atomicLong) {
        System.out.println(str + ": " + (atomicLong.get() / C13143u0.f85788e));
    }

    public static AtomicLong d(String str) {
        return new AtomicLong();
    }

    public void e() {
        this.f127663b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                N.c((String) obj, (AtomicLong) obj2);
            }
        });
    }

    public void f(String name) {
        this.f127662a.get().put(name, new AtomicLong(System.nanoTime()));
    }

    public void g(String name) {
        this.f127663b.computeIfAbsent(name, new Function() {
            @Override
            public final Object apply(Object obj) {
                AtomicLong d10;
                d10 = N.d((String) obj);
                return d10;
            }
        }).addAndGet(System.nanoTime() - this.f127662a.get().get(name).get());
    }

    public void h(String string) {
        System.err.println(string);
    }
}
