package qf;

import java.util.Map;
import java.util.Map.Entry;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import pf.AbstractC14978j;

public abstract class AbstractC15098a<E extends Map.Entry<? extends K, ? extends V>, K, V> extends AbstractC14978j<E> {
    public final boolean b(@NotNull E element) {
        M.p(element, "element");
        return c(element);
    }

    public abstract boolean c(@NotNull Map.Entry<? extends K, ? extends V> entry);

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return b((Map.Entry) obj);
        }
        return false;
    }

    public boolean d(Map.Entry<?, ?> entry) {
        return super.remove(entry);
    }

    @Override
    public final boolean remove(Object obj) {
        if (obj instanceof Map.Entry) {
            return d((Map.Entry) obj);
        }
        return false;
    }
}
