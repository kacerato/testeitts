package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.util.Util;

public class Initializer extends Member implements IInitializer {
    public Initializer(JavaElement javaElement, int i10) {
        super(javaElement);
        if (i10 <= 0) {
            throw new IllegalArgumentException();
        }
        this.occurrenceCount = i10;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof Initializer) {
            return super.equals(obj);
        }
        return false;
    }

    @Override
    public int getElementType() {
        return 10;
    }

    @Override
    public void getHandleMemento(StringBuffer stringBuffer) {
        ((JavaElement) getParent()).getHandleMemento(stringBuffer);
        stringBuffer.append(getHandleMementoDelimiter());
        stringBuffer.append(this.occurrenceCount);
    }

    @Override
    public char getHandleMementoDelimiter() {
        return '|';
    }

    @Override
    public ISourceRange getNameRange() {
        return null;
    }

    @Override
    public IJavaElement getPrimaryElement(boolean z10) {
        CompilationUnit compilationUnit;
        return (z10 && ((compilationUnit = (CompilationUnit) getAncestor(5)) == null || compilationUnit.isPrimary())) ? this : ((IType) this.parent.getPrimaryElement(false)).getInitializer(this.occurrenceCount);
    }

    @Override
    public int hashCode() {
        return Util.combineHashCodes(this.parent.hashCode(), this.occurrenceCount);
    }

    @Override
    public String readableName() {
        return ((JavaElement) getDeclaringType()).readableName();
    }

    @Override
    public void rename(String str, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_ELEMENT_TYPES, this));
    }

    @Override
    public void toStringInfo(int i10, StringBuffer stringBuffer, Object obj, boolean z10) {
        stringBuffer.append(tabString(i10));
        if (obj == null) {
            stringBuffer.append("<initializer #");
            stringBuffer.append(this.occurrenceCount);
            stringBuffer.append("> (not open)");
            return;
        }
        if (obj == JavaElement.NO_INFO) {
            stringBuffer.append("<initializer #");
            stringBuffer.append(this.occurrenceCount);
            stringBuffer.append(">");
            return;
        }
        try {
            stringBuffer.append("<");
            if (Flags.isStatic(getFlags())) {
                stringBuffer.append("static ");
            }
            stringBuffer.append("initializer #");
            stringBuffer.append(this.occurrenceCount);
            stringBuffer.append(">");
        } catch (JavaModelException unused) {
            stringBuffer.append("<JavaModelException in toString of " + getElementName());
        }
    }
}
