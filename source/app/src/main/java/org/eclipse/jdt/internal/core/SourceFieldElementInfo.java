package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.internal.compiler.env.ISourceField;

public class SourceFieldElementInfo extends AnnotatableInfo implements ISourceField {
    protected char[] initializationSource;
    protected char[] typeName;

    @Override
    public int getDeclarationSourceEnd() {
        return super.getDeclarationSourceEnd();
    }

    @Override
    public int getDeclarationSourceStart() {
        return super.getDeclarationSourceStart();
    }

    @Override
    public char[] getInitializationSource() {
        return this.initializationSource;
    }

    @Override
    public int getModifiers() {
        return super.getModifiers();
    }

    @Override
    public char[] getTypeName() {
        return this.typeName;
    }

    public String getTypeSignature() {
        return Signature.createTypeSignature(this.typeName, false);
    }

    public void setTypeName(char[] cArr) {
        this.typeName = cArr;
    }
}
