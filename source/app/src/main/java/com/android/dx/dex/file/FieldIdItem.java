package com.android.dx.dex.file;

import com.android.dx.rop.cst.CstFieldRef;

public final class FieldIdItem extends MemberIdItem {
    public FieldIdItem(CstFieldRef cstFieldRef) {
        super(cstFieldRef);
    }

    @Override
    public void addContents(DexFile dexFile) {
        super.addContents(dexFile);
        dexFile.getTypeIds().intern(getFieldRef().getType());
    }

    public CstFieldRef getFieldRef() {
        return (CstFieldRef) getRef();
    }

    @Override
    public int getTypoidIdx(DexFile dexFile) {
        return dexFile.getTypeIds().indexOf(getFieldRef().getType());
    }

    @Override
    public String getTypoidName() {
        return "type_idx";
    }

    @Override
    public ItemType itemType() {
        return ItemType.TYPE_FIELD_ID_ITEM;
    }
}
