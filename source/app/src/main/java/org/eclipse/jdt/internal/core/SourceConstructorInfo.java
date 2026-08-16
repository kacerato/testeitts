package org.eclipse.jdt.internal.core;

public class SourceConstructorInfo extends SourceMethodElementInfo {
    private static final char[] RETURN_TYPE_NAME = {'v', 'o', 'i', 'd'};

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
        return RETURN_TYPE_NAME;
    }

    @Override
    public boolean isAnnotationMethod() {
        return false;
    }

    @Override
    public boolean isConstructor() {
        return true;
    }

    @Override
    public void setReturnType(char[] cArr) {
    }
}
