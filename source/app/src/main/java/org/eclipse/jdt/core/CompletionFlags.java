package org.eclipse.jdt.core;

public final class CompletionFlags {
    public static final int Default = 0;
    public static final int StaticImport = 1;

    private CompletionFlags() {
    }

    public static boolean isStaticImport(int i10) {
        return (i10 & 1) != 0;
    }
}
