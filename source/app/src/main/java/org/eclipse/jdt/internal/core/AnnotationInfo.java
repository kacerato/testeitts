package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IMemberValuePair;

public class AnnotationInfo extends SourceRefElementInfo {
    public IMemberValuePair[] members;
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
