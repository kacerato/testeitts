package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.SourceRange;

class SourceRefElementInfo extends JavaElementInfo {
    protected int sourceRangeEnd;
    protected int sourceRangeStart;

    public int getDeclarationSourceEnd() {
        return this.sourceRangeEnd;
    }

    public int getDeclarationSourceStart() {
        return this.sourceRangeStart;
    }

    public ISourceRange getSourceRange() {
        int i10 = this.sourceRangeStart;
        return new SourceRange(i10, (this.sourceRangeEnd - i10) + 1);
    }

    public void setSourceRangeEnd(int i10) {
        this.sourceRangeEnd = i10;
    }

    public void setSourceRangeStart(int i10) {
        this.sourceRangeStart = i10;
    }
}
