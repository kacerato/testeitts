package s6;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;

public class f {

    public String f109240a;

    public int f109241b;

    public int f109244e;

    public int f109245f;

    public final Map<String, f> f109242c = new HashMap(100);

    public final Map<Class, Integer> f109243d = new HashMap(100);

    public boolean f109246g = false;

    public long f109247h = 0;

    public final long[] f109248i = new long[1];

    public final BiConsumer f109249j = new c();

    public final BiConsumer<String, f> f109250k = new d();

    public class a implements BiConsumer<Class, Integer> {

        public final StringBuilder f109251a;

        public final String f109252b;

        public a(final StringBuilder val$builder, final String val$tab) {
            this.f109251a = val$builder;
            this.f109252b = val$tab;
        }

        @Override
        public void accept(Class aClass, Integer integer) {
            this.f109251a.append(this.f109252b);
            this.f109251a.append("[ALLOC]");
            this.f109251a.append(aClass.getSimpleName());
            this.f109251a.append(" [");
            this.f109251a.append((Object) integer);
            this.f109251a.append("]");
            this.f109251a.append("\n");
        }
    }

    public class b implements BiConsumer<String, f> {

        public final StringBuilder f109254a;

        public final String f109255b;

        public b(final StringBuilder val$builder, final String val$tab) {
            this.f109254a = val$builder;
            this.f109255b = val$tab;
        }

        @Override
        public void accept(String s10, f stack) {
            stack.b(this.f109254a, this.f109255b + "-");
        }
    }

    public class c implements BiConsumer<String, f> {
        public c() {
        }

        @Override
        public void accept(String String, f stack) {
            long[] jArr = f.this.f109248i;
            jArr[0] = jArr[0] + stack.a();
        }
    }

    public class d implements BiConsumer<String, f> {
        public d() {
        }

        @Override
        public void accept(String s10, f stack) {
            stack.l();
        }
    }

    public f(String stackPath, int depth) {
        this.f109241b = 0;
        this.f109240a = stackPath;
        this.f109241b = depth;
    }

    public long a() {
        this.f109248i[0] = this.f109247h;
        try {
            this.f109242c.forEach(this.f109249j);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return this.f109248i[0];
    }

    public void b(StringBuilder builder, String tab) {
        builder.append(tab);
        builder.append(this.f109240a);
        builder.append(" [");
        builder.append(d());
        builder.append("]");
        builder.append("\n");
        try {
            this.f109243d.forEach(new a(builder, tab));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            this.f109242c.forEach(new b(builder, tab));
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public Map<Class, Integer> c() {
        return this.f109243d;
    }

    public int d() {
        return this.f109244e;
    }

    public int e() {
        return this.f109241b;
    }

    public long f() {
        return this.f109247h;
    }

    public int g() {
        return this.f109245f;
    }

    public Map<String, f> h() {
        return this.f109242c;
    }

    public String i() {
        return this.f109240a;
    }

    public boolean j() {
        return this.f109246g;
    }

    public void k(Object obj, List<String> callStack, int listIndex, long beforeNotifyUsedBytes) {
        this.f109245f++;
        if (callStack.size() > listIndex) {
            String str = callStack.get(listIndex);
            f fVar = this.f109242c.get(str);
            if (fVar == null) {
                fVar = h.b(str, this.f109241b + 1);
                this.f109242c.put(str, fVar);
            }
            fVar.k(obj, callStack, listIndex + 1, beforeNotifyUsedBytes);
            return;
        }
        Integer num = this.f109243d.get(obj.getClass());
        if (num == null) {
            num = 0;
        }
        this.f109243d.put(obj.getClass(), Integer.valueOf(num.intValue() + 1));
        this.f109244e++;
        Runtime runtime = Runtime.getRuntime();
        this.f109247h += (runtime.totalMemory() - runtime.freeMemory()) - beforeNotifyUsedBytes;
    }

    public void l() {
        this.f109243d.clear();
        try {
            this.f109242c.forEach(this.f109250k);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void m(String stackPath, int depth) {
        this.f109240a = stackPath;
        this.f109241b = depth;
        this.f109247h = 0L;
        this.f109242c.clear();
        this.f109243d.clear();
    }

    public void n(boolean UIOpen) {
        this.f109246g = UIOpen;
    }
}
