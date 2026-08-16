package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;

public interface IJavaModelStatus extends IStatus {
    IJavaElement[] getElements();

    IPath getPath();

    String getString();

    boolean isDoesNotExist();
}
