package org.eclipse.jdt.core.search;

import org.eclipse.core.resources.IResource;
import org.eclipse.jdt.core.IJavaElement;

public class FieldReferenceMatch extends ReferenceMatch {
    private boolean isReadAccess;
    private boolean isWriteAccess;

    public FieldReferenceMatch(IJavaElement iJavaElement, int i10, int i11, int i12, boolean z10, boolean z11, boolean z12, SearchParticipant searchParticipant, IResource iResource) {
        super(iJavaElement, i10, i11, i12, z12, searchParticipant, iResource);
        this.isReadAccess = z10;
        this.isWriteAccess = z11;
    }

    public final boolean isReadAccess() {
        return this.isReadAccess;
    }

    public final boolean isWriteAccess() {
        return this.isWriteAccess;
    }
}
