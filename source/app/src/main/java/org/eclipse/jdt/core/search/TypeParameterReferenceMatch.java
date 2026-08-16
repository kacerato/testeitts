package org.eclipse.jdt.core.search;

import org.eclipse.core.resources.IResource;
import org.eclipse.jdt.core.IJavaElement;

public class TypeParameterReferenceMatch extends SearchMatch {
    public TypeParameterReferenceMatch(IJavaElement iJavaElement, int i10, int i11, int i12, boolean z10, SearchParticipant searchParticipant, IResource iResource) {
        super(iJavaElement, i10, i11, i12, searchParticipant, iResource);
        setInsideDocComment(z10);
    }
}
