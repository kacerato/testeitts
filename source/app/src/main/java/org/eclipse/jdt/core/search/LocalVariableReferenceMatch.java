package org.eclipse.jdt.core.search;

import org.eclipse.core.resources.IResource;
import org.eclipse.jdt.core.IJavaElement;

public class LocalVariableReferenceMatch extends SearchMatch {
    private boolean isReadAccess;
    private boolean isWriteAccess;

    public LocalVariableReferenceMatch(IJavaElement iJavaElement, int i10, int i11, int i12, boolean z10, boolean z11, boolean z12, SearchParticipant searchParticipant, IResource iResource) {
        super(iJavaElement, i10, i11, i12, searchParticipant, iResource);
        this.isReadAccess = z10;
        this.isWriteAccess = z11;
        setInsideDocComment(z12);
    }

    public final boolean isReadAccess() {
        return this.isReadAccess;
    }

    public final boolean isWriteAccess() {
        return this.isWriteAccess;
    }
}
