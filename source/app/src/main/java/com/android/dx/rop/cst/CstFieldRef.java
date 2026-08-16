package com.android.dx.rop.cst;

import com.android.dx.rop.type.Type;

public final class CstFieldRef extends CstMemberRef {
    public CstFieldRef(CstType cstType, CstNat cstNat) {
        super(cstType, cstNat);
    }

    public static CstFieldRef forPrimitiveType(Type type) {
        return new CstFieldRef(CstType.forBoxedPrimitiveType(type), CstNat.PRIMITIVE_TYPE_NAT);
    }

    @Override
    public int compareTo0(Constant constant) {
        int compareTo0 = super.compareTo0(constant);
        return compareTo0 != 0 ? compareTo0 : getNat().getDescriptor().compareTo((Constant) ((CstFieldRef) constant).getNat().getDescriptor());
    }

    @Override
    public Type getType() {
        return getNat().getFieldType();
    }

    @Override
    public String typeName() {
        return "field";
    }
}
