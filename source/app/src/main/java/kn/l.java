package kn;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.function.ToLongFunction;

public class l {

    public static final int f95580e = 10;

    public float f95581a;

    public float f95582b;

    public final Map<String, Long> f95583c = new HashMap();

    public final Map<String, List<Long>> f95584d = new HashMap();

    public static List d(String str) {
        return new ArrayList();
    }

    public Map<String, Long> c() {
        return this.f95583c;
    }

    public float f() {
        return this.f95581a;
    }

    public float g() {
        return this.f95582b;
    }

    public void h(float time) {
        this.f95581a = Math.max(this.f95581a, time);
    }

    public void i(float time) {
        this.f95582b = Math.max(this.f95582b, time);
    }

    public void j() {
        this.f95581a = 0.0f;
        this.f95582b = 0.0f;
        this.f95583c.clear();
    }

    public void k(String name) {
        this.f95583c.put(name, Long.valueOf(System.nanoTime()));
    }

    public void l(String name) {
        long nanoTime = System.nanoTime() - this.f95583c.get(name).longValue();
        List<Long> computeIfAbsent = this.f95584d.computeIfAbsent(name, new Function() {
            @Override
            public final Object apply(Object obj) {
                List d10;
                d10 = l.d((String) obj);
                return d10;
            }
        });
        if (computeIfAbsent.size() == 10) {
            computeIfAbsent.remove(0);
        }
        computeIfAbsent.add(Long.valueOf(nanoTime));
        this.f95583c.put(name, Long.valueOf((long) computeIfAbsent.stream().mapToLong(new ToLongFunction() {
            @Override
            public final long applyAsLong(Object obj) {
                long longValue;
                longValue = ((Long) obj).longValue();
                return longValue;
            }
        }).average().orElse(0.0d)));
    }
}
