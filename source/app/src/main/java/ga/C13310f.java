package ga;

import java.util.function.BiFunction;

public final class C13310f implements BiFunction {
    @Override
    public final Object apply(Object obj, Object obj2) {
        return Integer.valueOf(Integer.sum(((Integer) obj).intValue(), ((Integer) obj2).intValue()));
    }
}
