package com.android.tools.r8;

import java.util.function.Predicate;

public final class A0 implements Predicate {
    @Override
    public final boolean test(Object obj) {
        return ArchiveProgramResourceProvider.includeClassFileOrDexEntries((String) obj);
    }
}
