package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.SourceRange;
import org.eclipse.jdt.internal.compiler.env.ISourceImport;

public class ImportDeclarationElementInfo extends MemberElementInfo implements ISourceImport {
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
        return super.getNameSourceEnd();
    }

    @Override
    public int getNameSourceStart() {
        return super.getNameSourceStart();
    }

    public void setNameSourceEnd(int i10) {
        this.nameEnd = i10;
    }

    public void setNameSourceStart(int i10) {
        this.nameStart = i10;
    }
}
