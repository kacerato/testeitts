package com.android.dx.cf.direct;

import com.android.dx.cf.iface.AttributeList;
import com.android.dx.cf.iface.Member;
import com.android.dx.cf.iface.StdMethod;
import com.android.dx.cf.iface.StdMethodList;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstType;

final class MethodListParser extends MemberListParser {
    private final StdMethodList methods;

    public MethodListParser(DirectClassFile directClassFile, CstType cstType, int i10, AttributeFactory attributeFactory) {
        super(directClassFile, cstType, i10, attributeFactory);
        this.methods = new StdMethodList(getCount());
    }

    @Override
    public int getAttributeContext() {
        return 2;
    }

    public StdMethodList getList() {
        parseIfNecessary();
        return this.methods;
    }

    @Override
    public String humanAccessFlags(int i10) {
        return AccessFlags.methodString(i10);
    }

    @Override
    public String humanName() {
        return "method";
    }

    @Override
    public Member set(int i10, int i11, CstNat cstNat, AttributeList attributeList) {
        StdMethod stdMethod = new StdMethod(getDefiner(), i11, cstNat, attributeList);
        this.methods.set(i10, stdMethod);
        return stdMethod;
    }
}
