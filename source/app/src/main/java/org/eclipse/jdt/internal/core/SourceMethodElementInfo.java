package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.ILocalVariable;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.ISourceMethod;

public abstract class SourceMethodElementInfo extends AnnotatableInfo implements ISourceMethod {
    protected char[][] argumentNames;
    protected ILocalVariable[] arguments;
    protected char[][] exceptionTypes;
    protected ITypeParameter[] typeParameters = TypeParameter.NO_TYPE_PARAMETERS;

    @Override
    public char[][] getArgumentNames() {
        return this.argumentNames;
    }

    @Override
    public int getDeclarationSourceEnd() {
        return super.getDeclarationSourceEnd();
    }

    @Override
    public int getDeclarationSourceStart() {
        return super.getDeclarationSourceStart();
    }

    @Override
    public char[][] getExceptionTypeNames() {
        return this.exceptionTypes;
    }

    @Override
    public int getModifiers() {
        return super.getModifiers();
    }

    public abstract char[] getReturnTypeName();

    @Override
    public char[][][] getTypeParameterBounds() {
        int length = this.typeParameters.length;
        char[][][] cArr = new char[length][];
        for (int i10 = 0; i10 < length; i10++) {
            try {
                cArr[i10] = ((TypeParameterElementInfo) ((JavaElement) this.typeParameters[i10]).getElementInfo()).bounds;
            } catch (JavaModelException unused) {
            }
        }
        return cArr;
    }

    @Override
    public char[][] getTypeParameterNames() {
        int length = this.typeParameters.length;
        if (length == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        char[][] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr[i10] = this.typeParameters[i10].getElementName().toCharArray();
        }
        return cArr;
    }

    public abstract boolean isAnnotationMethod();

    public abstract boolean isConstructor();

    public void setArgumentNames(char[][] cArr) {
        this.argumentNames = cArr;
    }

    public void setExceptionTypeNames(char[][] cArr) {
        this.exceptionTypes = cArr;
    }

    public abstract void setReturnType(char[] cArr);
}
