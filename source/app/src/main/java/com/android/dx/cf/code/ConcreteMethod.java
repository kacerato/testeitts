package com.android.dx.cf.code;

import com.android.dx.cf.attrib.AttCode;
import com.android.dx.cf.attrib.AttLineNumberTable;
import com.android.dx.cf.attrib.AttLocalVariableTable;
import com.android.dx.cf.attrib.AttLocalVariableTypeTable;
import com.android.dx.cf.iface.AttributeList;
import com.android.dx.cf.iface.ClassFile;
import com.android.dx.cf.iface.Method;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Prototype;

public final class ConcreteMethod implements Method {
    private final AttCode attCode;
    private final LineNumberList lineNumbers;
    private final LocalVariableList localVariables;
    private final Method method;
    private final CstString sourceFile;

    public ConcreteMethod(Method method, ClassFile classFile, boolean z10, boolean z11) {
        this(method, classFile.getSourceFile(), z10, z11);
    }

    @Override
    public int getAccessFlags() {
        return this.method.getAccessFlags();
    }

    @Override
    public AttributeList getAttributes() {
        return this.method.getAttributes();
    }

    public ByteCatchList getCatches() {
        return this.attCode.getCatches();
    }

    public BytecodeArray getCode() {
        return this.attCode.getCode();
    }

    @Override
    public CstType getDefiningClass() {
        return this.method.getDefiningClass();
    }

    @Override
    public CstString getDescriptor() {
        return this.method.getDescriptor();
    }

    @Override
    public Prototype getEffectiveDescriptor() {
        return this.method.getEffectiveDescriptor();
    }

    public LineNumberList getLineNumbers() {
        return this.lineNumbers;
    }

    public LocalVariableList getLocalVariables() {
        return this.localVariables;
    }

    public int getMaxLocals() {
        return this.attCode.getMaxLocals();
    }

    public int getMaxStack() {
        return this.attCode.getMaxStack();
    }

    @Override
    public CstString getName() {
        return this.method.getName();
    }

    @Override
    public CstNat getNat() {
        return this.method.getNat();
    }

    public SourcePosition makeSourcePosistion(int i10) {
        return new SourcePosition(this.sourceFile, i10, this.lineNumbers.pcToLine(i10));
    }

    public ConcreteMethod(Method method, CstString cstString, boolean z10, boolean z11) {
        this.method = method;
        this.sourceFile = cstString;
        AttCode attCode = (AttCode) method.getAttributes().findFirst("Code");
        this.attCode = attCode;
        AttributeList attributes = attCode.getAttributes();
        LineNumberList lineNumberList = LineNumberList.EMPTY;
        if (z10) {
            for (AttLineNumberTable attLineNumberTable = (AttLineNumberTable) attributes.findFirst("LineNumberTable"); attLineNumberTable != null; attLineNumberTable = (AttLineNumberTable) attributes.findNext(attLineNumberTable)) {
                lineNumberList = LineNumberList.concat(lineNumberList, attLineNumberTable.getLineNumbers());
            }
        }
        this.lineNumbers = lineNumberList;
        LocalVariableList localVariableList = LocalVariableList.EMPTY;
        if (z11) {
            for (AttLocalVariableTable attLocalVariableTable = (AttLocalVariableTable) attributes.findFirst("LocalVariableTable"); attLocalVariableTable != null; attLocalVariableTable = (AttLocalVariableTable) attributes.findNext(attLocalVariableTable)) {
                localVariableList = LocalVariableList.concat(localVariableList, attLocalVariableTable.getLocalVariables());
            }
            LocalVariableList localVariableList2 = LocalVariableList.EMPTY;
            for (AttLocalVariableTypeTable attLocalVariableTypeTable = (AttLocalVariableTypeTable) attributes.findFirst("LocalVariableTypeTable"); attLocalVariableTypeTable != null; attLocalVariableTypeTable = (AttLocalVariableTypeTable) attributes.findNext(attLocalVariableTypeTable)) {
                localVariableList2 = LocalVariableList.concat(localVariableList2, attLocalVariableTypeTable.getLocalVariables());
            }
            if (localVariableList2.size() != 0) {
                localVariableList = LocalVariableList.mergeDescriptorsAndSignatures(localVariableList, localVariableList2);
            }
        }
        this.localVariables = localVariableList;
    }
}
