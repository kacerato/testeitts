package I;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class c {

    public final Map<d, Integer> f8664a;

    public final List<d> f8665b;

    public int f8666c;

    public int f8667d;

    public c(Map<d, Integer> map) {
        this.f8664a = map;
        this.f8665b = new ArrayList(map.o());
        Iterator<Integer> it = map.values().iterator();
        while (it.hasNext()) {
            this.f8666c += it.next().intValue();
        }
    }

    public int a() {
        return this.f8666c;
    }

    public boolean b() {
        return this.f8666c == 0;
    }

    public d c() {
        d dVar = this.f8665b.get(this.f8667d);
        Integer num = this.f8664a.get(dVar);
        if (num.intValue() == 1) {
            this.f8664a.remove(dVar);
            this.f8665b.remove(this.f8667d);
        } else {
            this.f8664a.put(dVar, Integer.valueOf(num.intValue() - 1));
        }
        this.f8666c--;
        this.f8667d = this.f8665b.isEmpty() ? 0 : (this.f8667d + 1) % this.f8665b.size();
        return dVar;
    }
}
