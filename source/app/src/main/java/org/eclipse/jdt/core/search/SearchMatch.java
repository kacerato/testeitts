package org.eclipse.jdt.core.search;

import org.eclipse.core.resources.IResource;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.internal.core.JavaElement;

public class SearchMatch {
    private static final int ALL_GENERIC_FLAVORS = 112;
    public static final int A_ACCURATE = 0;
    public static final int A_INACCURATE = 1;
    private int accuracy;
    private Object element;
    private int length;
    private int offset;
    private SearchParticipant participant;
    private IResource resource;
    private int rule;
    private boolean insideDocComment = false;
    private boolean raw = false;
    private boolean implicit = false;

    public SearchMatch(IJavaElement iJavaElement, int i10, int i11, int i12, SearchParticipant searchParticipant, IResource iResource) {
        this.rule = 112;
        this.element = iJavaElement;
        this.offset = i11;
        this.length = i12;
        this.accuracy = i10 & 1;
        if (i10 > 1) {
            if ((i10 & 112) > 0) {
                this.rule = 112 & (-113);
            }
            this.rule |= i10 & (-2);
        }
        this.participant = searchParticipant;
        this.resource = iResource;
    }

    public final int getAccuracy() {
        return this.accuracy;
    }

    public final Object getElement() {
        return this.element;
    }

    public final int getLength() {
        return this.length;
    }

    public final int getOffset() {
        return this.offset;
    }

    public final SearchParticipant getParticipant() {
        return this.participant;
    }

    public final IResource getResource() {
        return this.resource;
    }

    public final int getRule() {
        return this.rule;
    }

    public final boolean isEquivalent() {
        return isErasure() && (this.rule & 32) != 0;
    }

    public final boolean isErasure() {
        return (this.rule & 16) != 0;
    }

    public final boolean isExact() {
        return isEquivalent() && (this.rule & 64) != 0;
    }

    public final boolean isImplicit() {
        return this.implicit;
    }

    public final boolean isInsideDocComment() {
        return this.insideDocComment;
    }

    public final boolean isRaw() {
        return this.raw;
    }

    public final void setAccuracy(int i10) {
        this.accuracy = i10;
    }

    public final void setElement(Object obj) {
        this.element = obj;
    }

    public final void setImplicit(boolean z10) {
        this.implicit = z10;
    }

    public final void setInsideDocComment(boolean z10) {
        this.insideDocComment = z10;
    }

    public final void setLength(int i10) {
        this.length = i10;
    }

    public final void setOffset(int i10) {
        this.offset = i10;
    }

    public final void setParticipant(SearchParticipant searchParticipant) {
        this.participant = searchParticipant;
    }

    public final void setRaw(boolean z10) {
        this.raw = z10;
    }

    public final void setResource(IResource iResource) {
        this.resource = iResource;
    }

    public final void setRule(int i10) {
        this.rule = i10;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Search match");
        stringBuffer.append("\n  accuracy=");
        stringBuffer.append(this.accuracy == 0 ? "ACCURATE" : "INACCURATE");
        stringBuffer.append("\n  rule=");
        int i10 = this.rule;
        if ((i10 & 64) != 0) {
            stringBuffer.append("EXACT");
        } else if ((i10 & 32) != 0) {
            stringBuffer.append("EQUIVALENT");
        } else if ((i10 & 16) != 0) {
            stringBuffer.append("ERASURE");
        }
        stringBuffer.append("\n  raw=");
        stringBuffer.append(this.raw);
        stringBuffer.append("\n  offset=");
        stringBuffer.append(this.offset);
        stringBuffer.append("\n  length=");
        stringBuffer.append(this.length);
        if (this.element != null) {
            stringBuffer.append("\n  element=");
            stringBuffer.append(((JavaElement) getElement()).toStringWithAncestors());
        }
        stringBuffer.append("\n");
        return stringBuffer.toString();
    }
}
