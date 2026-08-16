package org.eclipse.jdt.internal.core.builder;

import java.util.function.Predicate;

public final class e implements Predicate {
    @Override
    public final boolean test(Object obj) {
        return ((ClasspathLocation) obj).hasModule();
    }
}
