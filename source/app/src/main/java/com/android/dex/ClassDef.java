package com.android.dex;

public final class ClassDef {
    public static final int NO_INDEX = -1;
    private final int accessFlags;
    private final int annotationsOffset;
    private final Dex buffer;
    private final int classDataOffset;
    private final int interfacesOffset;
    private final int offset;
    private final int sourceFileIndex;
    private final int staticValuesOffset;
    private final int supertypeIndex;
    private final int typeIndex;

    public ClassDef(Dex dex, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        this.buffer = dex;
        this.offset = i10;
        this.typeIndex = i11;
        this.accessFlags = i12;
        this.supertypeIndex = i13;
        this.interfacesOffset = i14;
        this.sourceFileIndex = i15;
        this.annotationsOffset = i16;
        this.classDataOffset = i17;
        this.staticValuesOffset = i18;
    }

    public int getAccessFlags() {
        return this.accessFlags;
    }

    public int getAnnotationsOffset() {
        return this.annotationsOffset;
    }

    public int getClassDataOffset() {
        return this.classDataOffset;
    }

    public short[] getInterfaces() {
        return this.buffer.readTypeList(this.interfacesOffset).getTypes();
    }

    public int getInterfacesOffset() {
        return this.interfacesOffset;
    }

    public int getOffset() {
        return this.offset;
    }

    public int getSourceFileIndex() {
        return this.sourceFileIndex;
    }

    public int getStaticValuesOffset() {
        return this.staticValuesOffset;
    }

    public int getSupertypeIndex() {
        return this.supertypeIndex;
    }

    public int getTypeIndex() {
        return this.typeIndex;
    }

    public String toString() {
        if (this.buffer == null) {
            return this.typeIndex + " " + this.supertypeIndex;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.buffer.typeNames().get(this.typeIndex));
        if (this.supertypeIndex != -1) {
            sb2.append(" extends ");
            sb2.append(this.buffer.typeNames().get(this.supertypeIndex));
        }
        return sb2.toString();
    }
}
