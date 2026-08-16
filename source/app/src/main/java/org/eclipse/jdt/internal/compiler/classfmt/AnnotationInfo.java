package org.eclipse.jdt.internal.compiler.classfmt;

import b3.s;
import java.util.Arrays;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.codegen.ConstantPool;
import org.eclipse.jdt.internal.compiler.env.ClassSignature;
import org.eclipse.jdt.internal.compiler.env.EnumConstantSignature;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryElementValuePair;
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
import w2.C15883c;

public class AnnotationInfo extends ClassFileStruct implements IBinaryAnnotation {
    static Object[] EmptyValueArray = new Object[0];
    public RuntimeException exceptionDuringDecode;
    private volatile ElementValuePairInfo[] pairs;
    int readOffset;
    long standardAnnotationTagBits;
    private char[] typename;

    public AnnotationInfo(byte[] bArr, int[] iArr, int i10) {
        super(bArr, iArr, i10);
        this.standardAnnotationTagBits = 0L;
        this.readOffset = 0;
    }

    private void decodeAnnotation() {
        int i10 = 0;
        this.readOffset = 0;
        int i11 = this.constantPoolOffsets[u2At(0)] - this.structOffset;
        this.typename = utf8At(i11 + 3, u2At(i11 + 1));
        int u2At = u2At(2);
        this.readOffset += 4;
        ElementValuePairInfo[] elementValuePairInfoArr = u2At == 0 ? ElementValuePairInfo.NoMembers : new ElementValuePairInfo[u2At];
        while (i10 < u2At) {
            try {
                int i12 = this.constantPoolOffsets[u2At(this.readOffset)] - this.structOffset;
                char[] utf8At = utf8At(i12 + 3, u2At(i12 + 1));
                this.readOffset += 2;
                int i13 = i10 + 1;
                try {
                    elementValuePairInfoArr[i10] = new ElementValuePairInfo(utf8At, decodeDefaultValue());
                    i10 = i13;
                } catch (RuntimeException e10) {
                    e = e10;
                    i10 = i13;
                    sanitizePairs(elementValuePairInfoArr);
                    StringBuilder sb2 = new StringBuilder(e.getMessage());
                    sb2.append(" while decoding pair #");
                    sb2.append(i10);
                    sb2.append(" of annotation @");
                    sb2.append(this.typename);
                    sb2.append(", bytes at structOffset ");
                    sb2.append(this.structOffset);
                    sb2.append(s.f32937c);
                    for (int i14 = this.structOffset; i14 <= this.structOffset + this.readOffset && i14 < this.reference.length; i14++) {
                        sb2.append(C15883c.f126249O);
                        sb2.append(Integer.toHexString(this.reference[i14] & 255));
                    }
                    throw new IllegalStateException(sb2.toString(), e);
                }
            } catch (RuntimeException e11) {
                e = e11;
            }
        }
        this.pairs = elementValuePairInfoArr;
    }

    private int readRetentionPolicy(int i10) {
        int u1At = u1At(i10);
        int i11 = i10 + 1;
        if (u1At == 64) {
            return scanAnnotation(i11, false, false);
        }
        if (u1At != 70 && u1At != 83 && u1At != 99) {
            if (u1At == 101) {
                int i12 = this.constantPoolOffsets[u2At(i11)] - this.structOffset;
                char[] utf8At = utf8At(i12 + 3, u2At(i12 + 1));
                int i13 = i10 + 3;
                if (utf8At.length == 38 && CharOperation.equals(utf8At, ConstantPool.JAVA_LANG_ANNOTATION_RETENTIONPOLICY)) {
                    int i14 = this.constantPoolOffsets[u2At(i13)] - this.structOffset;
                    this.standardAnnotationTagBits |= Annotation.getRetentionPolicy(utf8At(i14 + 3, u2At(i14 + 1)));
                }
                return i10 + 5;
            }
            if (u1At != 115 && u1At != 73 && u1At != 74 && u1At != 90) {
                if (u1At == 91) {
                    int u2At = u2At(i11);
                    int i15 = i10 + 3;
                    for (int i16 = 0; i16 < u2At; i16++) {
                        i15 = scanElementValue(i15);
                    }
                    return i15;
                }
                switch (u1At) {
                    case 66:
                    case 67:
                    case 68:
                        break;
                    default:
                        throw new IllegalStateException();
                }
            }
        }
        return i10 + 3;
    }

    private int readTargetValue(int i10) {
        int u1At = u1At(i10);
        int i11 = i10 + 1;
        if (u1At == 64) {
            return scanAnnotation(i11, false, false);
        }
        if (u1At != 70 && u1At != 83 && u1At != 99) {
            if (u1At == 101) {
                int i12 = this.constantPoolOffsets[u2At(i11)] - this.structOffset;
                char[] utf8At = utf8At(i12 + 3, u2At(i12 + 1));
                int i13 = i10 + 3;
                if (utf8At.length == 34 && CharOperation.equals(utf8At, ConstantPool.JAVA_LANG_ANNOTATION_ELEMENTTYPE)) {
                    int i14 = this.constantPoolOffsets[u2At(i13)] - this.structOffset;
                    this.standardAnnotationTagBits |= Annotation.getTargetElementType(utf8At(i14 + 3, u2At(i14 + 1)));
                }
                return i10 + 5;
            }
            if (u1At != 115 && u1At != 73 && u1At != 74 && u1At != 90) {
                if (u1At == 91) {
                    int u2At = u2At(i11);
                    int i15 = i10 + 3;
                    if (u2At == 0) {
                        this.standardAnnotationTagBits |= 34359738368L;
                        return i15;
                    }
                    for (int i16 = 0; i16 < u2At; i16++) {
                        i15 = readTargetValue(i15);
                    }
                    return i15;
                }
                switch (u1At) {
                    case 66:
                    case 67:
                    case 68:
                        break;
                    default:
                        throw new IllegalStateException();
                }
            }
        }
        return i10 + 3;
    }

    private void sanitizePairs(ElementValuePairInfo[] elementValuePairInfoArr) {
        if (elementValuePairInfoArr == null) {
            this.pairs = ElementValuePairInfo.NoMembers;
            return;
        }
        ElementValuePairInfo[] elementValuePairInfoArr2 = new ElementValuePairInfo[elementValuePairInfoArr.length];
        int i10 = 0;
        for (ElementValuePairInfo elementValuePairInfo : elementValuePairInfoArr) {
            if (elementValuePairInfo != null) {
                elementValuePairInfoArr2[i10] = elementValuePairInfo;
                i10++;
            }
        }
        if (i10 < elementValuePairInfoArr.length) {
            this.pairs = (ElementValuePairInfo[]) Arrays.copyOf(elementValuePairInfoArr2, i10);
        } else {
            this.pairs = elementValuePairInfoArr2;
        }
    }

    private int scanAnnotation(int i10, boolean z10, boolean z11) {
        int i11 = this.constantPoolOffsets[u2At(i10)] - this.structOffset;
        char[] utf8At = utf8At(i11 + 3, u2At(i11 + 1));
        if (z11) {
            this.typename = utf8At;
        }
        int u2At = u2At(i10 + 2);
        int i12 = i10 + 4;
        if (z10 && z11) {
            int length = utf8At.length;
            if (length != 22) {
                if (length != 23) {
                    if (length != 29) {
                        if (length != 52) {
                            if (length == 32) {
                                if (CharOperation.equals(utf8At, ConstantPool.JAVA_LANG_ANNOTATION_RETENTION)) {
                                    return readRetentionPolicy(i10 + 6);
                                }
                                if (CharOperation.equals(utf8At, ConstantPool.JAVA_LANG_ANNOTATION_INHERITED)) {
                                    this.standardAnnotationTagBits |= 281474976710656L;
                                    return i12;
                                }
                            } else if (length == 33 && CharOperation.equals(utf8At, ConstantPool.JAVA_LANG_ANNOTATION_DOCUMENTED)) {
                                this.standardAnnotationTagBits |= 140737488355328L;
                                return i12;
                            }
                        } else if (CharOperation.equals(utf8At, ConstantPool.JAVA_LANG_INVOKE_METHODHANDLE_POLYMORPHICSIGNATURE)) {
                            this.standardAnnotationTagBits |= 4503599627370496L;
                            return i12;
                        }
                    } else if (CharOperation.equals(utf8At, ConstantPool.JAVA_LANG_ANNOTATION_TARGET)) {
                        return readTargetValue(i10 + 6);
                    }
                } else if (CharOperation.equals(utf8At, ConstantPool.JAVA_LANG_SAFEVARARGS)) {
                    this.standardAnnotationTagBits |= 2251799813685248L;
                    return i12;
                }
            } else if (CharOperation.equals(utf8At, ConstantPool.JAVA_LANG_DEPRECATED)) {
                this.standardAnnotationTagBits |= 70368744177664L;
            }
        }
        for (int i13 = 0; i13 < u2At; i13++) {
            i12 = scanElementValue(i12 + 2);
        }
        return i12;
    }

    private int scanElementValue(int i10) {
        int u1At = u1At(i10);
        int i11 = i10 + 1;
        if (u1At == 64) {
            return scanAnnotation(i11, false, false);
        }
        if (u1At != 70 && u1At != 83 && u1At != 99) {
            if (u1At == 101) {
                return i10 + 5;
            }
            if (u1At != 115 && u1At != 73 && u1At != 74) {
                if (u1At != 90) {
                    if (u1At == 91) {
                        int u2At = u2At(i11);
                        int i12 = i10 + 3;
                        for (int i13 = 0; i13 < u2At; i13++) {
                            i12 = scanElementValue(i12);
                        }
                        return i12;
                    }
                    switch (u1At) {
                        case 66:
                        case 67:
                        case 68:
                            break;
                        default:
                            throw new IllegalStateException();
                    }
                } else if ((this.standardAnnotationTagBits & 70368744177664L) != 0 && i4At((this.constantPoolOffsets[u2At(i11)] - this.structOffset) + 1) == 1) {
                    this.standardAnnotationTagBits |= 4611686018427387904L;
                }
            }
        }
        return i10 + 3;
    }

    public Object decodeDefaultValue() {
        int u1At = u1At(this.readOffset);
        int i10 = this.readOffset + 1;
        this.readOffset = i10;
        if (u1At == 64) {
            AnnotationInfo annotationInfo = new AnnotationInfo(this.reference, this.constantPoolOffsets, i10 + this.structOffset, false, true);
            this.readOffset += annotationInfo.readOffset;
            return annotationInfo;
        }
        if (u1At == 70) {
            Constant fromValue = FloatConstant.fromValue(floatAt((this.constantPoolOffsets[u2At(i10)] - this.structOffset) + 1));
            this.readOffset += 2;
            return fromValue;
        }
        if (u1At == 83) {
            Constant fromValue2 = ShortConstant.fromValue((short) i4At((this.constantPoolOffsets[u2At(i10)] - this.structOffset) + 1));
            this.readOffset += 2;
            return fromValue2;
        }
        if (u1At == 99) {
            int i11 = this.constantPoolOffsets[u2At(i10)] - this.structOffset;
            ClassSignature classSignature = new ClassSignature(utf8At(i11 + 3, u2At(i11 + 1)));
            this.readOffset += 2;
            return classSignature;
        }
        if (u1At == 101) {
            int i12 = this.constantPoolOffsets[u2At(i10)] - this.structOffset;
            char[] utf8At = utf8At(i12 + 3, u2At(i12 + 1));
            int i13 = this.readOffset + 2;
            this.readOffset = i13;
            int i14 = this.constantPoolOffsets[u2At(i13)] - this.structOffset;
            char[] utf8At2 = utf8At(i14 + 3, u2At(i14 + 1));
            this.readOffset += 2;
            return new EnumConstantSignature(utf8At, utf8At2);
        }
        if (u1At == 115) {
            int i15 = this.constantPoolOffsets[u2At(i10)] - this.structOffset;
            Constant fromValue3 = StringConstant.fromValue(String.valueOf(utf8At(i15 + 3, u2At(i15 + 1))));
            this.readOffset += 2;
            return fromValue3;
        }
        if (u1At == 73) {
            Constant fromValue4 = IntConstant.fromValue(i4At((this.constantPoolOffsets[u2At(i10)] - this.structOffset) + 1));
            this.readOffset += 2;
            return fromValue4;
        }
        if (u1At == 74) {
            Constant fromValue5 = LongConstant.fromValue(i8At((this.constantPoolOffsets[u2At(i10)] - this.structOffset) + 1));
            this.readOffset += 2;
            return fromValue5;
        }
        if (u1At == 90) {
            Constant fromValue6 = BooleanConstant.fromValue(i4At((this.constantPoolOffsets[u2At(i10)] - this.structOffset) + 1) == 1);
            this.readOffset += 2;
            return fromValue6;
        }
        if (u1At == 91) {
            int u2At = u2At(i10);
            this.readOffset += 2;
            if (u2At == 0) {
                return EmptyValueArray;
            }
            Object[] objArr = new Object[u2At];
            for (int i16 = 0; i16 < u2At; i16++) {
                objArr[i16] = decodeDefaultValue();
            }
            return objArr;
        }
        switch (u1At) {
            case 66:
                Constant fromValue7 = ByteConstant.fromValue((byte) i4At((this.constantPoolOffsets[u2At(i10)] - this.structOffset) + 1));
                this.readOffset += 2;
                return fromValue7;
            case 67:
                Constant fromValue8 = CharConstant.fromValue((char) i4At((this.constantPoolOffsets[u2At(i10)] - this.structOffset) + 1));
                this.readOffset += 2;
                return fromValue8;
            case 68:
                Constant fromValue9 = DoubleConstant.fromValue(doubleAt((this.constantPoolOffsets[u2At(i10)] - this.structOffset) + 1));
                this.readOffset += 2;
                return fromValue9;
            default:
                throw new IllegalStateException("Unrecognized tag " + (u1At == 0 ? "0x00" : String.valueOf((char) u1At) + " (" + Integer.toHexString(u1At & 255) + ')'));
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AnnotationInfo annotationInfo = (AnnotationInfo) obj;
        return Arrays.equals(this.pairs, annotationInfo.pairs) && Arrays.equals(this.typename, annotationInfo.typename);
    }

    @Override
    public IBinaryElementValuePair[] getElementValuePairs() {
        if (this.pairs == null) {
            lazyInitialize();
        }
        return this.pairs;
    }

    @Override
    public char[] getTypeName() {
        return this.typename;
    }

    public int hashCode() {
        return ((Util.hashCode(this.pairs) + 31) * 31) + CharOperation.hashCode(this.typename);
    }

    public void initialize() {
        if (this.pairs == null) {
            decodeAnnotation();
        }
    }

    @Override
    public boolean isDeprecatedAnnotation() {
        return (this.standardAnnotationTagBits & 4611756387171565568L) != 0;
    }

    public synchronized void lazyInitialize() {
        if (this.pairs == null) {
            decodeAnnotation();
        }
    }

    public String toString() {
        return BinaryTypeFormatter.annotationToString(this);
    }

    public AnnotationInfo(byte[] bArr, int[] iArr, int i10, boolean z10, boolean z11) {
        this(bArr, iArr, i10);
        if (z11) {
            decodeAnnotation();
        } else {
            this.readOffset = scanAnnotation(0, z10, true);
        }
    }
}
