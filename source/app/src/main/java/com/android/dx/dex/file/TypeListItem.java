package com.android.dx.dex.file;

import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import com.bumptech.glide.load.engine.GlideException;

public final class TypeListItem extends OffsettedItem {
    private static final int ALIGNMENT = 4;
    private static final int ELEMENT_SIZE = 2;
    private static final int HEADER_SIZE = 4;
    private final TypeList list;

    public TypeListItem(TypeList typeList) {
        super(4, (typeList.size() * 2) + 4);
        this.list = typeList;
    }

    @Override
    public void addContents(DexFile dexFile) {
        TypeIdsSection typeIds = dexFile.getTypeIds();
        int size = this.list.size();
        for (int i10 = 0; i10 < size; i10++) {
            typeIds.intern(this.list.getType(i10));
        }
    }

    @Override
    public int compareTo0(OffsettedItem offsettedItem) {
        return StdTypeList.compareContents(this.list, ((TypeListItem) offsettedItem).list);
    }

    public TypeList getList() {
        return this.list;
    }

    public int hashCode() {
        return StdTypeList.hashContents(this.list);
    }

    @Override
    public ItemType itemType() {
        return ItemType.TYPE_TYPE_LIST;
    }

    @Override
    public String toHuman() {
        throw new RuntimeException("unsupported");
    }

    @Override
    public void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        TypeIdsSection typeIds = dexFile.getTypeIds();
        int size = this.list.size();
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, offsetString() + " type_list");
            annotatedOutput.annotate(4, "  size: " + Hex.u4(size));
            for (int i10 = 0; i10 < size; i10++) {
                Type type = this.list.getType(i10);
                annotatedOutput.annotate(2, GlideException.a.f59088e + Hex.u2(typeIds.indexOf(type)) + " // " + type.toHuman());
            }
        }
        annotatedOutput.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            annotatedOutput.writeShort(typeIds.indexOf(this.list.getType(i11)));
        }
    }
}
