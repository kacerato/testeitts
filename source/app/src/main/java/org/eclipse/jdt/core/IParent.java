package org.eclipse.jdt.core;

public interface IParent {
    IJavaElement[] getChildren() throws JavaModelException;

    boolean hasChildren() throws JavaModelException;
}
