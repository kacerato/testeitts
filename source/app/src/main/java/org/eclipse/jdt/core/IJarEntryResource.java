package org.eclipse.jdt.core;

import org.eclipse.core.resources.IStorage;
import org.eclipse.core.runtime.IPath;

public interface IJarEntryResource extends IStorage {
    IJarEntryResource[] getChildren();

    IPath getFullPath();

    IPackageFragmentRoot getPackageFragmentRoot();

    Object getParent();

    boolean isFile();
}
