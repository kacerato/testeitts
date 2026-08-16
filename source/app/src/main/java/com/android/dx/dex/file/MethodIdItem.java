package com.android.dx.dex.file;

import com.android.dx.rop.cst.CstBaseMethodRef;

public final class MethodIdItem extends MemberIdItem {
    public MethodIdItem(CstBaseMethodRef cstBaseMethodRef) {
        super(cstBaseMethodRef);
    }

    @Override
    public void addContents(DexFile dexFile) {
        super.addContents(dexFile);
        dexFile.getProtoIds().intern(getMethodRef().getPrototype());
    }

    public CstBaseMethodRef getMethodRef() {
        return (CstBaseMethodRef) getRef();
    }

    @Override
    public int getTypoidIdx(DexFile dexFile) {
        return dexFile.getProtoIds().indexOf(getMethodRef().getPrototype());
    }

    @Override
    public String getTypoidName() {
        return "proto_idx";
    }

    @Override
    public ItemType itemType() {
        return ItemType.TYPE_METHOD_ID_ITEM;
    }
}
