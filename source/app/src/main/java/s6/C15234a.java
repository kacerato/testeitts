package s6;

import com.itsmagic.engine.Engines.Engine.GC.SGC;
import java.util.HashMap;
import java.util.Map;

public class C15234a {

    public final long f109190a;

    public final Map<String, Integer> f109191b = new HashMap();

    public int f109192c;

    public C15234a(long frameID) {
        this.f109190a = frameID;
    }

    public void a() {
        SGC.captureConcreteCountByTypeSimpleName(this.f109191b);
        int i10 = 0;
        for (Integer num : this.f109191b.values()) {
            if (num != null) {
                i10 += num.intValue();
            }
        }
        this.f109192c = i10;
    }

    public long b() {
        return this.f109190a;
    }

    public Map<String, Integer> c() {
        return this.f109191b;
    }

    public int d() {
        return this.f109192c;
    }

    public void e() {
        this.f109191b.clear();
    }
}
