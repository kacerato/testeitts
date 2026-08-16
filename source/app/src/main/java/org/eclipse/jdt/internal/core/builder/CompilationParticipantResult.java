package org.eclipse.jdt.internal.core.builder;

import org.eclipse.core.resources.IFile;
import org.eclipse.jdt.core.compiler.BuildContext;
import org.eclipse.jdt.core.compiler.CategorizedProblem;

public class CompilationParticipantResult extends BuildContext {
    private boolean isTestCode;
    protected SourceFile sourceFile;
    protected boolean hasAnnotations = false;
    protected IFile[] addedFiles = null;
    protected IFile[] deletedFiles = null;
    protected CategorizedProblem[] problems = null;
    protected String[] dependencies = null;

    public CompilationParticipantResult(SourceFile sourceFile, boolean z10) {
        this.sourceFile = sourceFile;
        this.isTestCode = z10;
    }

    @Override
    public char[] getContents() {
        return this.sourceFile.getContents();
    }

    @Override
    public IFile getFile() {
        return this.sourceFile.resource;
    }

    @Override
    public boolean hasAnnotations() {
        return this.hasAnnotations;
    }

    @Override
    public boolean isTestCode() {
        return this.isTestCode;
    }

    @Override
    public void recordAddedGeneratedFiles(IFile[] iFileArr) {
        int length = iFileArr.length;
        if (length == 0) {
            return;
        }
        IFile[] iFileArr2 = this.addedFiles;
        int length2 = iFileArr2 == null ? 0 : iFileArr2.length;
        IFile[] iFileArr3 = new IFile[length2 + length];
        if (length2 > 0) {
            System.arraycopy(iFileArr2, 0, iFileArr3, 0, length2);
        }
        System.arraycopy(iFileArr, 0, iFileArr3, length2, length);
        this.addedFiles = iFileArr3;
    }

    @Override
    public void recordDeletedGeneratedFiles(IFile[] iFileArr) {
        int length = iFileArr.length;
        if (length == 0) {
            return;
        }
        IFile[] iFileArr2 = this.deletedFiles;
        int length2 = iFileArr2 == null ? 0 : iFileArr2.length;
        IFile[] iFileArr3 = new IFile[length2 + length];
        if (length2 > 0) {
            System.arraycopy(iFileArr2, 0, iFileArr3, 0, length2);
        }
        System.arraycopy(iFileArr, 0, iFileArr3, length2, length);
        this.deletedFiles = iFileArr3;
    }

    @Override
    public void recordDependencies(String[] strArr) {
        int length = strArr.length;
        if (length == 0) {
            return;
        }
        String[] strArr2 = this.dependencies;
        int length2 = strArr2 == null ? 0 : strArr2.length;
        String[] strArr3 = new String[length2 + length];
        if (length2 > 0) {
            System.arraycopy(strArr2, 0, strArr3, 0, length2);
        }
        System.arraycopy(strArr, 0, strArr3, length2, length);
        this.dependencies = strArr3;
    }

    @Override
    public void recordNewProblems(CategorizedProblem[] categorizedProblemArr) {
        int length = categorizedProblemArr.length;
        if (length == 0) {
            return;
        }
        CategorizedProblem[] categorizedProblemArr2 = this.problems;
        int length2 = categorizedProblemArr2 == null ? 0 : categorizedProblemArr2.length;
        CategorizedProblem[] categorizedProblemArr3 = new CategorizedProblem[length2 + length];
        if (length2 > 0) {
            System.arraycopy(categorizedProblemArr2, 0, categorizedProblemArr3, 0, length2);
        }
        System.arraycopy(categorizedProblemArr, 0, categorizedProblemArr3, length2, length);
        this.problems = categorizedProblemArr3;
    }

    public void reset(boolean z10) {
        this.hasAnnotations = z10;
        this.addedFiles = null;
        this.deletedFiles = null;
        this.problems = null;
        this.dependencies = null;
    }

    public String toString() {
        return this.sourceFile.toString();
    }
}
