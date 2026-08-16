package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IImportContainer;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.ISourceReference;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.SourceRange;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;

public class ImportContainer extends SourceRefElement implements IImportContainer {
    public ImportContainer(CompilationUnit compilationUnit) {
        super(compilationUnit);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof ImportContainer) {
            return super.equals(obj);
        }
        return false;
    }

    @Override
    public int getElementType() {
        return 12;
    }

    @Override
    public IJavaElement getHandleFromMemento(String str, MementoTokenizer mementoTokenizer, WorkingCopyOwner workingCopyOwner) {
        char charAt = str.charAt(0);
        if (charAt == '!') {
            return getHandleUpdatingCountFromMemento(mementoTokenizer, workingCopyOwner);
        }
        if (charAt != '#') {
            return null;
        }
        return mementoTokenizer.hasMoreTokens() ? ((JavaElement) getImport(mementoTokenizer.nextToken())).getHandleFromMemento(mementoTokenizer, workingCopyOwner) : this;
    }

    @Override
    public char getHandleMementoDelimiter() {
        return JavaElement.JEM_IMPORTDECLARATION;
    }

    @Override
    public IImportDeclaration getImport(String str) {
        int indexOf = str.indexOf(".*");
        boolean z10 = indexOf != -1;
        if (z10) {
            str = str.substring(0, indexOf);
        }
        return getImport(str, z10);
    }

    @Override
    public ISourceRange getNameRange() {
        return null;
    }

    @Override
    public IJavaElement getPrimaryElement(boolean z10) {
        CompilationUnit compilationUnit = (CompilationUnit) this.parent;
        return (z10 && compilationUnit.isPrimary()) ? this : compilationUnit.getImportContainer();
    }

    @Override
    public ISourceRange getSourceRange() throws JavaModelException {
        IJavaElement[] children = getChildren();
        ISourceRange sourceRange = ((ISourceReference) children[0]).getSourceRange();
        ISourceRange sourceRange2 = ((ISourceReference) children[children.length - 1]).getSourceRange();
        return new SourceRange(sourceRange.getOffset(), (sourceRange2.getOffset() + sourceRange2.getLength()) - sourceRange.getOffset());
    }

    @Override
    public String readableName() {
        return null;
    }

    @Override
    public void toString(int i10, StringBuffer stringBuffer) {
        Object peekAtInfo = JavaModelManager.getJavaModelManager().peekAtInfo(this);
        if (peekAtInfo == null || !(peekAtInfo instanceof JavaElementInfo)) {
            return;
        }
        IJavaElement[] children = ((JavaElementInfo) peekAtInfo).getChildren();
        for (int i11 = 0; i11 < children.length; i11++) {
            if (i11 > 0) {
                stringBuffer.append("\n");
            }
            ((JavaElement) children[i11]).toString(i10, stringBuffer);
        }
    }

    @Override
    public void toStringInfo(int i10, StringBuffer stringBuffer, Object obj, boolean z10) {
        stringBuffer.append(tabString(i10));
        stringBuffer.append("<import container>");
        if (obj == null) {
            stringBuffer.append(" (not open)");
        }
    }

    public IImportDeclaration getImport(String str, boolean z10) {
        return new ImportDeclaration(this, str, z10);
    }
}
