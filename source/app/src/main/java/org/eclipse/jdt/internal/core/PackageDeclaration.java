package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IPackageDeclaration;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.JavaModelException;

public class PackageDeclaration extends SourceRefElement implements IPackageDeclaration {
    String name;

    public PackageDeclaration(CompilationUnit compilationUnit, String str) {
        super(compilationUnit);
        this.name = str;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof PackageDeclaration) {
            return super.equals(obj);
        }
        return false;
    }

    @Override
    public String getElementName() {
        return this.name;
    }

    @Override
    public int getElementType() {
        return 11;
    }

    @Override
    public char getHandleMementoDelimiter() {
        return JavaElement.JEM_PACKAGEDECLARATION;
    }

    @Override
    public ISourceRange getNameRange() throws JavaModelException {
        return ((AnnotatableInfo) getElementInfo()).getNameRange();
    }

    @Override
    public IJavaElement getPrimaryElement(boolean z10) {
        CompilationUnit compilationUnit = (CompilationUnit) getAncestor(5);
        return (z10 && compilationUnit.isPrimary()) ? this : compilationUnit.getPackageDeclaration(this.name);
    }

    @Override
    public void toStringInfo(int i10, StringBuffer stringBuffer, Object obj, boolean z10) {
        stringBuffer.append(tabString(i10));
        stringBuffer.append("package ");
        toStringName(stringBuffer);
        if (obj == null) {
            stringBuffer.append(" (not open)");
        }
    }
}
