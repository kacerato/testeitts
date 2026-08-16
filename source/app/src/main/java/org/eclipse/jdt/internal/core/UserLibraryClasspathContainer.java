package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.core.util.Util;

public class UserLibraryClasspathContainer implements IClasspathContainer {
    private String name;

    public UserLibraryClasspathContainer(String str) {
        this.name = str;
    }

    private UserLibrary getUserLibrary() {
        UserLibrary userLibrary = JavaModelManager.getUserLibraryManager().getUserLibrary(this.name);
        if (userLibrary == null && (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE)) {
            verbose_no_user_library_found(this.name);
        }
        return userLibrary;
    }

    private void verbose_no_user_library_found(String str) {
        Util.verbose("UserLibrary INIT - FAILED (no user library found)\n\tuserLibraryName: " + str);
    }

    @Override
    public IClasspathEntry[] getClasspathEntries() {
        UserLibrary userLibrary = getUserLibrary();
        return userLibrary != null ? userLibrary.getEntries() : new IClasspathEntry[0];
    }

    @Override
    public String getDescription() {
        return this.name;
    }

    @Override
    public int getKind() {
        UserLibrary userLibrary = getUserLibrary();
        return (userLibrary == null || !userLibrary.isSystemLibrary()) ? 1 : 2;
    }

    @Override
    public IPath getPath() {
        return new Path(JavaCore.USER_LIBRARY_CONTAINER_ID).append(this.name);
    }
}
