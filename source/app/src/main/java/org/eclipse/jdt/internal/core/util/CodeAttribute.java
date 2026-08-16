package org.eclipse.jdt.internal.core.util;

import java.lang.reflect.Array;
import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAttributeNamesConstants;
import org.eclipse.jdt.core.util.IBytecodeVisitor;
import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.ICodeAttribute;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IExceptionTableEntry;
import org.eclipse.jdt.core.util.ILineNumberAttribute;
import org.eclipse.jdt.core.util.ILocalVariableAttribute;

public class CodeAttribute extends ClassFileAttribute implements ICodeAttribute {
    private static final IExceptionTableEntry[] NO_EXCEPTION_TABLE = new IExceptionTableEntry[0];
    private IClassFileAttribute[] attributes;
    private int attributesCount;
    private byte[] bytecodes;
    private byte[] classFileBytes;
    private long codeLength;
    private int codeOffset;
    private IConstantPool constantPool;
    private IExceptionTableEntry[] exceptionTableEntries;
    private int exceptionTableLength;
    private ILineNumberAttribute lineNumberAttribute;
    private ILocalVariableAttribute localVariableAttribute;
    private int maxLocals;
    private int maxStack;

    public CodeAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int i11;
        int i12;
        this.classFileBytes = bArr;
        this.constantPool = iConstantPool;
        this.maxStack = u2At(bArr, 6, i10);
        this.maxLocals = u2At(bArr, 8, i10);
        long u4At = u4At(bArr, 10, i10);
        this.codeLength = u4At;
        this.codeOffset = i10 + 14;
        int i13 = (int) (u4At + 14);
        int u2At = u2At(bArr, i13, i10);
        this.exceptionTableLength = u2At;
        int i14 = i13 + 2;
        this.exceptionTableEntries = NO_EXCEPTION_TABLE;
        if (u2At != 0) {
            this.exceptionTableEntries = new ExceptionTableEntry[u2At];
            for (int i15 = 0; i15 < this.exceptionTableLength; i15++) {
                this.exceptionTableEntries[i15] = new ExceptionTableEntry(bArr, iConstantPool, i10 + i14);
                i14 += 8;
            }
        }
        int u2At2 = u2At(bArr, i14, i10);
        this.attributesCount = u2At2;
        this.attributes = ClassFileAttribute.NO_ATTRIBUTES;
        if (u2At2 != 0) {
            this.attributes = new IClassFileAttribute[u2At2];
        }
        int i16 = i14 + 2;
        int i17 = 0;
        for (int i18 = 0; i18 < this.attributesCount; i18++) {
            IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(u2At(bArr, i16, i10));
            if (decodeEntry.getKind() != 1) {
                throw new ClassFormatException(3);
            }
            char[] utf8Value = decodeEntry.getUtf8Value();
            if (equals(utf8Value, IAttributeNamesConstants.LINE_NUMBER)) {
                LineNumberAttribute lineNumberAttribute = new LineNumberAttribute(bArr, iConstantPool, i10 + i16);
                this.lineNumberAttribute = lineNumberAttribute;
                i12 = i17 + 1;
                this.attributes[i17] = lineNumberAttribute;
            } else if (equals(utf8Value, IAttributeNamesConstants.LOCAL_VARIABLE)) {
                LocalVariableAttribute localVariableAttribute = new LocalVariableAttribute(bArr, iConstantPool, i10 + i16);
                this.localVariableAttribute = localVariableAttribute;
                i12 = i17 + 1;
                this.attributes[i17] = localVariableAttribute;
            } else {
                if (equals(utf8Value, IAttributeNamesConstants.LOCAL_VARIABLE_TYPE_TABLE)) {
                    i11 = i17 + 1;
                    this.attributes[i17] = new LocalVariableTypeAttribute(bArr, iConstantPool, i10 + i16);
                } else if (equals(utf8Value, IAttributeNamesConstants.STACK_MAP_TABLE)) {
                    i11 = i17 + 1;
                    this.attributes[i17] = new StackMapTableAttribute(bArr, iConstantPool, i10 + i16);
                } else if (equals(utf8Value, IAttributeNamesConstants.STACK_MAP)) {
                    i11 = i17 + 1;
                    this.attributes[i17] = new StackMapAttribute(bArr, iConstantPool, i10 + i16);
                } else if (equals(utf8Value, IAttributeNamesConstants.RUNTIME_VISIBLE_TYPE_ANNOTATIONS)) {
                    i11 = i17 + 1;
                    this.attributes[i17] = new RuntimeVisibleTypeAnnotationsAttribute(bArr, iConstantPool, i10 + i16);
                } else if (equals(utf8Value, IAttributeNamesConstants.RUNTIME_INVISIBLE_TYPE_ANNOTATIONS)) {
                    i11 = i17 + 1;
                    this.attributes[i17] = new RuntimeInvisibleTypeAnnotationsAttribute(bArr, iConstantPool, i10 + i16);
                } else {
                    i11 = i17 + 1;
                    this.attributes[i17] = new ClassFileAttribute(bArr, iConstantPool, i10 + i16);
                }
                i17 = i11;
                i16 = (int) (i16 + u4At(bArr, i16 + 2, i10) + 6);
            }
            i17 = i12;
            i16 = (int) (i16 + u4At(bArr, i16 + 2, i10) + 6);
        }
    }

    private void checkConstantAndThrow(int i10) throws ClassFormatException {
        if (i10 == 5 || i10 == 6) {
            throw new ClassFormatException(3);
        }
    }

    @Override
    public IClassFileAttribute[] getAttributes() {
        return this.attributes;
    }

    @Override
    public int getAttributesCount() {
        return this.attributesCount;
    }

    @Override
    public byte[] getBytecodes() {
        if (this.bytecodes == null) {
            byte[] bArr = this.classFileBytes;
            int i10 = this.codeOffset;
            long j10 = this.codeLength;
            byte[] bArr2 = new byte[(int) j10];
            this.bytecodes = bArr2;
            System.arraycopy(bArr, i10, bArr2, 0, (int) j10);
        }
        return this.bytecodes;
    }

    @Override
    public long getCodeLength() {
        return this.codeLength;
    }

    @Override
    public IExceptionTableEntry[] getExceptionTable() {
        return this.exceptionTableEntries;
    }

    @Override
    public int getExceptionTableLength() {
        return this.exceptionTableLength;
    }

    @Override
    public ILineNumberAttribute getLineNumberAttribute() {
        return this.lineNumberAttribute;
    }

    @Override
    public ILocalVariableAttribute getLocalVariableAttribute() {
        return this.localVariableAttribute;
    }

    @Override
    public int getMaxLocals() {
        return this.maxLocals;
    }

    @Override
    public int getMaxStack() {
        return this.maxStack;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x001e. Please report as an issue. */
    @Override
    public void traverse(IBytecodeVisitor iBytecodeVisitor) throws ClassFormatException {
        int i10;
        int i11 = this.codeOffset;
        do {
            int u1At = u1At(this.classFileBytes, 0, i11);
            if (u1At == 254) {
                iBytecodeVisitor._impdep1(i11 - this.codeOffset);
            } else if (u1At != 255) {
                switch (u1At) {
                    case 0:
                        iBytecodeVisitor._nop(i11 - this.codeOffset);
                        break;
                    case 1:
                        iBytecodeVisitor._aconst_null(i11 - this.codeOffset);
                        break;
                    case 2:
                        iBytecodeVisitor._iconst_m1(i11 - this.codeOffset);
                        break;
                    case 3:
                        iBytecodeVisitor._iconst_0(i11 - this.codeOffset);
                        break;
                    case 4:
                        iBytecodeVisitor._iconst_1(i11 - this.codeOffset);
                        break;
                    case 5:
                        iBytecodeVisitor._iconst_2(i11 - this.codeOffset);
                        break;
                    case 6:
                        iBytecodeVisitor._iconst_3(i11 - this.codeOffset);
                        break;
                    case 7:
                        iBytecodeVisitor._iconst_4(i11 - this.codeOffset);
                        break;
                    case 8:
                        iBytecodeVisitor._iconst_5(i11 - this.codeOffset);
                        break;
                    case 9:
                        iBytecodeVisitor._lconst_0(i11 - this.codeOffset);
                        break;
                    case 10:
                        iBytecodeVisitor._lconst_1(i11 - this.codeOffset);
                        break;
                    case 11:
                        iBytecodeVisitor._fconst_0(i11 - this.codeOffset);
                        break;
                    case 12:
                        iBytecodeVisitor._fconst_1(i11 - this.codeOffset);
                        break;
                    case 13:
                        iBytecodeVisitor._fconst_2(i11 - this.codeOffset);
                        break;
                    case 14:
                        iBytecodeVisitor._dconst_0(i11 - this.codeOffset);
                        break;
                    case 15:
                        iBytecodeVisitor._dconst_1(i11 - this.codeOffset);
                        break;
                    case 16:
                        iBytecodeVisitor._bipush(i11 - this.codeOffset, (byte) i1At(this.classFileBytes, 1, i11));
                        i11 += 2;
                        break;
                    case 17:
                        iBytecodeVisitor._sipush(i11 - this.codeOffset, (short) i2At(this.classFileBytes, 1, i11));
                        i11 += 3;
                        break;
                    case 18:
                        int u1At2 = u1At(this.classFileBytes, 1, i11);
                        IConstantPoolEntry decodeEntry = this.constantPool.decodeEntry(u1At2);
                        checkConstantAndThrow(decodeEntry.getKind());
                        iBytecodeVisitor._ldc(i11 - this.codeOffset, u1At2, decodeEntry);
                        i11 += 2;
                        break;
                    case 19:
                        int u2At = u2At(this.classFileBytes, 1, i11);
                        IConstantPoolEntry decodeEntry2 = this.constantPool.decodeEntry(u2At);
                        checkConstantAndThrow(decodeEntry2.getKind());
                        iBytecodeVisitor._ldc_w(i11 - this.codeOffset, u2At, decodeEntry2);
                        i11 += 3;
                        break;
                    case 20:
                        int u2At2 = u2At(this.classFileBytes, 1, i11);
                        IConstantPoolEntry decodeEntry3 = this.constantPool.decodeEntry(u2At2);
                        if (decodeEntry3.getKind() != 6 && decodeEntry3.getKind() != 5) {
                            throw new ClassFormatException(3);
                        }
                        iBytecodeVisitor._ldc2_w(i11 - this.codeOffset, u2At2, decodeEntry3);
                        i11 += 3;
                        break;
                        break;
                    case 21:
                        iBytecodeVisitor._iload(i11 - this.codeOffset, u1At(this.classFileBytes, 1, i11));
                        i11 += 2;
                        break;
                    case 22:
                        iBytecodeVisitor._lload(i11 - this.codeOffset, u1At(this.classFileBytes, 1, i11));
                        i11 += 2;
                        break;
                    case 23:
                        iBytecodeVisitor._fload(i11 - this.codeOffset, u1At(this.classFileBytes, 1, i11));
                        i11 += 2;
                        break;
                    case 24:
                        iBytecodeVisitor._dload(i11 - this.codeOffset, u1At(this.classFileBytes, 1, i11));
                        i11 += 2;
                        break;
                    case 25:
                        iBytecodeVisitor._aload(i11 - this.codeOffset, u1At(this.classFileBytes, 1, i11));
                        i11 += 2;
                        break;
                    case 26:
                        iBytecodeVisitor._iload_0(i11 - this.codeOffset);
                        break;
                    case 27:
                        iBytecodeVisitor._iload_1(i11 - this.codeOffset);
                        break;
                    case 28:
                        iBytecodeVisitor._iload_2(i11 - this.codeOffset);
                        break;
                    case 29:
                        iBytecodeVisitor._iload_3(i11 - this.codeOffset);
                        break;
                    case 30:
                        iBytecodeVisitor._lload_0(i11 - this.codeOffset);
                        break;
                    case 31:
                        iBytecodeVisitor._lload_1(i11 - this.codeOffset);
                        break;
                    case 32:
                        iBytecodeVisitor._lload_2(i11 - this.codeOffset);
                        break;
                    case 33:
                        iBytecodeVisitor._lload_3(i11 - this.codeOffset);
                        break;
                    case 34:
                        iBytecodeVisitor._fload_0(i11 - this.codeOffset);
                        break;
                    case 35:
                        iBytecodeVisitor._fload_1(i11 - this.codeOffset);
                        break;
                    case 36:
                        iBytecodeVisitor._fload_2(i11 - this.codeOffset);
                        break;
                    case 37:
                        iBytecodeVisitor._fload_3(i11 - this.codeOffset);
                        break;
                    case 38:
                        iBytecodeVisitor._dload_0(i11 - this.codeOffset);
                        break;
                    case 39:
                        iBytecodeVisitor._dload_1(i11 - this.codeOffset);
                        break;
                    case 40:
                        iBytecodeVisitor._dload_2(i11 - this.codeOffset);
                        break;
                    case 41:
                        iBytecodeVisitor._dload_3(i11 - this.codeOffset);
                        break;
                    case 42:
                        iBytecodeVisitor._aload_0(i11 - this.codeOffset);
                        break;
                    case 43:
                        iBytecodeVisitor._aload_1(i11 - this.codeOffset);
                        break;
                    case 44:
                        iBytecodeVisitor._aload_2(i11 - this.codeOffset);
                        break;
                    case 45:
                        iBytecodeVisitor._aload_3(i11 - this.codeOffset);
                        break;
                    case 46:
                        iBytecodeVisitor._iaload(i11 - this.codeOffset);
                        break;
                    case 47:
                        iBytecodeVisitor._laload(i11 - this.codeOffset);
                        break;
                    case 48:
                        iBytecodeVisitor._faload(i11 - this.codeOffset);
                        break;
                    case 49:
                        iBytecodeVisitor._daload(i11 - this.codeOffset);
                        break;
                    case 50:
                        iBytecodeVisitor._aaload(i11 - this.codeOffset);
                        break;
                    case 51:
                        iBytecodeVisitor._baload(i11 - this.codeOffset);
                        break;
                    case 52:
                        iBytecodeVisitor._caload(i11 - this.codeOffset);
                        break;
                    case 53:
                        iBytecodeVisitor._saload(i11 - this.codeOffset);
                        break;
                    case 54:
                        iBytecodeVisitor._istore(i11 - this.codeOffset, u1At(this.classFileBytes, 1, i11));
                        i11 += 2;
                        break;
                    case 55:
                        iBytecodeVisitor._lstore(i11 - this.codeOffset, u1At(this.classFileBytes, 1, i11));
                        i11 += 2;
                        break;
                    case 56:
                        iBytecodeVisitor._fstore(i11 - this.codeOffset, u1At(this.classFileBytes, 1, i11));
                        i11 += 2;
                        break;
                    case 57:
                        iBytecodeVisitor._dstore(i11 - this.codeOffset, u1At(this.classFileBytes, 1, i11));
                        i11 += 2;
                        break;
                    case 58:
                        iBytecodeVisitor._astore(i11 - this.codeOffset, u1At(this.classFileBytes, 1, i11));
                        i11 += 2;
                        break;
                    case 59:
                        iBytecodeVisitor._istore_0(i11 - this.codeOffset);
                        break;
                    case 60:
                        iBytecodeVisitor._istore_1(i11 - this.codeOffset);
                        break;
                    case 61:
                        iBytecodeVisitor._istore_2(i11 - this.codeOffset);
                        break;
                    case 62:
                        iBytecodeVisitor._istore_3(i11 - this.codeOffset);
                        break;
                    case 63:
                        iBytecodeVisitor._lstore_0(i11 - this.codeOffset);
                        break;
                    case 64:
                        iBytecodeVisitor._lstore_1(i11 - this.codeOffset);
                        break;
                    case 65:
                        iBytecodeVisitor._lstore_2(i11 - this.codeOffset);
                        break;
                    case 66:
                        iBytecodeVisitor._lstore_3(i11 - this.codeOffset);
                        break;
                    case 67:
                        iBytecodeVisitor._fstore_0(i11 - this.codeOffset);
                        break;
                    case 68:
                        iBytecodeVisitor._fstore_1(i11 - this.codeOffset);
                        break;
                    case 69:
                        iBytecodeVisitor._fstore_2(i11 - this.codeOffset);
                        break;
                    case 70:
                        iBytecodeVisitor._fstore_3(i11 - this.codeOffset);
                        break;
                    case 71:
                        iBytecodeVisitor._dstore_0(i11 - this.codeOffset);
                        break;
                    case 72:
                        iBytecodeVisitor._dstore_1(i11 - this.codeOffset);
                        break;
                    case 73:
                        iBytecodeVisitor._dstore_2(i11 - this.codeOffset);
                        break;
                    case 74:
                        iBytecodeVisitor._dstore_3(i11 - this.codeOffset);
                        break;
                    case 75:
                        iBytecodeVisitor._astore_0(i11 - this.codeOffset);
                        break;
                    case 76:
                        iBytecodeVisitor._astore_1(i11 - this.codeOffset);
                        break;
                    case 77:
                        iBytecodeVisitor._astore_2(i11 - this.codeOffset);
                        break;
                    case 78:
                        iBytecodeVisitor._astore_3(i11 - this.codeOffset);
                        break;
                    case 79:
                        iBytecodeVisitor._iastore(i11 - this.codeOffset);
                        break;
                    case 80:
                        iBytecodeVisitor._lastore(i11 - this.codeOffset);
                        break;
                    case 81:
                        iBytecodeVisitor._fastore(i11 - this.codeOffset);
                        break;
                    case 82:
                        iBytecodeVisitor._dastore(i11 - this.codeOffset);
                        break;
                    case 83:
                        iBytecodeVisitor._aastore(i11 - this.codeOffset);
                        break;
                    case 84:
                        iBytecodeVisitor._bastore(i11 - this.codeOffset);
                        break;
                    case 85:
                        iBytecodeVisitor._castore(i11 - this.codeOffset);
                        break;
                    case 86:
                        iBytecodeVisitor._sastore(i11 - this.codeOffset);
                        break;
                    case 87:
                        iBytecodeVisitor._pop(i11 - this.codeOffset);
                        break;
                    case 88:
                        iBytecodeVisitor._pop2(i11 - this.codeOffset);
                        break;
                    case 89:
                        iBytecodeVisitor._dup(i11 - this.codeOffset);
                        break;
                    case 90:
                        iBytecodeVisitor._dup_x1(i11 - this.codeOffset);
                        break;
                    case 91:
                        iBytecodeVisitor._dup_x2(i11 - this.codeOffset);
                        break;
                    case 92:
                        iBytecodeVisitor._dup2(i11 - this.codeOffset);
                        break;
                    case 93:
                        iBytecodeVisitor._dup2_x1(i11 - this.codeOffset);
                        break;
                    case 94:
                        iBytecodeVisitor._dup2_x2(i11 - this.codeOffset);
                        break;
                    case 95:
                        iBytecodeVisitor._swap(i11 - this.codeOffset);
                        break;
                    case 96:
                        iBytecodeVisitor._iadd(i11 - this.codeOffset);
                        break;
                    case 97:
                        iBytecodeVisitor._ladd(i11 - this.codeOffset);
                        break;
                    case 98:
                        iBytecodeVisitor._fadd(i11 - this.codeOffset);
                        break;
                    case 99:
                        iBytecodeVisitor._dadd(i11 - this.codeOffset);
                        break;
                    case 100:
                        iBytecodeVisitor._isub(i11 - this.codeOffset);
                        break;
                    case 101:
                        iBytecodeVisitor._lsub(i11 - this.codeOffset);
                        break;
                    case 102:
                        iBytecodeVisitor._fsub(i11 - this.codeOffset);
                        break;
                    case 103:
                        iBytecodeVisitor._dsub(i11 - this.codeOffset);
                        break;
                    case 104:
                        iBytecodeVisitor._imul(i11 - this.codeOffset);
                        break;
                    case 105:
                        iBytecodeVisitor._lmul(i11 - this.codeOffset);
                        break;
                    case 106:
                        iBytecodeVisitor._fmul(i11 - this.codeOffset);
                        break;
                    case 107:
                        iBytecodeVisitor._dmul(i11 - this.codeOffset);
                        break;
                    case 108:
                        iBytecodeVisitor._idiv(i11 - this.codeOffset);
                        break;
                    case 109:
                        iBytecodeVisitor._ldiv(i11 - this.codeOffset);
                        break;
                    case 110:
                        iBytecodeVisitor._fdiv(i11 - this.codeOffset);
                        break;
                    case 111:
                        iBytecodeVisitor._ddiv(i11 - this.codeOffset);
                        break;
                    case 112:
                        iBytecodeVisitor._irem(i11 - this.codeOffset);
                        break;
                    case 113:
                        iBytecodeVisitor._lrem(i11 - this.codeOffset);
                        break;
                    case 114:
                        iBytecodeVisitor._frem(i11 - this.codeOffset);
                        break;
                    case 115:
                        iBytecodeVisitor._drem(i11 - this.codeOffset);
                        break;
                    case 116:
                        iBytecodeVisitor._ineg(i11 - this.codeOffset);
                        break;
                    case 117:
                        iBytecodeVisitor._lneg(i11 - this.codeOffset);
                        break;
                    case 118:
                        iBytecodeVisitor._fneg(i11 - this.codeOffset);
                        break;
                    case 119:
                        iBytecodeVisitor._dneg(i11 - this.codeOffset);
                        break;
                    case 120:
                        iBytecodeVisitor._ishl(i11 - this.codeOffset);
                        break;
                    case 121:
                        iBytecodeVisitor._lshl(i11 - this.codeOffset);
                        break;
                    case 122:
                        iBytecodeVisitor._ishr(i11 - this.codeOffset);
                        break;
                    case 123:
                        iBytecodeVisitor._lshr(i11 - this.codeOffset);
                        break;
                    case 124:
                        iBytecodeVisitor._iushr(i11 - this.codeOffset);
                        break;
                    case 125:
                        iBytecodeVisitor._lushr(i11 - this.codeOffset);
                        break;
                    case 126:
                        iBytecodeVisitor._iand(i11 - this.codeOffset);
                        break;
                    case 127:
                        iBytecodeVisitor._land(i11 - this.codeOffset);
                        break;
                    case 128:
                        iBytecodeVisitor._ior(i11 - this.codeOffset);
                        break;
                    case 129:
                        iBytecodeVisitor._lor(i11 - this.codeOffset);
                        break;
                    case 130:
                        iBytecodeVisitor._ixor(i11 - this.codeOffset);
                        break;
                    case 131:
                        iBytecodeVisitor._lxor(i11 - this.codeOffset);
                        break;
                    case 132:
                        iBytecodeVisitor._iinc(i11 - this.codeOffset, u1At(this.classFileBytes, 1, i11), i1At(this.classFileBytes, 2, i11));
                        i11 += 3;
                        break;
                    case 133:
                        iBytecodeVisitor._i2l(i11 - this.codeOffset);
                        break;
                    case 134:
                        iBytecodeVisitor._i2f(i11 - this.codeOffset);
                        break;
                    case 135:
                        iBytecodeVisitor._i2d(i11 - this.codeOffset);
                        break;
                    case 136:
                        iBytecodeVisitor._l2i(i11 - this.codeOffset);
                        break;
                    case 137:
                        iBytecodeVisitor._l2f(i11 - this.codeOffset);
                        break;
                    case 138:
                        iBytecodeVisitor._l2d(i11 - this.codeOffset);
                        break;
                    case 139:
                        iBytecodeVisitor._f2i(i11 - this.codeOffset);
                        break;
                    case 140:
                        iBytecodeVisitor._f2l(i11 - this.codeOffset);
                        break;
                    case 141:
                        iBytecodeVisitor._f2d(i11 - this.codeOffset);
                        break;
                    case 142:
                        iBytecodeVisitor._d2i(i11 - this.codeOffset);
                        break;
                    case 143:
                        iBytecodeVisitor._d2l(i11 - this.codeOffset);
                        break;
                    case 144:
                        iBytecodeVisitor._d2f(i11 - this.codeOffset);
                        break;
                    case 145:
                        iBytecodeVisitor._i2b(i11 - this.codeOffset);
                        break;
                    case 146:
                        iBytecodeVisitor._i2c(i11 - this.codeOffset);
                        break;
                    case 147:
                        iBytecodeVisitor._i2s(i11 - this.codeOffset);
                        break;
                    case 148:
                        iBytecodeVisitor._lcmp(i11 - this.codeOffset);
                        break;
                    case 149:
                        iBytecodeVisitor._fcmpl(i11 - this.codeOffset);
                        break;
                    case 150:
                        iBytecodeVisitor._fcmpg(i11 - this.codeOffset);
                        break;
                    case 151:
                        iBytecodeVisitor._dcmpl(i11 - this.codeOffset);
                        break;
                    case 152:
                        iBytecodeVisitor._dcmpg(i11 - this.codeOffset);
                        break;
                    case 153:
                        iBytecodeVisitor._ifeq(i11 - this.codeOffset, i2At(this.classFileBytes, 1, i11));
                        i11 += 3;
                        break;
                    case 154:
                        iBytecodeVisitor._ifne(i11 - this.codeOffset, i2At(this.classFileBytes, 1, i11));
                        i11 += 3;
                        break;
                    case 155:
                        iBytecodeVisitor._iflt(i11 - this.codeOffset, i2At(this.classFileBytes, 1, i11));
                        i11 += 3;
                        break;
                    case 156:
                        iBytecodeVisitor._ifge(i11 - this.codeOffset, i2At(this.classFileBytes, 1, i11));
                        i11 += 3;
                        break;
                    case 157:
                        iBytecodeVisitor._ifgt(i11 - this.codeOffset, i2At(this.classFileBytes, 1, i11));
                        i11 += 3;
                        break;
                    case 158:
                        iBytecodeVisitor._ifle(i11 - this.codeOffset, i2At(this.classFileBytes, 1, i11));
                        i11 += 3;
                        break;
                    case 159:
                        iBytecodeVisitor._if_icmpeq(i11 - this.codeOffset, i2At(this.classFileBytes, 1, i11));
                        i11 += 3;
                        break;
                    case 160:
                        iBytecodeVisitor._if_icmpne(i11 - this.codeOffset, i2At(this.classFileBytes, 1, i11));
                        i11 += 3;
                        break;
                    case 161:
                        iBytecodeVisitor._if_icmplt(i11 - this.codeOffset, i2At(this.classFileBytes, 1, i11));
                        i11 += 3;
                        break;
                    case 162:
                        iBytecodeVisitor._if_icmpge(i11 - this.codeOffset, i2At(this.classFileBytes, 1, i11));
                        i11 += 3;
                        break;
                    case 163:
                        iBytecodeVisitor._if_icmpgt(i11 - this.codeOffset, i2At(this.classFileBytes, 1, i11));
                        i11 += 3;
                        break;
                    case 164:
                        iBytecodeVisitor._if_icmple(i11 - this.codeOffset, i2At(this.classFileBytes, 1, i11));
                        i11 += 3;
                        break;
                    case 165:
                        iBytecodeVisitor._if_acmpeq(i11 - this.codeOffset, i2At(this.classFileBytes, 1, i11));
                        i11 += 3;
                        break;
                    case 166:
                        iBytecodeVisitor._if_acmpne(i11 - this.codeOffset, i2At(this.classFileBytes, 1, i11));
                        i11 += 3;
                        break;
                    case 167:
                        iBytecodeVisitor._goto(i11 - this.codeOffset, i2At(this.classFileBytes, 1, i11));
                        i11 += 3;
                        break;
                    case 168:
                        iBytecodeVisitor._jsr(i11 - this.codeOffset, i2At(this.classFileBytes, 1, i11));
                        i11 += 3;
                        break;
                    case 169:
                        iBytecodeVisitor._ret(i11 - this.codeOffset, u1At(this.classFileBytes, 1, i11));
                        i11 += 2;
                        break;
                    case 170:
                        int i12 = i11 + 1;
                        while (((i12 - this.codeOffset) & 3) != 0) {
                            i12++;
                        }
                        int i4At = i4At(this.classFileBytes, 0, i12);
                        int i4At2 = i4At(this.classFileBytes, 0, i12 + 4);
                        int i4At3 = i4At(this.classFileBytes, 0, i12 + 8);
                        i10 = i12 + 12;
                        int i13 = (i4At3 - i4At2) + 1;
                        int[] iArr = new int[i13];
                        for (int i14 = 0; i14 < i13; i14++) {
                            iArr[i14] = i4At(this.classFileBytes, 0, i10);
                            i10 += 4;
                        }
                        iBytecodeVisitor._tableswitch(i11 - this.codeOffset, i4At, i4At2, i4At3, iArr);
                        i11 = i10;
                        break;
                    case 171:
                        int i15 = i11 + 1;
                        while (((i15 - this.codeOffset) & 3) != 0) {
                            i15++;
                        }
                        int i4At4 = i4At(this.classFileBytes, 0, i15);
                        int u4At = (int) u4At(this.classFileBytes, 0, i15 + 4);
                        int[][] iArr2 = (int[][]) Array.newInstance(Integer.TYPE, u4At, 2);
                        i10 = i15 + 8;
                        for (int i16 = 0; i16 < u4At; i16++) {
                            iArr2[i16][0] = i4At(this.classFileBytes, 0, i10);
                            iArr2[i16][1] = i4At(this.classFileBytes, 0, i10 + 4);
                            i10 += 8;
                        }
                        iBytecodeVisitor._lookupswitch(i11 - this.codeOffset, i4At4, u4At, iArr2);
                        i11 = i10;
                        break;
                    case 172:
                        iBytecodeVisitor._ireturn(i11 - this.codeOffset);
                        break;
                    case 173:
                        iBytecodeVisitor._lreturn(i11 - this.codeOffset);
                        break;
                    case 174:
                        iBytecodeVisitor._freturn(i11 - this.codeOffset);
                        break;
                    case 175:
                        iBytecodeVisitor._dreturn(i11 - this.codeOffset);
                        break;
                    case 176:
                        iBytecodeVisitor._areturn(i11 - this.codeOffset);
                        break;
                    case 177:
                        iBytecodeVisitor._return(i11 - this.codeOffset);
                        break;
                    case 178:
                        int u2At3 = u2At(this.classFileBytes, 1, i11);
                        IConstantPoolEntry decodeEntry4 = this.constantPool.decodeEntry(u2At3);
                        if (decodeEntry4.getKind() != 9) {
                            throw new ClassFormatException(3);
                        }
                        iBytecodeVisitor._getstatic(i11 - this.codeOffset, u2At3, decodeEntry4);
                        i11 += 3;
                        break;
                    case 179:
                        int u2At4 = u2At(this.classFileBytes, 1, i11);
                        IConstantPoolEntry decodeEntry5 = this.constantPool.decodeEntry(u2At4);
                        if (decodeEntry5.getKind() != 9) {
                            throw new ClassFormatException(3);
                        }
                        iBytecodeVisitor._putstatic(i11 - this.codeOffset, u2At4, decodeEntry5);
                        i11 += 3;
                        break;
                    case 180:
                        int u2At5 = u2At(this.classFileBytes, 1, i11);
                        IConstantPoolEntry decodeEntry6 = this.constantPool.decodeEntry(u2At5);
                        if (decodeEntry6.getKind() != 9) {
                            throw new ClassFormatException(3);
                        }
                        iBytecodeVisitor._getfield(i11 - this.codeOffset, u2At5, decodeEntry6);
                        i11 += 3;
                        break;
                    case 181:
                        int u2At6 = u2At(this.classFileBytes, 1, i11);
                        IConstantPoolEntry decodeEntry7 = this.constantPool.decodeEntry(u2At6);
                        if (decodeEntry7.getKind() != 9) {
                            throw new ClassFormatException(3);
                        }
                        iBytecodeVisitor._putfield(i11 - this.codeOffset, u2At6, decodeEntry7);
                        i11 += 3;
                        break;
                    case 182:
                        int u2At7 = u2At(this.classFileBytes, 1, i11);
                        IConstantPoolEntry decodeEntry8 = this.constantPool.decodeEntry(u2At7);
                        if (decodeEntry8.getKind() != 10) {
                            throw new ClassFormatException(3);
                        }
                        iBytecodeVisitor._invokevirtual(i11 - this.codeOffset, u2At7, decodeEntry8);
                        i11 += 3;
                        break;
                    case 183:
                        int u2At8 = u2At(this.classFileBytes, 1, i11);
                        IConstantPoolEntry decodeEntry9 = this.constantPool.decodeEntry(u2At8);
                        if (decodeEntry9.getKind() != 10 && decodeEntry9.getKind() != 11) {
                            throw new ClassFormatException(3);
                        }
                        iBytecodeVisitor._invokespecial(i11 - this.codeOffset, u2At8, decodeEntry9);
                        i11 += 3;
                        break;
                        break;
                    case 184:
                        int u2At9 = u2At(this.classFileBytes, 1, i11);
                        IConstantPoolEntry decodeEntry10 = this.constantPool.decodeEntry(u2At9);
                        if (decodeEntry10.getKind() != 10 && decodeEntry10.getKind() != 11) {
                            throw new ClassFormatException(3);
                        }
                        iBytecodeVisitor._invokestatic(i11 - this.codeOffset, u2At9, decodeEntry10);
                        i11 += 3;
                        break;
                    case 185:
                        int u2At10 = u2At(this.classFileBytes, 1, i11);
                        IConstantPoolEntry decodeEntry11 = this.constantPool.decodeEntry(u2At10);
                        if (decodeEntry11.getKind() != 11) {
                            throw new ClassFormatException(3);
                        }
                        byte u1At3 = (byte) u1At(this.classFileBytes, 3, i11);
                        if (u1At(this.classFileBytes, 4, i11) != 0) {
                            throw new ClassFormatException(5);
                        }
                        iBytecodeVisitor._invokeinterface(i11 - this.codeOffset, u2At10, u1At3, decodeEntry11);
                        i11 += 5;
                        break;
                    case 186:
                        int u2At11 = u2At(this.classFileBytes, 1, i11);
                        IConstantPoolEntry decodeEntry12 = this.constantPool.decodeEntry(u2At11);
                        if (decodeEntry12.getKind() != 18) {
                            throw new ClassFormatException(3);
                        }
                        iBytecodeVisitor._invokedynamic(i11 - this.codeOffset, u2At11, decodeEntry12);
                        i11 += 5;
                        break;
                    case 187:
                        int u2At12 = u2At(this.classFileBytes, 1, i11);
                        IConstantPoolEntry decodeEntry13 = this.constantPool.decodeEntry(u2At12);
                        if (decodeEntry13.getKind() != 7) {
                            throw new ClassFormatException(3);
                        }
                        iBytecodeVisitor._new(i11 - this.codeOffset, u2At12, decodeEntry13);
                        i11 += 3;
                        break;
                    case 188:
                        iBytecodeVisitor._newarray(i11 - this.codeOffset, u1At(this.classFileBytes, 1, i11));
                        i11 += 2;
                        break;
                    case 189:
                        int u2At13 = u2At(this.classFileBytes, 1, i11);
                        IConstantPoolEntry decodeEntry14 = this.constantPool.decodeEntry(u2At13);
                        if (decodeEntry14.getKind() != 7) {
                            throw new ClassFormatException(3);
                        }
                        iBytecodeVisitor._anewarray(i11 - this.codeOffset, u2At13, decodeEntry14);
                        i11 += 3;
                        break;
                    case 190:
                        iBytecodeVisitor._arraylength(i11 - this.codeOffset);
                        break;
                    case 191:
                        iBytecodeVisitor._athrow(i11 - this.codeOffset);
                        break;
                    case 192:
                        int u2At14 = u2At(this.classFileBytes, 1, i11);
                        IConstantPoolEntry decodeEntry15 = this.constantPool.decodeEntry(u2At14);
                        if (decodeEntry15.getKind() != 7) {
                            throw new ClassFormatException(3);
                        }
                        iBytecodeVisitor._checkcast(i11 - this.codeOffset, u2At14, decodeEntry15);
                        i11 += 3;
                        break;
                    case 193:
                        int u2At15 = u2At(this.classFileBytes, 1, i11);
                        IConstantPoolEntry decodeEntry16 = this.constantPool.decodeEntry(u2At15);
                        if (decodeEntry16.getKind() != 7) {
                            throw new ClassFormatException(3);
                        }
                        iBytecodeVisitor._instanceof(i11 - this.codeOffset, u2At15, decodeEntry16);
                        i11 += 3;
                        break;
                    case 194:
                        iBytecodeVisitor._monitorenter(i11 - this.codeOffset);
                        break;
                    case 195:
                        iBytecodeVisitor._monitorexit(i11 - this.codeOffset);
                        break;
                    case 196:
                        int u1At4 = u1At(this.classFileBytes, 1, i11);
                        if (u1At4 == 132) {
                            iBytecodeVisitor._wide(i11 - this.codeOffset, u1At4, u2At(this.classFileBytes, 2, i11), i2At(this.classFileBytes, 4, i11));
                            i11 += 6;
                            break;
                        } else {
                            iBytecodeVisitor._wide(i11 - this.codeOffset, u1At4, u2At(this.classFileBytes, 2, i11));
                            i11 += 4;
                        }
                    case 197:
                        int u2At16 = u2At(this.classFileBytes, 1, i11);
                        IConstantPoolEntry decodeEntry17 = this.constantPool.decodeEntry(u2At16);
                        if (decodeEntry17.getKind() != 7) {
                            throw new ClassFormatException(3);
                        }
                        iBytecodeVisitor._multianewarray(i11 - this.codeOffset, u2At16, u1At(this.classFileBytes, 3, i11), decodeEntry17);
                        i11 += 4;
                        break;
                    case 198:
                        iBytecodeVisitor._ifnull(i11 - this.codeOffset, i2At(this.classFileBytes, 1, i11));
                        i11 += 3;
                        break;
                    case 199:
                        iBytecodeVisitor._ifnonnull(i11 - this.codeOffset, i2At(this.classFileBytes, 1, i11));
                        i11 += 3;
                        break;
                    case 200:
                        iBytecodeVisitor._goto_w(i11 - this.codeOffset, i4At(this.classFileBytes, 1, i11));
                        i11 += 5;
                        break;
                    case 201:
                        iBytecodeVisitor._jsr_w(i11 - this.codeOffset, i4At(this.classFileBytes, 1, i11));
                        i11 += 5;
                        break;
                    case 202:
                        iBytecodeVisitor._breakpoint(i11 - this.codeOffset);
                        break;
                    default:
                        throw new ClassFormatException(6);
                }
            } else {
                iBytecodeVisitor._impdep2(i11 - this.codeOffset);
            }
            i11++;
        } while (i11 < this.codeLength + this.codeOffset);
    }
}
