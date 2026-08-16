package org.eclipse.jdt.core;

public interface IAnnotation extends IJavaElement, ISourceReference {
    @Override
    String getElementName();

    IMemberValuePair[] getMemberValuePairs() throws JavaModelException;

    int getOccurrenceCount();
}
