package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;

public class ConstantPool extends ClassFileStruct implements IConstantPool {
    private byte[] classFileBytes;
    private int constantPoolCount;
    private int[] constantPoolOffset;

    public ConstantPool(byte[] bArr, int[] iArr) {
        this.constantPoolCount = iArr.length;
        this.constantPoolOffset = iArr;
        this.classFileBytes = bArr;
    }

    private char[] getUtf8ValueAt(int i10) {
        int i11 = this.constantPoolOffset[i10];
        byte[] bArr = this.classFileBytes;
        return utf8At(bArr, 0, i11 + 3, u2At(bArr, 0, i11 + 1));
    }

    @Override
    public IConstantPoolEntry decodeEntry(int i10) {
        ConstantPoolEntry constantPoolEntry;
        ConstantPoolEntry constantPoolEntry2;
        int entryKind = getEntryKind(i10);
        switch (entryKind) {
            case 1:
                ConstantPoolEntry constantPoolEntry3 = new ConstantPoolEntry();
                constantPoolEntry3.reset();
                constantPoolEntry3.setKind(entryKind);
                constantPoolEntry3.setUtf8Length(u2At(this.classFileBytes, 1, this.constantPoolOffset[i10]));
                constantPoolEntry3.setUtf8Value(getUtf8ValueAt(i10));
                constantPoolEntry2 = constantPoolEntry3;
                return constantPoolEntry2;
            case 2:
            case 13:
            case 14:
            default:
                return null;
            case 3:
                ConstantPoolEntry constantPoolEntry4 = new ConstantPoolEntry();
                constantPoolEntry4.reset();
                constantPoolEntry4.setKind(entryKind);
                constantPoolEntry4.setIntegerValue(i4At(this.classFileBytes, 1, this.constantPoolOffset[i10]));
                constantPoolEntry2 = constantPoolEntry4;
                return constantPoolEntry2;
            case 4:
                ConstantPoolEntry constantPoolEntry5 = new ConstantPoolEntry();
                constantPoolEntry5.reset();
                constantPoolEntry5.setKind(entryKind);
                constantPoolEntry5.reset();
                constantPoolEntry5.setKind(entryKind);
                constantPoolEntry5.setFloatValue(floatAt(this.classFileBytes, 1, this.constantPoolOffset[i10]));
                constantPoolEntry2 = constantPoolEntry5;
                return constantPoolEntry2;
            case 5:
                ConstantPoolEntry constantPoolEntry6 = new ConstantPoolEntry();
                constantPoolEntry6.reset();
                constantPoolEntry6.setKind(entryKind);
                constantPoolEntry6.setLongValue(i8At(this.classFileBytes, 1, this.constantPoolOffset[i10]));
                constantPoolEntry2 = constantPoolEntry6;
                return constantPoolEntry2;
            case 6:
                ConstantPoolEntry constantPoolEntry7 = new ConstantPoolEntry();
                constantPoolEntry7.reset();
                constantPoolEntry7.setKind(entryKind);
                constantPoolEntry7.setDoubleValue(doubleAt(this.classFileBytes, 1, this.constantPoolOffset[i10]));
                constantPoolEntry2 = constantPoolEntry7;
                return constantPoolEntry2;
            case 7:
                ConstantPoolEntry constantPoolEntry8 = new ConstantPoolEntry();
                constantPoolEntry8.reset();
                constantPoolEntry8.setKind(entryKind);
                constantPoolEntry8.setClassInfoNameIndex(u2At(this.classFileBytes, 1, this.constantPoolOffset[i10]));
                constantPoolEntry8.setClassInfoName(getUtf8ValueAt(constantPoolEntry8.getClassInfoNameIndex()));
                constantPoolEntry2 = constantPoolEntry8;
                return constantPoolEntry2;
            case 8:
                ConstantPoolEntry constantPoolEntry9 = new ConstantPoolEntry();
                constantPoolEntry9.reset();
                constantPoolEntry9.setKind(entryKind);
                constantPoolEntry9.setStringIndex(u2At(this.classFileBytes, 1, this.constantPoolOffset[i10]));
                constantPoolEntry9.setStringValue(getUtf8ValueAt(constantPoolEntry9.getStringIndex()));
                constantPoolEntry2 = constantPoolEntry9;
                return constantPoolEntry2;
            case 9:
                ConstantPoolEntry constantPoolEntry10 = new ConstantPoolEntry();
                constantPoolEntry10.reset();
                constantPoolEntry10.setKind(entryKind);
                constantPoolEntry10.reset();
                constantPoolEntry10.setKind(entryKind);
                constantPoolEntry10.setClassIndex(u2At(this.classFileBytes, 1, this.constantPoolOffset[i10]));
                constantPoolEntry10.setClassName(getUtf8ValueAt(u2At(this.classFileBytes, 1, this.constantPoolOffset[constantPoolEntry10.getClassIndex()])));
                constantPoolEntry10.setNameAndTypeIndex(u2At(this.classFileBytes, 3, this.constantPoolOffset[i10]));
                int u2At = u2At(this.classFileBytes, 1, this.constantPoolOffset[constantPoolEntry10.getNameAndTypeIndex()]);
                int u2At2 = u2At(this.classFileBytes, 3, this.constantPoolOffset[constantPoolEntry10.getNameAndTypeIndex()]);
                constantPoolEntry10.setFieldName(getUtf8ValueAt(u2At));
                constantPoolEntry10.setFieldDescriptor(getUtf8ValueAt(u2At2));
                constantPoolEntry = constantPoolEntry10;
                break;
            case 10:
            case 11:
                ConstantPoolEntry constantPoolEntry11 = new ConstantPoolEntry();
                constantPoolEntry11.reset();
                constantPoolEntry11.setKind(entryKind);
                constantPoolEntry11.reset();
                constantPoolEntry11.setKind(entryKind);
                constantPoolEntry11.setClassIndex(u2At(this.classFileBytes, 1, this.constantPoolOffset[i10]));
                constantPoolEntry11.setClassName(getUtf8ValueAt(u2At(this.classFileBytes, 1, this.constantPoolOffset[constantPoolEntry11.getClassIndex()])));
                constantPoolEntry11.setNameAndTypeIndex(u2At(this.classFileBytes, 3, this.constantPoolOffset[i10]));
                int u2At3 = u2At(this.classFileBytes, 1, this.constantPoolOffset[constantPoolEntry11.getNameAndTypeIndex()]);
                int u2At4 = u2At(this.classFileBytes, 3, this.constantPoolOffset[constantPoolEntry11.getNameAndTypeIndex()]);
                constantPoolEntry11.setMethodName(getUtf8ValueAt(u2At3));
                constantPoolEntry11.setMethodDescriptor(getUtf8ValueAt(u2At4));
                constantPoolEntry = constantPoolEntry11;
                break;
            case 12:
                ConstantPoolEntry constantPoolEntry12 = new ConstantPoolEntry();
                constantPoolEntry12.reset();
                constantPoolEntry12.setKind(entryKind);
                constantPoolEntry12.setNameAndTypeNameIndex(u2At(this.classFileBytes, 1, this.constantPoolOffset[i10]));
                constantPoolEntry12.setNameAndTypeDescriptorIndex(u2At(this.classFileBytes, 3, this.constantPoolOffset[i10]));
                constantPoolEntry = constantPoolEntry12;
                break;
            case 15:
                ConstantPoolEntry2 constantPoolEntry22 = new ConstantPoolEntry2();
                constantPoolEntry22.reset();
                constantPoolEntry22.setKind(entryKind);
                constantPoolEntry22.setReferenceKind(u1At(this.classFileBytes, 1, this.constantPoolOffset[i10]));
                constantPoolEntry22.setReferenceIndex(u2At(this.classFileBytes, 2, this.constantPoolOffset[i10]));
                constantPoolEntry2 = constantPoolEntry22;
                return constantPoolEntry2;
            case 16:
                ConstantPoolEntry2 constantPoolEntry23 = new ConstantPoolEntry2();
                constantPoolEntry23.reset();
                constantPoolEntry23.setKind(entryKind);
                int u2At5 = u2At(this.classFileBytes, 1, this.constantPoolOffset[i10]);
                constantPoolEntry23.setDescriptorIndex(u2At5);
                constantPoolEntry23.setMethodDescriptor(getUtf8ValueAt(u2At5));
                constantPoolEntry2 = constantPoolEntry23;
                return constantPoolEntry2;
            case 17:
                ConstantPoolEntry2 constantPoolEntry24 = new ConstantPoolEntry2();
                constantPoolEntry24.reset();
                constantPoolEntry24.setKind(entryKind);
                constantPoolEntry24.setBootstrapMethodAttributeIndex(u2At(this.classFileBytes, 1, this.constantPoolOffset[i10]));
                int u2At6 = u2At(this.classFileBytes, 3, this.constantPoolOffset[i10]);
                constantPoolEntry24.setNameAndTypeIndex(u2At6);
                int u2At7 = u2At(this.classFileBytes, 1, this.constantPoolOffset[u2At6]);
                int u2At8 = u2At(this.classFileBytes, 3, this.constantPoolOffset[u2At6]);
                constantPoolEntry24.setFieldName(getUtf8ValueAt(u2At7));
                constantPoolEntry24.setFieldDescriptor(getUtf8ValueAt(u2At8));
                constantPoolEntry = constantPoolEntry24;
                break;
            case 18:
                ConstantPoolEntry2 constantPoolEntry25 = new ConstantPoolEntry2();
                constantPoolEntry25.reset();
                constantPoolEntry25.setKind(entryKind);
                constantPoolEntry25.setBootstrapMethodAttributeIndex(u2At(this.classFileBytes, 1, this.constantPoolOffset[i10]));
                int u2At9 = u2At(this.classFileBytes, 3, this.constantPoolOffset[i10]);
                constantPoolEntry25.setNameAndTypeIndex(u2At9);
                int u2At10 = u2At(this.classFileBytes, 1, this.constantPoolOffset[u2At9]);
                int u2At11 = u2At(this.classFileBytes, 3, this.constantPoolOffset[u2At9]);
                constantPoolEntry25.setMethodName(getUtf8ValueAt(u2At10));
                constantPoolEntry25.setMethodDescriptor(getUtf8ValueAt(u2At11));
                constantPoolEntry = constantPoolEntry25;
                break;
            case 19:
                ConstantPoolEntry2 constantPoolEntry26 = new ConstantPoolEntry2();
                constantPoolEntry26.reset();
                constantPoolEntry26.setKind(entryKind);
                int u2At12 = u2At(this.classFileBytes, 1, this.constantPoolOffset[i10]);
                constantPoolEntry26.setModuleIndex(u2At12);
                constantPoolEntry26.setModuleName(getUtf8ValueAt(u2At12));
                constantPoolEntry2 = constantPoolEntry26;
                return constantPoolEntry2;
            case 20:
                ConstantPoolEntry2 constantPoolEntry27 = new ConstantPoolEntry2();
                constantPoolEntry27.reset();
                constantPoolEntry27.setKind(entryKind);
                int u2At13 = u2At(this.classFileBytes, 1, this.constantPoolOffset[i10]);
                constantPoolEntry27.setPackageIndex(u2At13);
                constantPoolEntry27.setPackageName(getUtf8ValueAt(u2At13));
                constantPoolEntry2 = constantPoolEntry27;
                return constantPoolEntry2;
        }
        return constantPoolEntry;
    }

    @Override
    public int getConstantPoolCount() {
        return this.constantPoolCount;
    }

    @Override
    public int getEntryKind(int i10) {
        return u1At(this.classFileBytes, 0, this.constantPoolOffset[i10]);
    }
}
