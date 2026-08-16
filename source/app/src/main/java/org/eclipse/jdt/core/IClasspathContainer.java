package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IPath;

public interface IClasspathContainer {
    public static final int K_APPLICATION = 1;
    public static final int K_DEFAULT_SYSTEM = 3;
    public static final int K_SYSTEM = 2;

    IClasspathEntry[] getClasspathEntries();

    String getDescription();

    int getKind();

    IPath getPath();
}
