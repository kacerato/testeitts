package com.android.dex;

import com.android.dex.Dex;
import com.android.dex.util.Unsigned;

public final class MethodId implements Comparable<MethodId> {
    private final int declaringClassIndex;
    private final Dex dex;
    private final int nameIndex;
    private final int protoIndex;

    public MethodId(Dex dex, int i10, int i11, int i12) {
        this.dex = dex;
        this.declaringClassIndex = i10;
        this.protoIndex = i11;
        this.nameIndex = i12;
    }

    public int getDeclaringClassIndex() {
        return this.declaringClassIndex;
    }

    public int getNameIndex() {
        return this.nameIndex;
    }

    public int getProtoIndex() {
        return this.protoIndex;
    }

    public String toString() {
        if (this.dex == null) {
            return this.declaringClassIndex + " " + this.protoIndex + " " + this.nameIndex;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.dex.typeNames().get(this.declaringClassIndex));
        sb2.append(".");
        sb2.append(this.dex.strings().get(this.nameIndex));
        Dex dex = this.dex;
        sb2.append((Object) dex.readTypeList(dex.protoIds().get(this.protoIndex).getParametersOffset()));
        return sb2.toString();
    }

    public void writeTo(Dex.Section section) {
        section.writeUnsignedShort(this.declaringClassIndex);
        section.writeUnsignedShort(this.protoIndex);
        section.writeInt(this.nameIndex);
    }

    @Override
    public int compareTo(MethodId methodId) {
        int i10 = this.declaringClassIndex;
        int i11 = methodId.declaringClassIndex;
        if (i10 != i11) {
            return Unsigned.compare(i10, i11);
        }
        int i12 = this.nameIndex;
        int i13 = methodId.nameIndex;
        if (i12 != i13) {
            return Unsigned.compare(i12, i13);
        }
        return Unsigned.compare(this.protoIndex, methodId.protoIndex);
    }
}
