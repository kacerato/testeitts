package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.SourceRange;

public class AnnotatableInfo extends MemberElementInfo {
    protected IAnnotation[] annotations = Annotation.NO_ANNOTATIONS;
    protected int nameStart = -1;
    protected int nameEnd = -1;

    @Override
    public int getDeclarationSourceEnd() {
        return super.getDeclarationSourceEnd();
    }

    @Override
    public int getDeclarationSourceStart() {
        return super.getDeclarationSourceStart();
    }

    @Override
    public int getModifiers() {
        return super.getModifiers();
    }

    public ISourceRange getNameRange() {
        int i10 = this.nameStart;
        return new SourceRange(i10, (this.nameEnd - i10) + 1);
    }

    @Override
    public int getNameSourceEnd() {
        return this.nameEnd;
    }

    @Override
    public int getNameSourceStart() {
        return this.nameStart;
    }

    public void setNameSourceEnd(int i10) {
        this.nameEnd = i10;
    }

    public void setNameSourceStart(int i10) {
        this.nameStart = i10;
    }
}
