package org.eclipse.jdt.core.search;

import org.eclipse.core.resources.IResource;
import org.eclipse.jdt.core.IJavaElement;

public abstract class ReferenceMatch extends SearchMatch {
    IJavaElement localElement;

    public ReferenceMatch(IJavaElement iJavaElement, int i10, int i11, int i12, boolean z10, SearchParticipant searchParticipant, IResource iResource) {
        super(iJavaElement, i10, i11, i12, searchParticipant, iResource);
        setInsideDocComment(z10);
    }

    public final IJavaElement getLocalElement() {
        return this.localElement;
    }

    public final void setLocalElement(IJavaElement iJavaElement) {
        this.localElement = iJavaElement;
    }
}
