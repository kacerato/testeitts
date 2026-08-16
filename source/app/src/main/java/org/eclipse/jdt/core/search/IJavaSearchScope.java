package org.eclipse.jdt.core.search;

import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IJavaElement;

public interface IJavaSearchScope {
    public static final int APPLICATION_LIBRARIES = 2;
    public static final String JAR_FILE_ENTRY_SEPARATOR = "|";
    public static final int REFERENCED_PROJECTS = 8;
    public static final int SOURCES = 1;
    public static final int SYSTEM_LIBRARIES = 4;

    boolean encloses(String str);

    boolean encloses(IJavaElement iJavaElement);

    IPath[] enclosingProjectsAndJars();

    boolean includesBinaries();

    boolean includesClasspaths();

    void setIncludesBinaries(boolean z10);

    void setIncludesClasspaths(boolean z10);
}
