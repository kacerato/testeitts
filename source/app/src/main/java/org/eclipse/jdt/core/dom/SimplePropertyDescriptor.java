package org.eclipse.jdt.core.dom;

public final class SimplePropertyDescriptor extends StructuralPropertyDescriptor {
    private final boolean mandatory;
    private final Class valueType;

    public SimplePropertyDescriptor(Class cls, String str, Class cls2, boolean z10) {
        super(cls, str);
        if (cls2 == null || ASTNode.class.isAssignableFrom(cls2)) {
            throw new IllegalArgumentException();
        }
        this.valueType = cls2;
        this.mandatory = z10;
    }

    public Class getValueType() {
        return this.valueType;
    }

    public boolean isMandatory() {
        return this.mandatory;
    }
}
