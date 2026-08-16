package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.JavaModelException;

public class ImportDeclaration extends SourceRefElement implements IImportDeclaration {
    protected boolean isOnDemand;
    protected String name;

    public ImportDeclaration(ImportContainer importContainer, String str, boolean z10) {
        super(importContainer);
        this.name = str;
        this.isOnDemand = z10;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof ImportDeclaration) {
            return super.equals(obj);
        }
        return false;
    }

    @Override
    public String getElementName() {
        if (!this.isOnDemand) {
            return this.name;
        }
        return String.valueOf(this.name) + ".*";
    }

    @Override
    public int getElementType() {
        return 13;
    }

    @Override
    public int getFlags() throws JavaModelException {
        return ((ImportDeclarationElementInfo) getElementInfo()).getModifiers();
    }

    @Override
    public void getHandleMemento(StringBuffer stringBuffer) {
        ((JavaElement) getParent()).getHandleMemento(stringBuffer);
        escapeMementoName(stringBuffer, getElementName());
        if (this.occurrenceCount > 1) {
            stringBuffer.append('!');
            stringBuffer.append(this.occurrenceCount);
        }
    }

    @Override
    public char getHandleMementoDelimiter() {
        Assert.isTrue(false, "Should not be called");
        return (char) 0;
    }

    @Override
    public ISourceRange getNameRange() throws JavaModelException {
        return ((ImportDeclarationElementInfo) getElementInfo()).getNameRange();
    }

    public String getNameWithoutStar() {
        return this.name;
    }

    @Override
    public IJavaElement getPrimaryElement(boolean z10) {
        CompilationUnit compilationUnit = (CompilationUnit) this.parent.getParent();
        return (z10 && compilationUnit.isPrimary()) ? this : compilationUnit.getImport(getElementName());
    }

    @Override
    public boolean isOnDemand() {
        return this.isOnDemand;
    }

    @Override
    public String readableName() {
        return null;
    }

    @Override
    public void toStringInfo(int i10, StringBuffer stringBuffer, Object obj, boolean z10) {
        stringBuffer.append(tabString(i10));
        stringBuffer.append("import ");
        toStringName(stringBuffer);
        if (obj == null) {
            stringBuffer.append(" (not open)");
        }
    }
}
