package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;

public class SourceFieldWithChildrenInfo extends SourceFieldElementInfo {
    protected IJavaElement[] children;

    public SourceFieldWithChildrenInfo(IJavaElement[] iJavaElementArr) {
        this.children = iJavaElementArr;
    }

    @Override
    public IJavaElement[] getChildren() {
        return this.children;
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
    public int getModifiers() {
        return super.getModifiers();
    }
}
