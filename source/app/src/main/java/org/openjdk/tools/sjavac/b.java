package org.openjdk.tools.sjavac;

import java.util.Set;
import java.util.function.BiFunction;

public final class b implements BiFunction {
    @Override
    public final Object apply(Object obj, Object obj2) {
        return Util.union((Set) obj, (Set) obj2);
    }
}
