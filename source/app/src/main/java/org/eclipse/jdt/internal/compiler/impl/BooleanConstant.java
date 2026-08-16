package org.eclipse.jdt.internal.compiler.impl;

public class BooleanConstant extends Constant {
    private boolean value;
    private static final BooleanConstant TRUE = new BooleanConstant(true);
    private static final BooleanConstant FALSE = new BooleanConstant(false);

    private BooleanConstant(boolean z10) {
        this.value = z10;
    }

    public static Constant fromValue(boolean z10) {
        return z10 ? TRUE : FALSE;
    }

    @Override
    public boolean booleanValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public int hashCode() {
        return this.value ? 1231 : 1237;
    }

    @Override
    public String stringValue() {
        return String.valueOf(this.value);
    }

    @Override
    public String toString() {
        return "(boolean)" + this.value;
    }

    @Override
    public int typeID() {
        return 5;
    }
}
