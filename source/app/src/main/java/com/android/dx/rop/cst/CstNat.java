package com.android.dx.rop.cst;

import com.android.dx.rop.type.Type;
import java.lang.constant.ConstantDescs;
import org.eclipse.jdt.internal.core.JavaElement;

public final class CstNat extends Constant {
    public static final CstNat PRIMITIVE_TYPE_NAT = new CstNat(new CstString("TYPE"), new CstString("Ljava/lang/Class;"));
    private final CstString descriptor;
    private final CstString name;

    public CstNat(CstString cstString, CstString cstString2) {
        if (cstString == null) {
            throw new NullPointerException("name == null");
        }
        if (cstString2 == null) {
            throw new NullPointerException("descriptor == null");
        }
        this.name = cstString;
        this.descriptor = cstString2;
    }

    @Override
    public int compareTo0(Constant constant) {
        CstNat cstNat = (CstNat) constant;
        int compareTo = this.name.compareTo((Constant) cstNat.name);
        return compareTo != 0 ? compareTo : this.descriptor.compareTo((Constant) cstNat.descriptor);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CstNat)) {
            return false;
        }
        CstNat cstNat = (CstNat) obj;
        return this.name.equals(cstNat.name) && this.descriptor.equals(cstNat.descriptor);
    }

    public CstString getDescriptor() {
        return this.descriptor;
    }

    public Type getFieldType() {
        return Type.intern(this.descriptor.getString());
    }

    public CstString getName() {
        return this.name;
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) ^ this.descriptor.hashCode();
    }

    @Override
    public boolean isCategory2() {
        return false;
    }

    public final boolean isClassInit() {
        return this.name.getString().equals(ConstantDescs.CLASS_INIT_NAME);
    }

    public final boolean isInstanceInit() {
        return this.name.getString().equals(ConstantDescs.INIT_NAME);
    }

    public final boolean isSignaturePolymorphic() {
        int utf8Size = this.name.getUtf8Size();
        if (utf8Size == 6) {
            return this.name.getString().equals("invoke");
        }
        if (utf8Size == 11) {
            return this.name.getString().equals("invokeExact");
        }
        return false;
    }

    @Override
    public String toHuman() {
        return this.name.toHuman() + ':' + this.descriptor.toHuman();
    }

    public String toString() {
        return "nat{" + toHuman() + JavaElement.JEM_ANNOTATION;
    }

    @Override
    public String typeName() {
        return "nat";
    }
}
