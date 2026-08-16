package com.android.dx.rop.cst;

import com.android.dx.rop.type.Prototype;
import com.android.dx.rop.type.Type;

public abstract class CstBaseMethodRef extends CstMemberRef {
    private Prototype instancePrototype;
    private final Prototype prototype;

    public CstBaseMethodRef(CstType cstType, CstNat cstNat) {
        super(cstType, cstNat);
        String string = getNat().getDescriptor().getString();
        if (isSignaturePolymorphic()) {
            this.prototype = Prototype.fromDescriptor(string);
        } else {
            this.prototype = Prototype.intern(string);
        }
        this.instancePrototype = null;
    }

    @Override
    public final int compareTo0(Constant constant) {
        int compareTo0 = super.compareTo0(constant);
        return compareTo0 != 0 ? compareTo0 : this.prototype.compareTo(((CstBaseMethodRef) constant).prototype);
    }

    public final int getParameterWordCount(boolean z10) {
        return getPrototype(z10).getParameterTypes().getWordCount();
    }

    public final Prototype getPrototype() {
        return this.prototype;
    }

    @Override
    public final Type getType() {
        return this.prototype.getReturnType();
    }

    public final boolean isClassInit() {
        return getNat().isClassInit();
    }

    public final boolean isInstanceInit() {
        return getNat().isInstanceInit();
    }

    public final boolean isSignaturePolymorphic() {
        return getDefiningClass().equals(CstType.METHOD_HANDLE) && getNat().isSignaturePolymorphic();
    }

    public final Prototype getPrototype(boolean z10) {
        if (z10) {
            return this.prototype;
        }
        if (this.instancePrototype == null) {
            this.instancePrototype = this.prototype.withFirstParameter(getDefiningClass().getClassType());
        }
        return this.instancePrototype;
    }
}
