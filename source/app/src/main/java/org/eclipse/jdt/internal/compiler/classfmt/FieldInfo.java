package org.eclipse.jdt.internal.compiler.classfmt;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.codegen.AttributeNamesConstants;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;
import org.eclipse.jdt.internal.compiler.impl.BooleanConstant;
import org.eclipse.jdt.internal.compiler.impl.ByteConstant;
import org.eclipse.jdt.internal.compiler.impl.CharConstant;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.DoubleConstant;
import org.eclipse.jdt.internal.compiler.impl.FloatConstant;
import org.eclipse.jdt.internal.compiler.impl.IntConstant;
import org.eclipse.jdt.internal.compiler.impl.LongConstant;
import org.eclipse.jdt.internal.compiler.impl.ShortConstant;
import org.eclipse.jdt.internal.compiler.impl.StringConstant;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public class FieldInfo extends ClassFileStruct implements IBinaryField, Comparable {
    protected int accessFlags;
    protected int attributeBytes;
    protected Constant constant;
    protected char[] descriptor;
    protected char[] name;
    protected char[] signature;
    protected int signatureUtf8Offset;
    protected long tagBits;
    protected long version;
    protected Object wrappedConstantValue;

    public FieldInfo(byte[] bArr, int[] iArr, int i10, long j10) {
        super(bArr, iArr, i10);
        this.accessFlags = -1;
        this.signatureUtf8Offset = -1;
        this.version = j10;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static FieldInfo createField(byte[] bArr, int[] iArr, int i10, long j10) {
        AnnotationInfo[] annotationInfoArr;
        TypeAnnotationInfo[] typeAnnotationInfoArr;
        TypeAnnotationInfo[] decodeTypeAnnotations;
        FieldInfo fieldInfo = new FieldInfo(bArr, iArr, i10, j10);
        int u2At = fieldInfo.u2At(6);
        int i11 = 8;
        TypeAnnotationInfo[] typeAnnotationInfoArr2 = null;
        AnnotationInfo[] annotationInfoArr2 = null;
        for (int i12 = 0; i12 < u2At; i12++) {
            int i13 = fieldInfo.constantPoolOffsets[fieldInfo.u2At(i11)] - fieldInfo.structOffset;
            char[] utf8At = fieldInfo.utf8At(i13 + 3, fieldInfo.u2At(i13 + 1));
            if (utf8At.length > 0) {
                char c10 = utf8At[0];
                if (c10 == 'R') {
                    if (CharOperation.equals(utf8At, AttributeNamesConstants.RuntimeVisibleAnnotationsName)) {
                        annotationInfoArr = fieldInfo.decodeAnnotations(i11, true);
                    } else if (CharOperation.equals(utf8At, AttributeNamesConstants.RuntimeInvisibleAnnotationsName)) {
                        annotationInfoArr = fieldInfo.decodeAnnotations(i11, false);
                    } else {
                        if (CharOperation.equals(utf8At, AttributeNamesConstants.RuntimeVisibleTypeAnnotationsName)) {
                            decodeTypeAnnotations = fieldInfo.decodeTypeAnnotations(i11, true);
                        } else if (CharOperation.equals(utf8At, AttributeNamesConstants.RuntimeInvisibleTypeAnnotationsName)) {
                            decodeTypeAnnotations = fieldInfo.decodeTypeAnnotations(i11, false);
                        } else {
                            annotationInfoArr = null;
                            typeAnnotationInfoArr = null;
                            if (annotationInfoArr != null) {
                                if (annotationInfoArr2 == null) {
                                    annotationInfoArr2 = annotationInfoArr;
                                } else {
                                    int length = annotationInfoArr2.length;
                                    AnnotationInfo[] annotationInfoArr3 = new AnnotationInfo[annotationInfoArr.length + length];
                                    System.arraycopy(annotationInfoArr2, 0, annotationInfoArr3, 0, length);
                                    System.arraycopy(annotationInfoArr, 0, annotationInfoArr3, length, annotationInfoArr.length);
                                    annotationInfoArr2 = annotationInfoArr3;
                                }
                            } else if (typeAnnotationInfoArr != null) {
                                if (typeAnnotationInfoArr2 == null) {
                                    typeAnnotationInfoArr2 = typeAnnotationInfoArr;
                                } else {
                                    int length2 = typeAnnotationInfoArr2.length;
                                    TypeAnnotationInfo[] typeAnnotationInfoArr3 = new TypeAnnotationInfo[typeAnnotationInfoArr.length + length2];
                                    System.arraycopy(typeAnnotationInfoArr2, 0, typeAnnotationInfoArr3, 0, length2);
                                    System.arraycopy(typeAnnotationInfoArr, 0, typeAnnotationInfoArr3, length2, typeAnnotationInfoArr.length);
                                    typeAnnotationInfoArr2 = typeAnnotationInfoArr3;
                                }
                            }
                        }
                        typeAnnotationInfoArr = decodeTypeAnnotations;
                        annotationInfoArr = null;
                        if (annotationInfoArr != null) {
                        }
                    }
                    typeAnnotationInfoArr = null;
                    if (annotationInfoArr != null) {
                    }
                } else if (c10 == 'S' && CharOperation.equals(AttributeNamesConstants.SignatureName, utf8At)) {
                    fieldInfo.signatureUtf8Offset = fieldInfo.constantPoolOffsets[fieldInfo.u2At(i11 + 6)] - fieldInfo.structOffset;
                }
            }
            i11 = (int) (i11 + fieldInfo.u4At(i11 + 2) + 6);
        }
        fieldInfo.attributeBytes = i11;
        return typeAnnotationInfoArr2 != null ? new FieldInfoWithTypeAnnotation(fieldInfo, annotationInfoArr2, typeAnnotationInfoArr2) : annotationInfoArr2 != null ? new FieldInfoWithAnnotation(fieldInfo, annotationInfoArr2) : fieldInfo;
    }

    private AnnotationInfo[] decodeAnnotations(int i10, boolean z10) {
        int u2At = u2At(i10 + 6);
        if (u2At > 0) {
            int i11 = i10 + 8;
            AnnotationInfo[] annotationInfoArr = null;
            int i12 = 0;
            for (int i13 = 0; i13 < u2At; i13++) {
                AnnotationInfo annotationInfo = new AnnotationInfo(this.reference, this.constantPoolOffsets, i11 + this.structOffset, z10, false);
                i11 += annotationInfo.readOffset;
                long j10 = annotationInfo.standardAnnotationTagBits;
                if (j10 != 0) {
                    this.tagBits |= j10;
                    if (this.version >= ClassFileConstants.JDK9) {
                        if ((j10 & 70368744177664L) == 0) {
                        }
                    }
                }
                if (annotationInfoArr == null) {
                    annotationInfoArr = new AnnotationInfo[u2At - i13];
                }
                annotationInfoArr[i12] = annotationInfo;
                i12++;
            }
            if (annotationInfoArr != null) {
                if (i12 == annotationInfoArr.length) {
                    return annotationInfoArr;
                }
                AnnotationInfo[] annotationInfoArr2 = new AnnotationInfo[i12];
                System.arraycopy(annotationInfoArr, 0, annotationInfoArr2, 0, i12);
                return annotationInfoArr2;
            }
        }
        return null;
    }

    private void readConstantAttribute() {
        int u2At = u2At(6);
        int i10 = 8;
        boolean z10 = false;
        for (int i11 = 0; i11 < u2At; i11++) {
            int i12 = this.constantPoolOffsets[u2At(i10)] - this.structOffset;
            if (CharOperation.equals(utf8At(i12 + 3, u2At(i12 + 1)), AttributeNamesConstants.ConstantValueName)) {
                int i13 = this.constantPoolOffsets[u2At(i10 + 6)] - this.structOffset;
                int u1At = u1At(i13);
                if (u1At == 3) {
                    char[] typeName = getTypeName();
                    if (typeName.length == 1) {
                        char c10 = typeName[0];
                        if (c10 == 'B') {
                            this.constant = ByteConstant.fromValue((byte) i4At(i13 + 1));
                        } else if (c10 == 'C') {
                            this.constant = CharConstant.fromValue((char) i4At(i13 + 1));
                        } else if (c10 == 'I') {
                            this.constant = IntConstant.fromValue(i4At(i13 + 1));
                        } else if (c10 == 'S') {
                            this.constant = ShortConstant.fromValue((short) i4At(i13 + 1));
                        } else if (c10 != 'Z') {
                            this.constant = Constant.NotAConstant;
                        } else {
                            this.constant = BooleanConstant.fromValue(i4At(i13 + 1) == 1);
                        }
                    } else {
                        this.constant = Constant.NotAConstant;
                    }
                } else if (u1At == 4) {
                    this.constant = FloatConstant.fromValue(floatAt(i13 + 1));
                } else if (u1At == 5) {
                    this.constant = LongConstant.fromValue(i8At(i13 + 1));
                } else if (u1At == 6) {
                    this.constant = DoubleConstant.fromValue(doubleAt(i13 + 1));
                } else if (u1At == 8) {
                    int i14 = this.constantPoolOffsets[u2At(i13 + 1)] - this.structOffset;
                    this.constant = StringConstant.fromValue(String.valueOf(utf8At(i14 + 3, u2At(i14 + 1))));
                }
                z10 = true;
            }
            i10 = (int) (i10 + u4At(i10 + 2) + 6);
        }
        if (z10) {
            return;
        }
        this.constant = Constant.NotAConstant;
    }

    private void readModifierRelatedAttributes() {
        int u2At = u2At(6);
        int i10 = 8;
        for (int i11 = 0; i11 < u2At; i11++) {
            int i12 = this.constantPoolOffsets[u2At(i10)] - this.structOffset;
            char[] utf8At = utf8At(i12 + 3, u2At(i12 + 1));
            if (utf8At.length != 0) {
                char c10 = utf8At[0];
                if (c10 != 'D') {
                    if (c10 == 'S' && CharOperation.equals(utf8At, AttributeNamesConstants.SyntheticName)) {
                        this.accessFlags |= 4096;
                    }
                } else if (CharOperation.equals(utf8At, AttributeNamesConstants.DeprecatedName)) {
                    this.accessFlags |= 1048576;
                }
            }
            i10 = (int) (i10 + u4At(i10 + 2) + 6);
        }
    }

    @Override
    public int compareTo(Object obj) {
        return new String(getName()).compareTo(new String(((FieldInfo) obj).getName()));
    }

    public TypeAnnotationInfo[] decodeTypeAnnotations(int i10, boolean z10) {
        int u2At = u2At(i10 + 6);
        if (u2At <= 0) {
            return null;
        }
        int i11 = i10 + 8;
        TypeAnnotationInfo[] typeAnnotationInfoArr = new TypeAnnotationInfo[u2At];
        for (int i12 = 0; i12 < u2At; i12++) {
            TypeAnnotationInfo typeAnnotationInfo = new TypeAnnotationInfo(this.reference, this.constantPoolOffsets, i11 + this.structOffset, z10, false);
            i11 += typeAnnotationInfo.readOffset;
            typeAnnotationInfoArr[i12] = typeAnnotationInfo;
        }
        return typeAnnotationInfoArr;
    }

    public boolean equals(Object obj) {
        if (obj instanceof FieldInfo) {
            return CharOperation.equals(getName(), ((FieldInfo) obj).getName());
        }
        return false;
    }

    @Override
    public IBinaryAnnotation[] getAnnotations() {
        return null;
    }

    @Override
    public Constant getConstant() {
        if (this.constant == null) {
            readConstantAttribute();
        }
        return this.constant;
    }

    @Override
    public char[] getGenericSignature() {
        int i10 = this.signatureUtf8Offset;
        if (i10 == -1) {
            return null;
        }
        if (this.signature == null) {
            this.signature = utf8At(i10 + 3, u2At(i10 + 1));
        }
        return this.signature;
    }

    @Override
    public int getModifiers() {
        if (this.accessFlags == -1) {
            this.accessFlags = u2At(0);
            readModifierRelatedAttributes();
        }
        return this.accessFlags;
    }

    @Override
    public char[] getName() {
        if (this.name == null) {
            int i10 = this.constantPoolOffsets[u2At(2)] - this.structOffset;
            this.name = utf8At(i10 + 3, u2At(i10 + 1));
        }
        return this.name;
    }

    @Override
    public long getTagBits() {
        return this.tagBits;
    }

    @Override
    public IBinaryTypeAnnotation[] getTypeAnnotations() {
        return null;
    }

    @Override
    public char[] getTypeName() {
        if (this.descriptor == null) {
            int i10 = this.constantPoolOffsets[u2At(4)] - this.structOffset;
            this.descriptor = utf8At(i10 + 3, u2At(i10 + 1));
        }
        return this.descriptor;
    }

    public Object getWrappedConstantValue() {
        if (this.wrappedConstantValue == null && hasConstant()) {
            Constant constant = getConstant();
            switch (constant.typeID()) {
                case 2:
                    this.wrappedConstantValue = Character.valueOf(constant.charValue());
                    break;
                case 3:
                    this.wrappedConstantValue = Byte.valueOf(constant.byteValue());
                    break;
                case 4:
                    this.wrappedConstantValue = Short.valueOf(constant.shortValue());
                    break;
                case 5:
                    this.wrappedConstantValue = Util.toBoolean(constant.booleanValue());
                    break;
                case 7:
                    this.wrappedConstantValue = Long.valueOf(constant.longValue());
                    break;
                case 8:
                    this.wrappedConstantValue = new Double(constant.doubleValue());
                    break;
                case 9:
                    this.wrappedConstantValue = new Float(constant.floatValue());
                    break;
                case 10:
                    this.wrappedConstantValue = Integer.valueOf(constant.intValue());
                    break;
                case 11:
                    this.wrappedConstantValue = constant.stringValue();
                    break;
            }
        }
        return this.wrappedConstantValue;
    }

    public boolean hasConstant() {
        return getConstant() != Constant.NotAConstant;
    }

    public int hashCode() {
        return CharOperation.hashCode(getName());
    }

    public void initialize() {
        getModifiers();
        getName();
        getConstant();
        getTypeName();
        getGenericSignature();
        reset();
    }

    public boolean isSynthetic() {
        return (getModifiers() & 4096) != 0;
    }

    public int sizeInBytes() {
        return this.attributeBytes;
    }

    public void throwFormatException() throws ClassFormatException {
        throw new ClassFormatException(17);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(getClass().getName());
        toStringContent(stringBuffer);
        return stringBuffer.toString();
    }

    public void toStringContent(StringBuffer stringBuffer) {
        int modifiers = getModifiers();
        stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
        StringBuilder sb2 = new StringBuilder(String.valueOf((1048576 & modifiers) != 0 ? "deprecated " : Util.EMPTY_STRING));
        sb2.append((modifiers & 1) == 1 ? "public " : Util.EMPTY_STRING);
        sb2.append((modifiers & 2) == 2 ? "private " : Util.EMPTY_STRING);
        sb2.append((modifiers & 4) == 4 ? "protected " : Util.EMPTY_STRING);
        sb2.append((modifiers & 8) == 8 ? "static " : Util.EMPTY_STRING);
        sb2.append((modifiers & 16) == 16 ? "final " : Util.EMPTY_STRING);
        sb2.append((modifiers & 64) == 64 ? "volatile " : Util.EMPTY_STRING);
        sb2.append((modifiers & 128) == 128 ? "transient " : Util.EMPTY_STRING);
        stringBuffer.append(sb2.toString());
        stringBuffer.append(getTypeName());
        stringBuffer.append(C15883c.f126249O);
        stringBuffer.append(getName());
        stringBuffer.append(C15883c.f126249O);
        stringBuffer.append((Object) getConstant());
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
    }
}
