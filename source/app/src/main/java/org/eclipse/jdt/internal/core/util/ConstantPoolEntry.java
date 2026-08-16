package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.IConstantPoolEntry;

public class ConstantPoolEntry implements IConstantPoolEntry {
    private int kind;
    private int classInfoNameIndex = -1;
    private int classIndex = -1;
    private int nameAndTypeIndex = -1;
    private int stringIndex = -1;
    private char[] stringValue = null;
    private int integerValue = -1;
    private float floatValue = -0.0f;
    private double doubleValue = 0.0d;
    private long longValue = -1;
    private int nameAndTypeDescriptorIndex = -1;
    private int nameAndTypeNameIndex = -1;
    private char[] className = null;
    private char[] fieldName = null;
    private char[] methodName = null;
    private char[] fieldDescriptor = null;
    private char[] methodDescriptor = null;
    private char[] utf8Value = null;
    private int utf8Length = -1;
    private char[] classInfoName = null;

    @Override
    public int getClassIndex() {
        return this.classIndex;
    }

    @Override
    public char[] getClassInfoName() {
        return this.classInfoName;
    }

    @Override
    public int getClassInfoNameIndex() {
        return this.classInfoNameIndex;
    }

    @Override
    public char[] getClassName() {
        return this.className;
    }

    @Override
    public double getDoubleValue() {
        return this.doubleValue;
    }

    @Override
    public char[] getFieldDescriptor() {
        return this.fieldDescriptor;
    }

    @Override
    public char[] getFieldName() {
        return this.fieldName;
    }

    @Override
    public float getFloatValue() {
        return this.floatValue;
    }

    @Override
    public int getIntegerValue() {
        return this.integerValue;
    }

    @Override
    public int getKind() {
        return this.kind;
    }

    @Override
    public long getLongValue() {
        return this.longValue;
    }

    @Override
    public char[] getMethodDescriptor() {
        return this.methodDescriptor;
    }

    @Override
    public char[] getMethodName() {
        return this.methodName;
    }

    public int getNameAndTypeDescriptorIndex() {
        return this.nameAndTypeDescriptorIndex;
    }

    @Override
    public int getNameAndTypeIndex() {
        return this.nameAndTypeIndex;
    }

    @Override
    public int getNameAndTypeInfoDescriptorIndex() {
        return this.nameAndTypeDescriptorIndex;
    }

    @Override
    public int getNameAndTypeInfoNameIndex() {
        return this.nameAndTypeNameIndex;
    }

    public int getNameAndTypeNameIndex() {
        return this.nameAndTypeNameIndex;
    }

    @Override
    public int getStringIndex() {
        return this.stringIndex;
    }

    @Override
    public String getStringValue() {
        return new String(this.stringValue);
    }

    @Override
    public int getUtf8Length() {
        return this.utf8Length;
    }

    @Override
    public char[] getUtf8Value() {
        return this.utf8Value;
    }

    public void reset() {
        this.kind = 0;
        this.classInfoNameIndex = 0;
        this.classIndex = 0;
        this.nameAndTypeIndex = 0;
        this.stringIndex = 0;
        this.stringValue = null;
        this.integerValue = 0;
        this.floatValue = 0.0f;
        this.doubleValue = 0.0d;
        this.longValue = 0L;
        this.nameAndTypeDescriptorIndex = 0;
        this.nameAndTypeNameIndex = 0;
        this.className = null;
        this.fieldName = null;
        this.methodName = null;
        this.fieldDescriptor = null;
        this.methodDescriptor = null;
        this.utf8Value = null;
        this.utf8Length = 0;
        this.classInfoName = null;
    }

    public void setClassIndex(int i10) {
        this.classIndex = i10;
    }

    public void setClassInfoName(char[] cArr) {
        this.classInfoName = cArr;
    }

    public void setClassInfoNameIndex(int i10) {
        this.classInfoNameIndex = i10;
    }

    public void setClassName(char[] cArr) {
        this.className = cArr;
    }

    public void setDoubleValue(double d10) {
        this.doubleValue = d10;
    }

    public void setFieldDescriptor(char[] cArr) {
        this.fieldDescriptor = cArr;
    }

    public void setFieldName(char[] cArr) {
        this.fieldName = cArr;
    }

    public void setFloatValue(float f10) {
        this.floatValue = f10;
    }

    public void setIntegerValue(int i10) {
        this.integerValue = i10;
    }

    public void setKind(int i10) {
        this.kind = i10;
    }

    public void setLongValue(long j10) {
        this.longValue = j10;
    }

    public void setMethodDescriptor(char[] cArr) {
        this.methodDescriptor = cArr;
    }

    public void setMethodName(char[] cArr) {
        this.methodName = cArr;
    }

    public void setNameAndTypeDescriptorIndex(int i10) {
        this.nameAndTypeDescriptorIndex = i10;
    }

    public void setNameAndTypeIndex(int i10) {
        this.nameAndTypeIndex = i10;
    }

    public void setNameAndTypeNameIndex(int i10) {
        this.nameAndTypeNameIndex = i10;
    }

    public void setStringIndex(int i10) {
        this.stringIndex = i10;
    }

    public void setStringValue(char[] cArr) {
        this.stringValue = cArr;
    }

    public void setUtf8Length(int i10) {
        this.utf8Length = i10;
    }

    public void setUtf8Value(char[] cArr) {
        this.utf8Value = cArr;
    }
}
