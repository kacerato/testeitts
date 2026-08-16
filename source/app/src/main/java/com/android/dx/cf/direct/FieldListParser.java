package com.android.dx.cf.direct;

import com.android.dx.cf.iface.AttributeList;
import com.android.dx.cf.iface.Member;
import com.android.dx.cf.iface.StdField;
import com.android.dx.cf.iface.StdFieldList;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstType;

final class FieldListParser extends MemberListParser {
    private final StdFieldList fields;

    public FieldListParser(DirectClassFile directClassFile, CstType cstType, int i10, AttributeFactory attributeFactory) {
        super(directClassFile, cstType, i10, attributeFactory);
        this.fields = new StdFieldList(getCount());
    }

    @Override
    public int getAttributeContext() {
        return 1;
    }

    public StdFieldList getList() {
        parseIfNecessary();
        return this.fields;
    }

    @Override
    public String humanAccessFlags(int i10) {
        return AccessFlags.fieldString(i10);
    }

    @Override
    public String humanName() {
        return "field";
    }

    @Override
    public Member set(int i10, int i11, CstNat cstNat, AttributeList attributeList) {
        StdField stdField = new StdField(getDefiner(), i11, cstNat, attributeList);
        this.fields.set(i10, stdField);
        return stdField;
    }
}
