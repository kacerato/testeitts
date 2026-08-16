package org.eclipse.jdt.core.compiler;

import org.eclipse.core.resources.IFile;

public class BuildContext {
    public char[] getContents() {
        return null;
    }

    public IFile getFile() {
        return null;
    }

    public boolean hasAnnotations() {
        return false;
    }

    public boolean isTestCode() {
        return false;
    }

    public void recordAddedGeneratedFiles(IFile[] iFileArr) {
    }

    public void recordDeletedGeneratedFiles(IFile[] iFileArr) {
    }

    public void recordDependencies(String[] strArr) {
    }

    public void recordNewProblems(CategorizedProblem[] categorizedProblemArr) {
    }
}
