package com.android.dex;

import com.android.dex.Dex;
import com.android.dex.util.Unsigned;

public final class FieldId implements Comparable<FieldId> {
    private final int declaringClassIndex;
    private final Dex dex;
    private final int nameIndex;
    private final int typeIndex;

    public FieldId(Dex dex, int i10, int i11, int i12) {
        this.dex = dex;
        this.declaringClassIndex = i10;
        this.typeIndex = i11;
        this.nameIndex = i12;
    }

    public int getDeclaringClassIndex() {
        return this.declaringClassIndex;
    }

    public int getNameIndex() {
        return this.nameIndex;
    }

    public int getTypeIndex() {
        return this.typeIndex;
    }

    public String toString() {
        if (this.dex != null) {
            return this.dex.typeNames().get(this.typeIndex) + "." + this.dex.strings().get(this.nameIndex);
        }
        return this.declaringClassIndex + " " + this.typeIndex + " " + this.nameIndex;
    }

    public void writeTo(Dex.Section section) {
        section.writeUnsignedShort(this.declaringClassIndex);
        section.writeUnsignedShort(this.typeIndex);
        section.writeInt(this.nameIndex);
    }

    @Override
    public int compareTo(FieldId fieldId) {
        int i10 = this.declaringClassIndex;
        int i11 = fieldId.declaringClassIndex;
        if (i10 != i11) {
            return Unsigned.compare(i10, i11);
        }
        int i12 = this.nameIndex;
        int i13 = fieldId.nameIndex;
        if (i12 != i13) {
            return Unsigned.compare(i12, i13);
        }
        return Unsigned.compare(this.typeIndex, fieldId.typeIndex);
    }
}
