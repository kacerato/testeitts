package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAttributeNamesConstants;
import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.ICodeAttribute;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IExceptionAttribute;
import org.eclipse.jdt.core.util.IMethodInfo;

public class MethodInfo extends ClassFileStruct implements IMethodInfo {
    private int accessFlags;
    private int attributeBytes;
    private IClassFileAttribute[] attributes;
    private int attributesCount;
    private ICodeAttribute codeAttribute;
    private char[] descriptor;
    private int descriptorIndex;
    private IExceptionAttribute exceptionAttribute;
    private boolean isDeprecated;
    private boolean isSynthetic;
    private char[] name;
    private int nameIndex;

    public MethodInfo(byte[] bArr, IConstantPool iConstantPool, int i10, int i11) throws ClassFormatException {
        int i12;
        int i13;
        boolean z10 = (i11 & 32) == 0;
        int u2At = u2At(bArr, 0, i10);
        this.accessFlags = u2At;
        if ((u2At & 4096) != 0) {
            this.isSynthetic = true;
        }
        int u2At2 = u2At(bArr, 2, i10);
        this.nameIndex = u2At2;
        IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(u2At2);
        if (decodeEntry.getKind() != 1) {
            throw new ClassFormatException(3);
        }
        this.name = decodeEntry.getUtf8Value();
        int u2At3 = u2At(bArr, 4, i10);
        this.descriptorIndex = u2At3;
        IConstantPoolEntry decodeEntry2 = iConstantPool.decodeEntry(u2At3);
        if (decodeEntry2.getKind() != 1) {
            throw new ClassFormatException(3);
        }
        this.descriptor = decodeEntry2.getUtf8Value();
        int u2At4 = u2At(bArr, 6, i10);
        this.attributesCount = u2At4;
        this.attributes = ClassFileAttribute.NO_ATTRIBUTES;
        if (u2At4 != 0) {
            if (!z10 || isAbstract() || isNative()) {
                this.attributes = new IClassFileAttribute[this.attributesCount];
            } else {
                int i14 = this.attributesCount;
                if (i14 != 1) {
                    this.attributes = new IClassFileAttribute[i14 - 1];
                }
            }
        }
        int i15 = 8;
        int i16 = 0;
        for (int i17 = 0; i17 < this.attributesCount; i17++) {
            IConstantPoolEntry decodeEntry3 = iConstantPool.decodeEntry(u2At(bArr, i15, i10));
            if (decodeEntry3.getKind() != 1) {
                throw new ClassFormatException(3);
            }
            char[] utf8Value = decodeEntry3.getUtf8Value();
            if (equals(utf8Value, IAttributeNamesConstants.DEPRECATED)) {
                this.isDeprecated = true;
                i12 = i16 + 1;
                this.attributes[i16] = new ClassFileAttribute(bArr, iConstantPool, i10 + i15);
            } else if (equals(utf8Value, IAttributeNamesConstants.SYNTHETIC)) {
                this.isSynthetic = true;
                i12 = i16 + 1;
                this.attributes[i16] = new ClassFileAttribute(bArr, iConstantPool, i10 + i15);
            } else {
                if (equals(utf8Value, IAttributeNamesConstants.CODE)) {
                    if (z10) {
                        i15 = (int) (i15 + u4At(bArr, i15 + 2, i10) + 6);
                    } else {
                        CodeAttribute codeAttribute = new CodeAttribute(bArr, iConstantPool, i10 + i15);
                        this.codeAttribute = codeAttribute;
                        i13 = i16 + 1;
                        this.attributes[i16] = codeAttribute;
                    }
                } else if (equals(utf8Value, IAttributeNamesConstants.EXCEPTIONS)) {
                    ExceptionAttribute exceptionAttribute = new ExceptionAttribute(bArr, iConstantPool, i10 + i15);
                    this.exceptionAttribute = exceptionAttribute;
                    i13 = i16 + 1;
                    this.attributes[i16] = exceptionAttribute;
                } else if (equals(utf8Value, IAttributeNamesConstants.SIGNATURE)) {
                    i12 = i16 + 1;
                    this.attributes[i16] = new SignatureAttribute(bArr, iConstantPool, i10 + i15);
                } else if (equals(utf8Value, IAttributeNamesConstants.RUNTIME_VISIBLE_ANNOTATIONS)) {
                    i12 = i16 + 1;
                    this.attributes[i16] = new RuntimeVisibleAnnotationsAttribute(bArr, iConstantPool, i10 + i15);
                } else if (equals(utf8Value, IAttributeNamesConstants.RUNTIME_INVISIBLE_ANNOTATIONS)) {
                    i12 = i16 + 1;
                    this.attributes[i16] = new RuntimeInvisibleAnnotationsAttribute(bArr, iConstantPool, i10 + i15);
                } else if (equals(utf8Value, IAttributeNamesConstants.RUNTIME_VISIBLE_PARAMETER_ANNOTATIONS)) {
                    i12 = i16 + 1;
                    this.attributes[i16] = new RuntimeVisibleParameterAnnotationsAttribute(bArr, iConstantPool, i10 + i15);
                } else if (equals(utf8Value, IAttributeNamesConstants.RUNTIME_INVISIBLE_PARAMETER_ANNOTATIONS)) {
                    i12 = i16 + 1;
                    this.attributes[i16] = new RuntimeInvisibleParameterAnnotationsAttribute(bArr, iConstantPool, i10 + i15);
                } else if (equals(utf8Value, IAttributeNamesConstants.ANNOTATION_DEFAULT)) {
                    i12 = i16 + 1;
                    this.attributes[i16] = new AnnotationDefaultAttribute(bArr, iConstantPool, i10 + i15);
                } else if (equals(utf8Value, IAttributeNamesConstants.RUNTIME_VISIBLE_TYPE_ANNOTATIONS)) {
                    i12 = i16 + 1;
                    this.attributes[i16] = new RuntimeVisibleTypeAnnotationsAttribute(bArr, iConstantPool, i10 + i15);
                } else if (equals(utf8Value, IAttributeNamesConstants.RUNTIME_INVISIBLE_TYPE_ANNOTATIONS)) {
                    i12 = i16 + 1;
                    this.attributes[i16] = new RuntimeInvisibleTypeAnnotationsAttribute(bArr, iConstantPool, i10 + i15);
                } else if (equals(utf8Value, IAttributeNamesConstants.METHOD_PARAMETERS)) {
                    i12 = i16 + 1;
                    this.attributes[i16] = new MethodParametersAttribute(bArr, iConstantPool, i10 + i15);
                } else {
                    i12 = i16 + 1;
                    this.attributes[i16] = new ClassFileAttribute(bArr, iConstantPool, i10 + i15);
                }
                i16 = i13;
                i15 = (int) (i15 + u4At(bArr, i15 + 2, i10) + 6);
            }
            i16 = i12;
            i15 = (int) (i15 + u4At(bArr, i15 + 2, i10) + 6);
        }
        this.attributeBytes = i15;
    }

    private boolean isAbstract() {
        return (this.accessFlags & 1024) != 0;
    }

    private boolean isNative() {
        return (this.accessFlags & 256) != 0;
    }

    @Override
    public int getAccessFlags() {
        return this.accessFlags;
    }

    @Override
    public int getAttributeCount() {
        return this.attributesCount;
    }

    @Override
    public IClassFileAttribute[] getAttributes() {
        return this.attributes;
    }

    @Override
    public ICodeAttribute getCodeAttribute() {
        return this.codeAttribute;
    }

    @Override
    public char[] getDescriptor() {
        return this.descriptor;
    }

    @Override
    public int getDescriptorIndex() {
        return this.descriptorIndex;
    }

    @Override
    public IExceptionAttribute getExceptionAttribute() {
        return this.exceptionAttribute;
    }

    @Override
    public char[] getName() {
        return this.name;
    }

    @Override
    public int getNameIndex() {
        return this.nameIndex;
    }

    @Override
    public boolean isClinit() {
        char[] cArr = this.name;
        return cArr[0] == '<' && cArr.length == 8;
    }

    @Override
    public boolean isConstructor() {
        char[] cArr = this.name;
        return cArr[0] == '<' && cArr.length == 6;
    }

    @Override
    public boolean isDeprecated() {
        return this.isDeprecated;
    }

    @Override
    public boolean isSynthetic() {
        return this.isSynthetic;
    }

    public int sizeInBytes() {
        return this.attributeBytes;
    }
}
