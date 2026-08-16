package com.android.tools.r8.experimental.graphinfo;

import com.android.tools.r8.references.MethodReference;

public final class MethodGraphNode extends GraphNode {

    static final boolean f36114d = true;

    private final MethodReference f36115c;

    public MethodGraphNode(boolean z10, MethodReference methodReference) {
        super(z10);
        if (!f36114d && methodReference == null) {
            throw new AssertionError();
        }
        this.f36115c = methodReference;
    }

    @Override
    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof MethodGraphNode) && ((MethodGraphNode) obj).f36115c.equals(this.f36115c);
        }
        return true;
    }

    public MethodReference getReference() {
        return this.f36115c;
    }

    @Override
    public int hashCode() {
        return this.f36115c.hashCode();
    }

    @Override
    public String toString() {
        return this.f36115c.toString();
    }
}
