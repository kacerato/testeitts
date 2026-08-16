package com.android.dex;

import com.android.dex.Dex;
import com.android.dex.util.Unsigned;

public final class ProtoId implements Comparable<ProtoId> {
    private final Dex dex;
    private final int parametersOffset;
    private final int returnTypeIndex;
    private final int shortyIndex;

    public ProtoId(Dex dex, int i10, int i11, int i12) {
        this.dex = dex;
        this.shortyIndex = i10;
        this.returnTypeIndex = i11;
        this.parametersOffset = i12;
    }

    public int getParametersOffset() {
        return this.parametersOffset;
    }

    public int getReturnTypeIndex() {
        return this.returnTypeIndex;
    }

    public int getShortyIndex() {
        return this.shortyIndex;
    }

    public String toString() {
        if (this.dex == null) {
            return this.shortyIndex + " " + this.returnTypeIndex + " " + this.parametersOffset;
        }
        return this.dex.strings().get(this.shortyIndex) + ": " + this.dex.typeNames().get(this.returnTypeIndex) + " " + ((Object) this.dex.readTypeList(this.parametersOffset));
    }

    public void writeTo(Dex.Section section) {
        section.writeInt(this.shortyIndex);
        section.writeInt(this.returnTypeIndex);
        section.writeInt(this.parametersOffset);
    }

    @Override
    public int compareTo(ProtoId protoId) {
        int i10 = this.returnTypeIndex;
        int i11 = protoId.returnTypeIndex;
        if (i10 != i11) {
            return Unsigned.compare(i10, i11);
        }
        return Unsigned.compare(this.parametersOffset, protoId.parametersOffset);
    }
}
