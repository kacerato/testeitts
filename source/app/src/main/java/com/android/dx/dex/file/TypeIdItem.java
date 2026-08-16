package com.android.dx.dex.file;

import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import w2.C15883c;

public final class TypeIdItem extends IdItem {
    public TypeIdItem(CstType cstType) {
        super(cstType);
    }

    @Override
    public void addContents(DexFile dexFile) {
        dexFile.getStringIds().intern(getDefiningClass().getDescriptor());
    }

    @Override
    public ItemType itemType() {
        return ItemType.TYPE_TYPE_ID_ITEM;
    }

    @Override
    public int writeSize() {
        return 4;
    }

    @Override
    public void writeTo(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        CstString descriptor = getDefiningClass().getDescriptor();
        int indexOf = dexFile.getStringIds().indexOf(descriptor);
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, indexString() + C15883c.f126249O + descriptor.toHuman());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("  descriptor_idx: ");
            sb2.append(Hex.u4(indexOf));
            annotatedOutput.annotate(4, sb2.toString());
        }
        annotatedOutput.writeInt(indexOf);
    }
}
