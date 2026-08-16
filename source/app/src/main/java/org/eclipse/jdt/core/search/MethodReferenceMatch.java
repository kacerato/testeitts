package org.eclipse.jdt.core.search;

import org.eclipse.core.resources.IResource;
import org.eclipse.jdt.core.IJavaElement;

public class MethodReferenceMatch extends ReferenceMatch {
    private boolean constructor;
    private boolean superInvocation;
    private boolean synthetic;

    public MethodReferenceMatch(IJavaElement iJavaElement, int i10, int i11, int i12, boolean z10, SearchParticipant searchParticipant, IResource iResource) {
        super(iJavaElement, i10, i11, i12, z10, searchParticipant, iResource);
    }

    public final boolean isConstructor() {
        return this.constructor;
    }

    public boolean isSuperInvocation() {
        return this.superInvocation;
    }

    public final boolean isSynthetic() {
        return this.synthetic;
    }

    public MethodReferenceMatch(IJavaElement iJavaElement, int i10, int i11, int i12, boolean z10, boolean z11, boolean z12, SearchParticipant searchParticipant, IResource iResource) {
        this(iJavaElement, i10, i11, i12, z12, searchParticipant, iResource);
        this.constructor = z10;
        this.synthetic = z11;
    }

    public MethodReferenceMatch(IJavaElement iJavaElement, int i10, int i11, int i12, boolean z10, boolean z11, boolean z12, boolean z13, SearchParticipant searchParticipant, IResource iResource) {
        this(iJavaElement, i10, i11, i12, z10, z11, z13, searchParticipant, iResource);
        this.superInvocation = z12;
    }
}
