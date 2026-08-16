package com.android.tools.r8.experimental.graphinfo;

import com.android.tools.r8.references.ClassReference;

public final class ClassGraphNode extends GraphNode {

    static final boolean f36103d = true;

    private final ClassReference f36104c;

    public ClassGraphNode(boolean z10, ClassReference classReference) {
        super(z10);
        if (!f36103d && classReference == null) {
            throw new AssertionError();
        }
        this.f36104c = classReference;
    }

    @Override
    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof ClassGraphNode) && ((ClassGraphNode) obj).f36104c.equals(this.f36104c);
        }
        return true;
    }

    public ClassReference getReference() {
        return this.f36104c;
    }

    @Override
    public int hashCode() {
        return this.f36104c.hashCode();
    }

    @Override
    public String toString() {
        return this.f36104c.getDescriptor();
    }
}
