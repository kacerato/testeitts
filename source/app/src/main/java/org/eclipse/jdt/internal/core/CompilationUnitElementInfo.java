package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.SourceRange;

public class CompilationUnitElementInfo extends OpenableElementInfo {
    public static int ANNOTATION_THRESHOLD_FOR_DIET_PARSE = 10;
    public int annotationNumber = 0;
    public boolean hasFunctionalTypes = false;
    protected int sourceLength;
    protected long timestamp;

    public int getSourceLength() {
        return this.sourceLength;
    }

    public ISourceRange getSourceRange() {
        return new SourceRange(0, this.sourceLength);
    }

    public void setSourceLength(int i10) {
        this.sourceLength = i10;
    }
}
