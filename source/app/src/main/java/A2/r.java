package A2;

import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.E1;
import com.google.common.collect.e3;
import java.util.AbstractSet;
import java.util.Map;
import javax.annotation.CheckForNull;

@InterfaceC2284t
public final class r<E> extends AbstractSet<E> {

    public final Map<?, E> f274b;

    public final Object f275c;

    public r(Map<?, E> map, Object obj) {
        this.f274b = (Map) w2.H.E(map);
        this.f275c = w2.H.E(obj);
    }

    @CheckForNull
    public final E a() {
        return this.f274b.get(this.f275c);
    }

    @Override
    public e3<E> iterator() {
        E a10 = a();
        return a10 == null ? AbstractC12564r1.z().iterator() : E1.Y(a10);
    }

    @Override
    public boolean contains(@CheckForNull Object obj) {
        E a10 = a();
        return a10 != null && a10.equals(obj);
    }

    @Override
    public int size() {
        return a() == null ? 0 : 1;
    }
}
