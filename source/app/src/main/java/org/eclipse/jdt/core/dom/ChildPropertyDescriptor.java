package org.eclipse.jdt.core.dom;

public final class ChildPropertyDescriptor extends StructuralPropertyDescriptor {
    private final Class childClass;
    final boolean cycleRisk;
    private final boolean mandatory;

    public ChildPropertyDescriptor(Class cls, String str, Class cls2, boolean z10, boolean z11) {
        super(cls, str);
        if (cls2 == null || !ASTNode.class.isAssignableFrom(cls2)) {
            throw new IllegalArgumentException();
        }
        this.childClass = cls2;
        this.mandatory = z10;
        this.cycleRisk = z11;
    }

    public final boolean cycleRisk() {
        return this.cycleRisk;
    }

    public final Class getChildType() {
        return this.childClass;
    }

    public final boolean isMandatory() {
        return this.mandatory;
    }
}
