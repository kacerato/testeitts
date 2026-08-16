package com.android.dx.cf.iface;

import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Prototype;

public final class StdMethod extends StdMember implements Method {
    private final Prototype effectiveDescriptor;

    public StdMethod(CstType cstType, int i10, CstNat cstNat, AttributeList attributeList) {
        super(cstType, i10, cstNat, attributeList);
        this.effectiveDescriptor = Prototype.intern(getDescriptor().getString(), cstType.getClassType(), AccessFlags.isStatic(i10), cstNat.isInstanceInit());
    }

    @Override
    public Prototype getEffectiveDescriptor() {
        return this.effectiveDescriptor;
    }
}
