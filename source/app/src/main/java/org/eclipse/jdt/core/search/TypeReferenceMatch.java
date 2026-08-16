package org.eclipse.jdt.core.search;

import org.eclipse.core.resources.IResource;
import org.eclipse.jdt.core.IJavaElement;

public class TypeReferenceMatch extends ReferenceMatch {
    private IJavaElement[] otherElements;

    public TypeReferenceMatch(IJavaElement iJavaElement, int i10, int i11, int i12, boolean z10, SearchParticipant searchParticipant, IResource iResource) {
        super(iJavaElement, i10, i11, i12, z10, searchParticipant, iResource);
    }

    public final IJavaElement[] getOtherElements() {
        return this.otherElements;
    }

    public final void setOtherElements(IJavaElement[] iJavaElementArr) {
        this.otherElements = iJavaElementArr;
    }
}
