package com.android.dx.cf.iface;

import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import org.eclipse.jdt.internal.core.JavaElement;

public abstract class StdMember implements Member {
    private final int accessFlags;
    private final AttributeList attributes;
    private final CstType definingClass;
    private final CstNat nat;

    public StdMember(CstType cstType, int i10, CstNat cstNat, AttributeList attributeList) {
        if (cstType == null) {
            throw new NullPointerException("definingClass == null");
        }
        if (cstNat == null) {
            throw new NullPointerException("nat == null");
        }
        if (attributeList == null) {
            throw new NullPointerException("attributes == null");
        }
        this.definingClass = cstType;
        this.accessFlags = i10;
        this.nat = cstNat;
        this.attributes = attributeList;
    }

    @Override
    public final int getAccessFlags() {
        return this.accessFlags;
    }

    @Override
    public final AttributeList getAttributes() {
        return this.attributes;
    }

    @Override
    public final CstType getDefiningClass() {
        return this.definingClass;
    }

    @Override
    public final CstString getDescriptor() {
        return this.nat.getDescriptor();
    }

    @Override
    public final CstString getName() {
        return this.nat.getName();
    }

    @Override
    public final CstNat getNat() {
        return this.nat;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(100);
        stringBuffer.append(getClass().getName());
        stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
        stringBuffer.append(this.nat.toHuman());
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
        return stringBuffer.toString();
    }
}
