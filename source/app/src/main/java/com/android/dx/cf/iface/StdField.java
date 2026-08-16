package com.android.dx.cf.iface;

import com.android.dx.cf.attrib.AttConstantValue;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.cst.TypedConstant;

public final class StdField extends StdMember implements Field {
    public StdField(CstType cstType, int i10, CstNat cstNat, AttributeList attributeList) {
        super(cstType, i10, cstNat, attributeList);
    }

    @Override
    public TypedConstant getConstantValue() {
        AttConstantValue attConstantValue = (AttConstantValue) getAttributes().findFirst("ConstantValue");
        if (attConstantValue == null) {
            return null;
        }
        return attConstantValue.getConstantValue();
    }
}
