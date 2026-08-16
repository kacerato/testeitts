package org.eclipse.jdt.internal.compiler.classfmt;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.codegen.AttributeNamesConstants;
import org.eclipse.jdt.internal.compiler.codegen.ConstantPool;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;

public class MethodInfo extends ClassFileStruct implements IBinaryMethod, Comparable {
    private static final char[] ARG;
    private static final char[][] noArgumentNames;
    private static final char[][] noException;
    protected int accessFlags;
    protected volatile char[][] argumentNames;
    protected int attributeBytes;
    protected char[] descriptor;
    protected volatile char[][] exceptionNames;
    protected char[] name;
    protected char[] signature;
    protected int signatureUtf8Offset;
    protected long tagBits;
    protected long version;

    static {
        char[][] cArr = CharOperation.NO_CHAR_CHAR;
        noException = cArr;
        noArgumentNames = cArr;
        ARG = "arg".toCharArray();
    }

    public MethodInfo(byte[] bArr, int[] iArr, int i10, long j10) {
        super(bArr, iArr, i10);
        this.accessFlags = -1;
        this.signatureUtf8Offset = -1;
        this.version = j10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e5  */
    /* JADX WARN: Type inference failed for: r1v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static MethodInfo createMethod(byte[] bArr, int[] iArr, int i10, long j10) {
        AnnotationInfo[] annotationInfoArr;
        TypeAnnotationInfo[] typeAnnotationInfoArr;
        TypeAnnotationInfo[] decodeTypeAnnotations;
        Object[] objArr;
        TypeAnnotationInfo[] typeAnnotationInfoArr2;
        AnnotationInfo[][] decodeParamAnnotations;
        MethodInfo methodInfo = new MethodInfo(bArr, iArr, i10, j10);
        int u2At = methodInfo.u2At(6);
        int i11 = 8;
        TypeAnnotationInfo[] typeAnnotationInfoArr3 = null;
        AnnotationInfo[][] annotationInfoArr2 = 0;
        AnnotationInfo[] annotationInfoArr3 = null;
        int i12 = 0;
        while (i12 < u2At) {
            int i13 = methodInfo.constantPoolOffsets[methodInfo.u2At(i11)] - methodInfo.structOffset;
            char[] utf8At = methodInfo.utf8At(i13 + 3, methodInfo.u2At(i13 + 1));
            if (utf8At.length > 0) {
                char c10 = utf8At[0];
                if (c10 != 'M') {
                    if (c10 == 'R') {
                        if (CharOperation.equals(utf8At, AttributeNamesConstants.RuntimeVisibleAnnotationsName)) {
                            annotationInfoArr = decodeMethodAnnotations(i11, true, methodInfo);
                        } else if (CharOperation.equals(utf8At, AttributeNamesConstants.RuntimeInvisibleAnnotationsName)) {
                            annotationInfoArr = decodeMethodAnnotations(i11, false, methodInfo);
                        } else {
                            if (CharOperation.equals(utf8At, AttributeNamesConstants.RuntimeVisibleParameterAnnotationsName)) {
                                decodeParamAnnotations = decodeParamAnnotations(i11, true, methodInfo);
                            } else if (CharOperation.equals(utf8At, AttributeNamesConstants.RuntimeInvisibleParameterAnnotationsName)) {
                                decodeParamAnnotations = decodeParamAnnotations(i11, false, methodInfo);
                            } else {
                                if (CharOperation.equals(utf8At, AttributeNamesConstants.RuntimeVisibleTypeAnnotationsName)) {
                                    decodeTypeAnnotations = decodeTypeAnnotations(i11, true, methodInfo);
                                } else if (CharOperation.equals(utf8At, AttributeNamesConstants.RuntimeInvisibleTypeAnnotationsName)) {
                                    decodeTypeAnnotations = decodeTypeAnnotations(i11, false, methodInfo);
                                } else {
                                    annotationInfoArr = null;
                                    typeAnnotationInfoArr = null;
                                    typeAnnotationInfoArr2 = typeAnnotationInfoArr;
                                    objArr = typeAnnotationInfoArr;
                                    if (annotationInfoArr == null) {
                                        if (annotationInfoArr3 == null) {
                                            annotationInfoArr3 = annotationInfoArr;
                                        } else {
                                            int length = annotationInfoArr3.length;
                                            AnnotationInfo[] annotationInfoArr4 = new AnnotationInfo[annotationInfoArr.length + length];
                                            System.arraycopy(annotationInfoArr3, 0, annotationInfoArr4, 0, length);
                                            System.arraycopy(annotationInfoArr, 0, annotationInfoArr4, length, annotationInfoArr.length);
                                            annotationInfoArr3 = annotationInfoArr4;
                                        }
                                    } else if (objArr != 0) {
                                        int length2 = objArr.length;
                                        if (annotationInfoArr2 == 0) {
                                            annotationInfoArr2 = objArr;
                                        } else {
                                            for (int i14 = 0; i14 < length2; i14++) {
                                                Object[] objArr2 = objArr[i14];
                                                int length3 = objArr2 == 0 ? 0 : objArr2.length;
                                                if (length3 > 0) {
                                                    Object[] objArr3 = annotationInfoArr2[i14];
                                                    if (objArr3 == 0) {
                                                        annotationInfoArr2[i14] = objArr2;
                                                    } else {
                                                        int length4 = objArr3.length;
                                                        AnnotationInfo[] annotationInfoArr5 = new AnnotationInfo[length4 + length3];
                                                        System.arraycopy(objArr3, 0, annotationInfoArr5, 0, length4);
                                                        System.arraycopy(objArr[i14], 0, annotationInfoArr5, length4, length3);
                                                        annotationInfoArr2[i14] = annotationInfoArr5;
                                                    }
                                                }
                                            }
                                        }
                                    } else if (typeAnnotationInfoArr2 != null) {
                                        if (typeAnnotationInfoArr3 == null) {
                                            typeAnnotationInfoArr3 = typeAnnotationInfoArr2;
                                        } else {
                                            int length5 = typeAnnotationInfoArr3.length;
                                            TypeAnnotationInfo[] typeAnnotationInfoArr4 = new TypeAnnotationInfo[typeAnnotationInfoArr2.length + length5];
                                            System.arraycopy(typeAnnotationInfoArr3, 0, typeAnnotationInfoArr4, 0, length5);
                                            System.arraycopy(typeAnnotationInfoArr2, 0, typeAnnotationInfoArr4, length5, typeAnnotationInfoArr2.length);
                                            typeAnnotationInfoArr3 = typeAnnotationInfoArr4;
                                        }
                                    }
                                }
                                objArr = 0;
                                typeAnnotationInfoArr2 = decodeTypeAnnotations;
                                annotationInfoArr = null;
                                if (annotationInfoArr == null) {
                                }
                            }
                            typeAnnotationInfoArr2 = null;
                            objArr = decodeParamAnnotations;
                            annotationInfoArr = null;
                            if (annotationInfoArr == null) {
                            }
                        }
                        typeAnnotationInfoArr = null;
                        typeAnnotationInfoArr2 = typeAnnotationInfoArr;
                        objArr = typeAnnotationInfoArr;
                        if (annotationInfoArr == null) {
                        }
                    } else if (c10 == 'S' && CharOperation.equals(AttributeNamesConstants.SignatureName, utf8At)) {
                        methodInfo.signatureUtf8Offset = methodInfo.constantPoolOffsets[methodInfo.u2At(i11 + 6)] - methodInfo.structOffset;
                    }
                } else if (CharOperation.equals(utf8At, AttributeNamesConstants.MethodParametersName)) {
                    methodInfo.decodeMethodParameters(i11, methodInfo);
                }
            }
            i11 = (int) (i11 + methodInfo.u4At(i11 + 2) + 6);
            i12++;
            annotationInfoArr2 = annotationInfoArr2;
        }
        methodInfo.attributeBytes = i11;
        return typeAnnotationInfoArr3 != null ? new MethodInfoWithTypeAnnotations(methodInfo, annotationInfoArr3, annotationInfoArr2, typeAnnotationInfoArr3) : annotationInfoArr2 != 0 ? new MethodInfoWithParameterAnnotations(methodInfo, annotationInfoArr3, annotationInfoArr2) : annotationInfoArr3 != null ? new MethodInfoWithAnnotations(methodInfo, annotationInfoArr3) : methodInfo;
    }

    public static AnnotationInfo[] decodeAnnotations(int i10, boolean z10, int i11, MethodInfo methodInfo) {
        AnnotationInfo[] annotationInfoArr = new AnnotationInfo[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            AnnotationInfo annotationInfo = new AnnotationInfo(methodInfo.reference, methodInfo.constantPoolOffsets, i10 + methodInfo.structOffset, z10, false);
            annotationInfoArr[i12] = annotationInfo;
            i10 += annotationInfo.readOffset;
        }
        return annotationInfoArr;
    }

    private void decodeCodeAttribute(int i10) {
        int i11 = i10 + 10;
        int u4At = (int) u4At(i11);
        int i12 = i11 + u4At + 4;
        int u2At = u2At(i12);
        int i13 = i12 + 2;
        if (u2At != 0) {
            for (int i14 = 0; i14 < u2At; i14++) {
                i13 += 8;
            }
        }
        int u2At2 = u2At(i13);
        int i15 = i13 + 2;
        for (int i16 = 0; i16 < u2At2; i16++) {
            int i17 = this.constantPoolOffsets[u2At(i15)] - this.structOffset;
            if (CharOperation.equals(utf8At(i17 + 3, u2At(i17 + 1)), AttributeNamesConstants.LocalVariableTableName)) {
                decodeLocalVariableAttribute(i15, u4At);
            }
            i15 = (int) (i15 + u4At(i15 + 2) + 6);
        }
    }

    private void decodeLocalVariableAttribute(int i10, int i11) {
        int u2At = u2At(i10 + 6);
        if (u2At != 0) {
            int i12 = i10 + 8;
            char[][] cArr = new char[u2At];
            int i13 = 0;
            for (int i14 = 0; i14 < u2At && u2At(i12) == 0; i14++) {
                int i15 = this.constantPoolOffsets[u2At(i12 + 4)] - this.structOffset;
                char[] utf8At = utf8At(i15 + 3, u2At(i15 + 1));
                if (!CharOperation.equals(utf8At, ConstantPool.This)) {
                    cArr[i13] = utf8At;
                    i13++;
                }
                i12 += 10;
            }
            if (i13 != u2At) {
                char[][] cArr2 = new char[i13];
                System.arraycopy(cArr, 0, cArr2, 0, i13);
                cArr = cArr2;
            }
            this.argumentNames = cArr;
        }
    }

    public static AnnotationInfo[] decodeMethodAnnotations(int i10, boolean z10, MethodInfo methodInfo) {
        int u2At = methodInfo.u2At(i10 + 6);
        if (u2At <= 0) {
            return null;
        }
        AnnotationInfo[] decodeAnnotations = decodeAnnotations(i10 + 8, z10, u2At, methodInfo);
        if (!z10) {
            return decodeAnnotations;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < u2At; i12++) {
            long j10 = decodeAnnotations[i12].standardAnnotationTagBits;
            methodInfo.tagBits |= j10;
            if (j10 == 0 || (methodInfo.version >= ClassFileConstants.JDK9 && (j10 & 70368744177664L) != 0)) {
                i11++;
            } else {
                decodeAnnotations[i12] = null;
            }
        }
        if (i11 == u2At) {
            return decodeAnnotations;
        }
        if (i11 == 0) {
            return null;
        }
        AnnotationInfo[] annotationInfoArr = new AnnotationInfo[i11];
        int i13 = 0;
        for (int i14 = 0; i14 < u2At; i14++) {
            AnnotationInfo annotationInfo = decodeAnnotations[i14];
            if (annotationInfo != null) {
                annotationInfoArr[i13] = annotationInfo;
                i13++;
            }
        }
        return annotationInfoArr;
    }

    private void decodeMethodParameters(int i10, MethodInfo methodInfo) {
        int u1At = u1At(i10 + 6);
        if (u1At != 0) {
            int i11 = i10 + 7;
            char[][] cArr = new char[u1At];
            for (int i12 = 0; i12 < u1At; i12++) {
                int u2At = u2At(i11);
                if (u2At != 0) {
                    int i13 = this.constantPoolOffsets[u2At] - this.structOffset;
                    cArr[i12] = utf8At(i13 + 3, u2At(i13 + 1));
                } else {
                    cArr[i12] = CharOperation.concat(ARG, String.valueOf(i12).toCharArray());
                }
                i11 += 4;
            }
            this.argumentNames = cArr;
        }
    }

    public static AnnotationInfo[][] decodeParamAnnotations(int i10, boolean z10, MethodInfo methodInfo) {
        int u1At = methodInfo.u1At(i10 + 6);
        AnnotationInfo[][] annotationInfoArr = null;
        if (u1At > 0) {
            int i11 = i10 + 7;
            for (int i12 = 0; i12 < u1At; i12++) {
                int u2At = methodInfo.u2At(i11);
                i11 += 2;
                if (u2At > 0) {
                    if (annotationInfoArr == null) {
                        annotationInfoArr = new AnnotationInfo[u1At];
                    }
                    AnnotationInfo[][] annotationInfoArr2 = annotationInfoArr;
                    AnnotationInfo[] decodeAnnotations = decodeAnnotations(i11, z10, u2At, methodInfo);
                    annotationInfoArr2[i12] = decodeAnnotations;
                    for (AnnotationInfo annotationInfo : decodeAnnotations) {
                        i11 += annotationInfo.readOffset;
                    }
                    annotationInfoArr = annotationInfoArr2;
                }
            }
        }
        return annotationInfoArr;
    }

    public static TypeAnnotationInfo[] decodeTypeAnnotations(int i10, boolean z10, MethodInfo methodInfo) {
        int u2At = methodInfo.u2At(i10 + 6);
        if (u2At <= 0) {
            return null;
        }
        int i11 = i10 + 8;
        TypeAnnotationInfo[] typeAnnotationInfoArr = new TypeAnnotationInfo[u2At];
        for (int i12 = 0; i12 < u2At; i12++) {
            TypeAnnotationInfo typeAnnotationInfo = new TypeAnnotationInfo(methodInfo.reference, methodInfo.constantPoolOffsets, i11 + methodInfo.structOffset, z10, false);
            i11 += typeAnnotationInfo.readOffset;
            typeAnnotationInfoArr[i12] = typeAnnotationInfo;
        }
        return typeAnnotationInfoArr;
    }

    private synchronized void readCodeAttribute() {
        int u2At = u2At(6);
        if (u2At != 0) {
            int i10 = 8;
            for (int i11 = 0; i11 < u2At; i11++) {
                int i12 = this.constantPoolOffsets[u2At(i10)] - this.structOffset;
                if (CharOperation.equals(utf8At(i12 + 3, u2At(i12 + 1)), AttributeNamesConstants.CodeName)) {
                    decodeCodeAttribute(i10);
                    if (this.argumentNames == null) {
                        this.argumentNames = noArgumentNames;
                    }
                    return;
                }
                i10 = (int) (i10 + u4At(i10 + 2) + 6);
            }
        }
        this.argumentNames = noArgumentNames;
    }

    private synchronized void readExceptionAttributes() {
        try {
            int u2At = u2At(6);
            int i10 = 8;
            char[][] cArr = null;
            for (int i11 = 0; i11 < u2At; i11++) {
                int i12 = this.constantPoolOffsets[u2At(i10)] - this.structOffset;
                if (CharOperation.equals(utf8At(i12 + 3, u2At(i12 + 1)), AttributeNamesConstants.ExceptionsName)) {
                    int u2At2 = u2At(i10 + 6);
                    i10 += 8;
                    if (u2At2 == 0) {
                        cArr = noException;
                    } else {
                        char[][] cArr2 = new char[u2At2];
                        for (int i13 = 0; i13 < u2At2; i13++) {
                            int[] iArr = this.constantPoolOffsets;
                            int i14 = iArr[u2At((iArr[u2At(i10)] - this.structOffset) + 1)] - this.structOffset;
                            cArr2[i13] = utf8At(i14 + 3, u2At(i14 + 1));
                            i10 += 2;
                        }
                        cArr = cArr2;
                    }
                } else {
                    i10 = (int) (i10 + u4At(i10 + 2) + 6);
                }
            }
            if (cArr == null) {
                this.exceptionNames = noException;
            } else {
                this.exceptionNames = cArr;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized void readModifierRelatedAttributes() {
        int i10;
        int u2At = u2At(0);
        int u2At2 = u2At(6);
        int i11 = 8;
        for (int i12 = 0; i12 < u2At2; i12++) {
            int i13 = this.constantPoolOffsets[u2At(i11)] - this.structOffset;
            char[] utf8At = utf8At(i13 + 3, u2At(i13 + 1));
            if (utf8At.length != 0) {
                char c10 = utf8At[0];
                if (c10 != 'A') {
                    if (c10 != 'D') {
                        if (c10 != 'S') {
                            if (c10 == 'V' && CharOperation.equals(utf8At, AttributeNamesConstants.VarargsName)) {
                                u2At |= 128;
                            }
                        } else if (CharOperation.equals(utf8At, AttributeNamesConstants.SyntheticName)) {
                            u2At |= 4096;
                        }
                    } else if (CharOperation.equals(utf8At, AttributeNamesConstants.DeprecatedName)) {
                        i10 = 1048576;
                        u2At |= i10;
                    }
                } else if (CharOperation.equals(utf8At, AttributeNamesConstants.AnnotationDefaultName)) {
                    i10 = 131072;
                    u2At |= i10;
                }
            }
            i11 = (int) (i11 + u4At(i11 + 2) + 6);
        }
        this.accessFlags = u2At;
    }

    @Override
    public int compareTo(Object obj) {
        MethodInfo methodInfo = (MethodInfo) obj;
        int compareTo = new String(getSelector()).compareTo(new String(methodInfo.getSelector()));
        return compareTo != 0 ? compareTo : new String(getMethodDescriptor()).compareTo(new String(methodInfo.getMethodDescriptor()));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof MethodInfo)) {
            return false;
        }
        MethodInfo methodInfo = (MethodInfo) obj;
        return CharOperation.equals(getSelector(), methodInfo.getSelector()) && CharOperation.equals(getMethodDescriptor(), methodInfo.getMethodDescriptor());
    }

    @Override
    public int getAnnotatedParametersCount() {
        return 0;
    }

    public IBinaryAnnotation[] getAnnotations() {
        return null;
    }

    @Override
    public char[][] getArgumentNames() {
        if (this.argumentNames == null) {
            readCodeAttribute();
        }
        return this.argumentNames;
    }

    public Object getDefaultValue() {
        return null;
    }

    @Override
    public char[][] getExceptionTypeNames() {
        if (this.exceptionNames == null) {
            readExceptionAttributes();
        }
        return this.exceptionNames;
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
    public char[] getMethodDescriptor() {
        if (this.descriptor == null) {
            int i10 = this.constantPoolOffsets[u2At(4)] - this.structOffset;
            this.descriptor = utf8At(i10 + 3, u2At(i10 + 1));
        }
        return this.descriptor;
    }

    @Override
    public int getModifiers() {
        if (this.accessFlags == -1) {
            readModifierRelatedAttributes();
        }
        return this.accessFlags;
    }

    @Override
    public IBinaryAnnotation[] getParameterAnnotations(int i10, char[] cArr) {
        return null;
    }

    @Override
    public char[] getSelector() {
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

    public IBinaryTypeAnnotation[] getTypeAnnotations() {
        return null;
    }

    public int hashCode() {
        return CharOperation.hashCode(getSelector()) + CharOperation.hashCode(getMethodDescriptor());
    }

    public void initialize() {
        getModifiers();
        getSelector();
        getMethodDescriptor();
        getExceptionTypeNames();
        getGenericSignature();
        getArgumentNames();
        reset();
    }

    @Override
    public boolean isClinit() {
        return JavaBinaryNames.isClinit(getSelector());
    }

    @Override
    public boolean isConstructor() {
        return JavaBinaryNames.isConstructor(getSelector());
    }

    public boolean isSynthetic() {
        return (getModifiers() & 4096) != 0;
    }

    public int sizeInBytes() {
        return this.attributeBytes;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        toString(stringBuffer);
        return stringBuffer.toString();
    }

    public void toStringContent(StringBuffer stringBuffer) {
        BinaryTypeFormatter.methodToStringContent(stringBuffer, this);
    }

    public void toString(StringBuffer stringBuffer) {
        stringBuffer.append(getClass().getName());
        toStringContent(stringBuffer);
    }
}
