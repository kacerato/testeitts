package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IPath;

public interface IAccessRule {
    public static final int IGNORE_IF_BETTER = 256;
    public static final int K_ACCESSIBLE = 0;
    public static final int K_DISCOURAGED = 2;
    public static final int K_NON_ACCESSIBLE = 1;

    int getKind();

    IPath getPattern();

    boolean ignoreIfBetter();
}
