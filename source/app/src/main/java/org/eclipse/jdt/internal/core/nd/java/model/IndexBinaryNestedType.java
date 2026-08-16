package org.eclipse.jdt.internal.core.nd.java.model;

import org.eclipse.jdt.internal.compiler.env.IBinaryNestedType;

public class IndexBinaryNestedType implements IBinaryNestedType {
    private char[] enclosingTypeName;
    private int modifiers;
    private char[] name;

    public IndexBinaryNestedType(char[] cArr, char[] cArr2, int i10) {
        this.name = cArr;
        this.enclosingTypeName = cArr2;
        this.modifiers = i10;
    }

    @Override
    public char[] getEnclosingTypeName() {
        return this.enclosingTypeName;
    }

    @Override
    public int getModifiers() {
        return this.modifiers;
    }

    @Override
    public char[] getName() {
        return this.name;
    }
}
