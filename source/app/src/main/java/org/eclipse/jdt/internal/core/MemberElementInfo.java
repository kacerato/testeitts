package org.eclipse.jdt.internal.core;

abstract class MemberElementInfo extends SourceRefElementInfo {
    protected int flags;

    public int getModifiers() {
        return this.flags;
    }

    public int getNameSourceEnd() {
        return -1;
    }

    public int getNameSourceStart() {
        return -1;
    }

    public void setFlags(int i10) {
        this.flags = i10;
    }
}
