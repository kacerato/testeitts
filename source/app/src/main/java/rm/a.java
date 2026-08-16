package Rm;

import Um.v;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class a {

    public final Map<Class<? extends v>, Ym.a> f22961a = new HashMap(32);

    public void a(Ym.a aVar) {
        Iterator<Class<? extends v>> it = aVar.E().iterator();
        while (it.hasNext()) {
            this.f22961a.put(it.next(), aVar);
        }
    }

    public void b(v vVar) {
        Ym.a aVar = this.f22961a.get(vVar.getClass());
        if (aVar != null) {
            aVar.a(vVar);
        }
    }
}
