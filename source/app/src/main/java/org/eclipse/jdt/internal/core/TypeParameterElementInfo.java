package org.eclipse.jdt.internal.core;

public class TypeParameterElementInfo extends SourceRefElementInfo {
    public char[][] bounds;
    public char[][] boundsSignatures;
    public int nameStart = -1;
    public int nameEnd = -1;

    @Override
    public int getDeclarationSourceEnd() {
        return super.getDeclarationSourceEnd();
    }

    @Override
    public int getDeclarationSourceStart() {
        return super.getDeclarationSourceStart();
    }
}
