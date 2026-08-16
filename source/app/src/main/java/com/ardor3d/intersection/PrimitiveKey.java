package com.ardor3d.intersection;

public class PrimitiveKey {
    private final int _primitiveIndex;
    private final int _section;

    public PrimitiveKey(int i10, int i11) {
        this._primitiveIndex = i10;
        this._section = i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PrimitiveKey)) {
            return false;
        }
        PrimitiveKey primitiveKey = (PrimitiveKey) obj;
        return this._primitiveIndex == primitiveKey._primitiveIndex && this._section == primitiveKey._section;
    }

    public int getPrimitiveIndex() {
        return this._primitiveIndex;
    }

    public int getSection() {
        return this._section;
    }

    public int hashCode() {
        int i10 = this._primitiveIndex + 544;
        return i10 + (i10 * 31) + this._section;
    }
}
