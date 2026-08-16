package org.eclipse.jdt.core.dom;

public final class ChildListPropertyDescriptor extends StructuralPropertyDescriptor {
    final boolean cycleRisk;
    final Class elementType;

    public ChildListPropertyDescriptor(Class cls, String str, Class cls2, boolean z10) {
        super(cls, str);
        if (cls2 == null) {
            throw new IllegalArgumentException();
        }
        this.elementType = cls2;
        this.cycleRisk = z10;
    }

    public final boolean cycleRisk() {
        return this.cycleRisk;
    }

    public final Class getElementType() {
        return this.elementType;
    }
}
