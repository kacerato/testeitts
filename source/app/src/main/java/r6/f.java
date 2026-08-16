package r6;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;

public class f {

    public String f108689a;

    public int f108690b;

    public int f108693e;

    public int f108694f;

    public final Map<String, f> f108691c = new HashMap(100);

    public final Map<Class, Integer> f108692d = new HashMap(100);

    public boolean f108695g = false;

    public long f108696h = 0;

    public final long[] f108697i = new long[1];

    public final BiConsumer f108698j = new c();

    public final BiConsumer<String, f> f108699k = new d();

    public class a implements BiConsumer<Class, Integer> {

        public final StringBuilder f108700a;

        public final String f108701b;

        public a(final StringBuilder val$builder, final String val$tab) {
            this.f108700a = val$builder;
            this.f108701b = val$tab;
        }

        @Override
        public void accept(Class aClass, Integer integer) {
            this.f108700a.append(this.f108701b);
            this.f108700a.append("[ALLOC]");
            this.f108700a.append(aClass.getSimpleName());
            this.f108700a.append(" [");
            this.f108700a.append((Object) integer);
            this.f108700a.append("]");
            this.f108700a.append("\n");
        }
    }

    public class b implements BiConsumer<String, f> {

        public final StringBuilder f108703a;

        public final String f108704b;

        public b(final StringBuilder val$builder, final String val$tab) {
            this.f108703a = val$builder;
            this.f108704b = val$tab;
        }

        @Override
        public void accept(String s10, f stack) {
            stack.b(this.f108703a, this.f108704b + "-");
        }
    }

    public class c implements BiConsumer<String, f> {
        public c() {
        }

        @Override
        public void accept(String String, f stack) {
            long[] jArr = f.this.f108697i;
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
        this.f108690b = 0;
        this.f108689a = stackPath;
        this.f108690b = depth;
    }

    public long a() {
        this.f108697i[0] = this.f108696h;
        try {
            this.f108691c.forEach(this.f108698j);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return this.f108697i[0];
    }

    public void b(StringBuilder builder, String tab) {
        builder.append(tab);
        builder.append(this.f108689a);
        builder.append(" [");
        builder.append(d());
        builder.append("]");
        builder.append("\n");
        try {
            this.f108692d.forEach(new a(builder, tab));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            this.f108691c.forEach(new b(builder, tab));
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public Map<Class, Integer> c() {
        return this.f108692d;
    }

    public int d() {
        return this.f108693e;
    }

    public int e() {
        return this.f108690b;
    }

    public long f() {
        return this.f108696h;
    }

    public int g() {
        return this.f108694f;
    }

    public Map<String, f> h() {
        return this.f108691c;
    }

    public String i() {
        return this.f108689a;
    }

    public boolean j() {
        return this.f108695g;
    }

    public void k(Object obj, List<String> callStack, int listIndex, long beforeNotifyUsedBytes) {
        this.f108694f++;
        if (callStack.size() > listIndex) {
            String str = callStack.get(listIndex);
            f fVar = this.f108691c.get(str);
            if (fVar == null) {
                fVar = h.b(str, this.f108690b + 1);
                this.f108691c.put(str, fVar);
            }
            fVar.k(obj, callStack, listIndex + 1, beforeNotifyUsedBytes);
            return;
        }
        Integer num = this.f108692d.get(obj.getClass());
        if (num == null) {
            num = 0;
        }
        this.f108692d.put(obj.getClass(), Integer.valueOf(num.intValue() + 1));
        this.f108693e++;
        Runtime runtime = Runtime.getRuntime();
        this.f108696h += (runtime.totalMemory() - runtime.freeMemory()) - beforeNotifyUsedBytes;
    }

    public void l() {
        this.f108692d.clear();
        try {
            this.f108691c.forEach(this.f108699k);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void m(String stackPath, int depth) {
        this.f108689a = stackPath;
        this.f108690b = depth;
        this.f108696h = 0L;
        this.f108691c.clear();
        this.f108692d.clear();
    }

    public void n(boolean UIOpen) {
        this.f108695g = UIOpen;
    }
}
