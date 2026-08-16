package org.eclipse.jdt.internal.compiler.batch;

import java.util.function.Predicate;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;

public final class e implements Predicate {
    @Override
    public final boolean test(Object obj) {
        return ((FileSystem.Classpath) obj).hasModule();
    }
}
