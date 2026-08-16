package org.eclipse.jdt.internal.core.hierarchy;

import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.internal.compiler.env.IGenericType;

public class HierarchyType implements IGenericType {
    public boolean anonymous;
    public int modifiers;
    public char[] name;
    public char[][] superInterfaceNames;
    public char[] superclassName;
    public IType typeHandle;

    public HierarchyType(IType iType, char[] cArr, int i10, char[] cArr2, char[][] cArr3, boolean z10) {
        this.typeHandle = iType;
        this.name = cArr;
        this.modifiers = i10;
        this.superclassName = cArr2;
        this.superInterfaceNames = cArr3;
        this.anonymous = z10;
    }

    @Override
    public char[] getFileName() {
        return this.typeHandle.getCompilationUnit().getElementName().toCharArray();
    }

    @Override
    public int getModifiers() {
        return this.modifiers;
    }

    public boolean isAnonymous() {
        return this.anonymous;
    }

    @Override
    public boolean isBinaryType() {
        return false;
    }
}
