package org.eclipse.jdt.internal.compiler.impl;

import org.eclipse.jdt.internal.core.JavadocConstants;

public class StringConstant extends Constant {
    private String value;

    private StringConstant(String str) {
        this.value = str;
    }

    public static Constant fromValue(String str) {
        return new StringConstant(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        StringConstant stringConstant = (StringConstant) obj;
        String str = this.value;
        return str == null ? stringConstant.value == null : str.equals(stringConstant.value);
    }

    public int hashCode() {
        String str = this.value;
        return 31 + (str == null ? 0 : str.hashCode());
    }

    @Override
    public String stringValue() {
        return this.value;
    }

    @Override
    public String toString() {
        return "(String)\"" + this.value + JavadocConstants.ANCHOR_PREFIX_END;
    }

    @Override
    public int typeID() {
        return 11;
    }
}
