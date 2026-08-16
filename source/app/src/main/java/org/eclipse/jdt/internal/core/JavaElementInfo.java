package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;

public class JavaElementInfo implements Cloneable {
    static Object[] NO_NON_JAVA_RESOURCES = new Object[0];

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new Error(e10);
        }
    }

    public IJavaElement[] getChildren() {
        return JavaElement.NO_ELEMENTS;
    }
}
