package org.eclipse.jdt.internal.core;

import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.JavaModelException;

public class ExternalFolderChange {
    private IClasspathEntry[] oldResolvedClasspath;
    private JavaProject project;

    public ExternalFolderChange(JavaProject javaProject, IClasspathEntry[] iClasspathEntryArr) {
        this.project = javaProject;
        this.oldResolvedClasspath = iClasspathEntryArr;
    }

    public String toString() {
        return "ExternalFolderChange: " + this.project.getElementName();
    }

    public void updateExternalFoldersIfNecessary(boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        Set<IPath> externalFolders = ExternalFoldersManager.getExternalFolders(this.oldResolvedClasspath);
        Set<IPath> externalFolders2 = ExternalFoldersManager.getExternalFolders(this.project.getResolvedClasspath());
        if (externalFolders2 == null) {
            return;
        }
        ExternalFoldersManager externalManager = JavaModelManager.getExternalManager();
        for (IPath iPath : externalFolders2) {
            if (externalFolders == null || !externalFolders.remove(iPath) || externalManager.removePendingFolder(iPath)) {
                try {
                    externalManager.createLinkFolder(iPath, z10, iProgressMonitor);
                } catch (CoreException e10) {
                    throw new JavaModelException(e10);
                }
            }
        }
    }
}
