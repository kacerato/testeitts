package A2;

import com.google.common.collect.AbstractC12503c;
import com.google.common.collect.e3;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

@InterfaceC2284t
public abstract class O<E> extends AbstractSet<E> {

    public final Map<E, ?> f180b;

    public final Object f181c;

    public class a extends AbstractC12503c<E> {

        public final Iterator f182d;

        public a(Iterator it) {
            this.f182d = it;
        }

        @Override
        @CheckForNull
        public E a() {
            while (this.f182d.hasNext()) {
                Map.Entry entry = (Map.Entry) this.f182d.next();
                if (O.this.f181c.equals(entry.getValue())) {
                    return (E) entry.getKey();
                }
            }
            return b();
        }
    }

    public O(Map<E, ?> map, Object obj) {
        this.f180b = (Map) w2.H.E(map);
        this.f181c = w2.H.E(obj);
    }

    @Override
    public e3<E> iterator() {
        return new a(this.f180b.entrySet().iterator());
    }

    @Override
    public boolean contains(@CheckForNull Object obj) {
        return this.f181c.equals(this.f180b.get(obj));
    }
}
