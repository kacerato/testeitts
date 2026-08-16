package org.eclipse.jdt.internal.core;

import org.apache.commons.math3.geometry.VectorFormat;

public class SimpleDelta {
    protected int kind = 0;
    protected int changeFlags = 0;

    public void added() {
        this.kind = 1;
    }

    public void changed(int i10) {
        this.kind = 4;
        this.changeFlags = i10 | this.changeFlags;
    }

    public int getFlags() {
        return this.changeFlags;
    }

    public int getKind() {
        return this.kind;
    }

    public void modifiers() {
        changed(2);
    }

    public void removed() {
        this.kind = 2;
        this.changeFlags = 0;
    }

    public void superTypes() {
        changed(2048);
    }

    public void toDebugString(StringBuffer stringBuffer) {
        stringBuffer.append("[");
        int kind = getKind();
        if (kind == 1) {
            stringBuffer.append('+');
        } else if (kind == 2) {
            stringBuffer.append('-');
        } else if (kind != 4) {
            stringBuffer.append('?');
        } else {
            stringBuffer.append('*');
        }
        stringBuffer.append("]: {");
        toDebugString(stringBuffer, getFlags());
        stringBuffer.append(VectorFormat.DEFAULT_SUFFIX);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        toDebugString(stringBuffer);
        return stringBuffer.toString();
    }

    public boolean toDebugString(StringBuffer stringBuffer, int i10) {
        boolean z10;
        if ((i10 & 2) != 0) {
            stringBuffer.append("MODIFIERS CHANGED");
            z10 = true;
        } else {
            z10 = false;
        }
        if ((i10 & 2048) == 0) {
            return z10;
        }
        if (z10) {
            stringBuffer.append(" | ");
        }
        stringBuffer.append("SUPER TYPES CHANGED");
        return true;
    }
}
