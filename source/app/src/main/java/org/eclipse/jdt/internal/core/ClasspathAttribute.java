package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.internal.core.util.Util;

public class ClasspathAttribute implements IClasspathAttribute {
    private String name;
    private String value;

    public ClasspathAttribute(String str, String str2) {
        this.name = str;
        this.value = str2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ClasspathAttribute)) {
            return false;
        }
        ClasspathAttribute classpathAttribute = (ClasspathAttribute) obj;
        return this.name.equals(classpathAttribute.name) && this.value.equals(classpathAttribute.value);
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public String getValue() {
        return this.value;
    }

    public int hashCode() {
        return Util.combineHashCodes(this.name.hashCode(), this.value.hashCode());
    }

    public String toString() {
        return String.valueOf(this.name) + "=" + this.value;
    }
}
