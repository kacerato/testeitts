package org.eclipse.jdt.core.dom;

import org.openjdk.tools.doclint.DocLint;

public abstract class StructuralPropertyDescriptor {
    private final Class nodeClass;
    private final String propertyId;

    public StructuralPropertyDescriptor(Class cls, String str) {
        if (cls == null || str == null) {
            throw new IllegalArgumentException();
        }
        this.propertyId = str;
        this.nodeClass = cls;
    }

    public final String getId() {
        return this.propertyId;
    }

    public final Class getNodeClass() {
        return this.nodeClass;
    }

    public final boolean isChildListProperty() {
        return this instanceof ChildListPropertyDescriptor;
    }

    public final boolean isChildProperty() {
        return this instanceof ChildPropertyDescriptor;
    }

    public final boolean isSimpleProperty() {
        return this instanceof SimplePropertyDescriptor;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        if (isChildListProperty()) {
            stringBuffer.append("ChildList");
        }
        if (isChildProperty()) {
            stringBuffer.append("Child");
        }
        if (isSimpleProperty()) {
            stringBuffer.append("Simple");
        }
        stringBuffer.append("Property[");
        Class cls = this.nodeClass;
        if (cls != null) {
            stringBuffer.append(cls.getName());
        }
        stringBuffer.append(DocLint.SEPARATOR);
        String str = this.propertyId;
        if (str != null) {
            stringBuffer.append(str);
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }
}
