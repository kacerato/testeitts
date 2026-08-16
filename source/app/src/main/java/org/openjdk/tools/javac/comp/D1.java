package org.openjdk.tools.javac.comp;

import java.util.function.Predicate;
import org.openjdk.tools.javac.code.Type;

public final class D1 implements Predicate {
    @Override
    public final boolean test(Object obj) {
        return ((Type) obj).isNumeric();
    }
}
