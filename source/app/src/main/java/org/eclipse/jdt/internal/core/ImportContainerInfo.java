package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;

public class ImportContainerInfo extends JavaElementInfo {
    protected IJavaElement[] children = JavaElement.NO_ELEMENTS;

    @Override
    public IJavaElement[] getChildren() {
        return this.children;
    }
}
