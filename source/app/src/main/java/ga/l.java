package ga;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Collections;
import java.util.List;

public class l {

    public H f88230a;

    public final List<Object> f88231b;

    public l(H itemType, List<?> items) {
        this.f88230a = itemType == null ? H.DYNAMIC : itemType;
        this.f88231b = items != null ? a(items) : new SteppedArrayList<>();
    }

    public static List<Object> a(List<?> items) {
        return items;
    }

    public static l b(H itemType) {
        return new l(itemType, null);
    }

    public static l g(H itemType, List<?> items) {
        return new l(itemType, items);
    }

    public Object c(int index) {
        if (index < 0 || index >= this.f88231b.size()) {
            return null;
        }
        return this.f88231b.get(index);
    }

    public H d() {
        return this.f88230a;
    }

    public List<Object> e() {
        return Collections.unmodifiableList(this.f88231b);
    }

    public List<Object> f() {
        return this.f88231b;
    }

    public void h(H itemType) {
        if (itemType == null) {
            itemType = H.DYNAMIC;
        }
        this.f88230a = itemType;
    }

    public int i() {
        return this.f88231b.size();
    }
}
