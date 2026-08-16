package j$.util;

import java.util.Collection;
import java.util.function.IntFunction;

public final class Collection$EL {
    public static Object[] toArray(Collection collection, IntFunction intFunction) {
        return collection.toArray((Object[]) intFunction.apply(0));
    }
}
