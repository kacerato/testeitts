package com.android.dx.rop.cst;

import com.android.dx.rop.type.Type;

public final class CstEnumRef extends CstMemberRef {
    private CstFieldRef fieldRef;

    public CstEnumRef(CstNat cstNat) {
        super(new CstType(cstNat.getFieldType()), cstNat);
        this.fieldRef = null;
    }

    public CstFieldRef getFieldRef() {
        if (this.fieldRef == null) {
            this.fieldRef = new CstFieldRef(getDefiningClass(), getNat());
        }
        return this.fieldRef;
    }

    @Override
    public Type getType() {
        return getDefiningClass().getClassType();
    }

    @Override
    public String typeName() {
        return "enum";
    }
}
