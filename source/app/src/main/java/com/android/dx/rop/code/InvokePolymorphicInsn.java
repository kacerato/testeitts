package com.android.dx.rop.code;

import com.android.dx.rop.code.Insn;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstProtoRef;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;

public class InvokePolymorphicInsn extends Insn {
    private static final CstString INVOKE_DESCRIPTOR = new CstString("([Ljava/lang/Object;)Ljava/lang/Object;");
    private final CstMethodRef callSiteMethod;
    private final CstProtoRef callSiteProto;
    private final TypeList catches;
    private final CstMethodRef invokeMethod;

    public InvokePolymorphicInsn(Rop rop, SourcePosition sourcePosition, RegisterSpecList registerSpecList, TypeList typeList, CstMethodRef cstMethodRef) {
        super(rop, sourcePosition, null, registerSpecList);
        if (rop.getBranchingness() != 6) {
            throw new IllegalArgumentException("opcode with invalid branchingness: " + rop.getBranchingness());
        }
        if (typeList == null) {
            throw new NullPointerException("catches == null");
        }
        this.catches = typeList;
        if (cstMethodRef == null) {
            throw new NullPointerException("callSiteMethod == null");
        }
        if (!cstMethodRef.isSignaturePolymorphic()) {
            throw new IllegalArgumentException("callSiteMethod is not signature polymorphic");
        }
        this.callSiteMethod = cstMethodRef;
        this.invokeMethod = makeInvokeMethod(cstMethodRef);
        this.callSiteProto = makeCallSiteProto(cstMethodRef);
    }

    private static CstProtoRef makeCallSiteProto(CstMethodRef cstMethodRef) {
        return new CstProtoRef(cstMethodRef.getPrototype(true));
    }

    private static CstMethodRef makeInvokeMethod(CstMethodRef cstMethodRef) {
        return new CstMethodRef(CstType.METHOD_HANDLE, new CstNat(cstMethodRef.getNat().getName(), INVOKE_DESCRIPTOR));
    }

    @Override
    public void accept(Insn.Visitor visitor) {
        visitor.visitInvokePolymorphicInsn(this);
    }

    public CstMethodRef getCallSiteMethod() {
        return this.callSiteMethod;
    }

    public CstProtoRef getCallSiteProto() {
        return this.callSiteProto;
    }

    @Override
    public TypeList getCatches() {
        return this.catches;
    }

    @Override
    public String getInlineString() {
        return getInvokeMethod().toString() + " " + getCallSiteProto().toString() + " " + ThrowingInsn.toCatchString(this.catches);
    }

    public CstMethodRef getInvokeMethod() {
        return this.invokeMethod;
    }

    @Override
    public Insn withAddedCatch(Type type) {
        return new InvokePolymorphicInsn(getOpcode(), getPosition(), getSources(), this.catches.withAddedType(type), getCallSiteMethod());
    }

    @Override
    public Insn withNewRegisters(RegisterSpec registerSpec, RegisterSpecList registerSpecList) {
        return new InvokePolymorphicInsn(getOpcode(), getPosition(), registerSpecList, this.catches, getCallSiteMethod());
    }

    @Override
    public Insn withRegisterOffset(int i10) {
        return new InvokePolymorphicInsn(getOpcode(), getPosition(), getSources().withOffset(i10), this.catches, getCallSiteMethod());
    }
}
