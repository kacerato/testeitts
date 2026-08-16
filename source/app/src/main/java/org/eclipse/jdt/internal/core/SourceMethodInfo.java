package org.eclipse.jdt.internal.core;

public class SourceMethodInfo extends SourceMethodElementInfo {
    protected char[] returnType;

    @Override
    public int getDeclarationSourceEnd() {
        return super.getDeclarationSourceEnd();
    }

    @Override
    public int getDeclarationSourceStart() {
        return super.getDeclarationSourceStart();
    }

    @Override
    public int getModifiers() {
        return super.getModifiers();
    }

    @Override
    public char[] getReturnTypeName() {
        return this.returnType;
    }

    @Override
    public boolean isAnnotationMethod() {
        return false;
    }

    @Override
    public boolean isConstructor() {
        return false;
    }

    @Override
    public void setReturnType(char[] cArr) {
        this.returnType = cArr;
    }
}
