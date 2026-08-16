package org.eclipse.jdt.core;

public interface IRegion {
    void add(IJavaElement iJavaElement);

    boolean contains(IJavaElement iJavaElement);

    IJavaElement[] getElements();

    boolean remove(IJavaElement iJavaElement);
}
