package org.eclipse.jdt.internal.compiler.lookup;

import java.util.HashSet;
import java.util.function.BiConsumer;

public final class r implements BiConsumer {
    @Override
    public final void accept(Object obj, Object obj2) {
        ((HashSet) obj).addAll((HashSet) obj2);
    }
}
