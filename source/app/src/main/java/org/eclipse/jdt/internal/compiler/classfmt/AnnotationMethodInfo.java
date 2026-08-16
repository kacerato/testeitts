package org.eclipse.jdt.internal.compiler.classfmt;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.codegen.AttributeNamesConstants;

public class AnnotationMethodInfo extends MethodInfo {
    protected Object defaultValue;

    public AnnotationMethodInfo(MethodInfo methodInfo, Object obj) {
        super(methodInfo.reference, methodInfo.constantPoolOffsets, methodInfo.structOffset, methodInfo.version);
        this.defaultValue = obj;
        this.accessFlags = methodInfo.accessFlags;
        this.attributeBytes = methodInfo.attributeBytes;
        this.descriptor = methodInfo.descriptor;
        this.exceptionNames = methodInfo.exceptionNames;
        this.name = methodInfo.name;
        this.signature = methodInfo.signature;
        this.signatureUtf8Offset = methodInfo.signatureUtf8Offset;
        this.tagBits = methodInfo.tagBits;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static MethodInfo createAnnotationMethod(byte[] bArr, int[] iArr, int i10, long j10) {
        AnnotationInfo[] annotationInfoArr;
        TypeAnnotationInfo[] typeAnnotationInfoArr;
        TypeAnnotationInfo[] decodeTypeAnnotations;
        MethodInfo methodInfo = new MethodInfo(bArr, iArr, i10, j10);
        int u2At = methodInfo.u2At(6);
        int i11 = 8;
        Object obj = null;
        TypeAnnotationInfo[] typeAnnotationInfoArr2 = null;
        AnnotationInfo[] annotationInfoArr2 = null;
        for (int i12 = 0; i12 < u2At; i12++) {
            int i13 = methodInfo.constantPoolOffsets[methodInfo.u2At(i11)] - methodInfo.structOffset;
            char[] utf8At = methodInfo.utf8At(i13 + 3, methodInfo.u2At(i13 + 1));
            if (utf8At.length > 0) {
                char c10 = utf8At[0];
                if (c10 != 'A') {
                    if (c10 == 'R') {
                        if (CharOperation.equals(utf8At, AttributeNamesConstants.RuntimeVisibleAnnotationsName)) {
                            annotationInfoArr = MethodInfo.decodeMethodAnnotations(i11, true, methodInfo);
                        } else if (CharOperation.equals(utf8At, AttributeNamesConstants.RuntimeInvisibleAnnotationsName)) {
                            annotationInfoArr = MethodInfo.decodeMethodAnnotations(i11, false, methodInfo);
                        } else {
                            if (CharOperation.equals(utf8At, AttributeNamesConstants.RuntimeVisibleTypeAnnotationsName)) {
                                decodeTypeAnnotations = MethodInfo.decodeTypeAnnotations(i11, true, methodInfo);
                            } else if (CharOperation.equals(utf8At, AttributeNamesConstants.RuntimeInvisibleTypeAnnotationsName)) {
                                decodeTypeAnnotations = MethodInfo.decodeTypeAnnotations(i11, false, methodInfo);
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
                        methodInfo.signatureUtf8Offset = methodInfo.constantPoolOffsets[methodInfo.u2At(i11 + 6)] - methodInfo.structOffset;
                    }
                } else if (CharOperation.equals(utf8At, AttributeNamesConstants.AnnotationDefaultName)) {
                    obj = new AnnotationInfo(methodInfo.reference, methodInfo.constantPoolOffsets, i11 + 6 + methodInfo.structOffset).decodeDefaultValue();
                }
            }
            i11 = (int) (i11 + methodInfo.u4At(i11 + 2) + 6);
        }
        methodInfo.attributeBytes = i11;
        return obj != null ? typeAnnotationInfoArr2 != null ? new AnnotationMethodInfoWithTypeAnnotations(methodInfo, obj, annotationInfoArr2, typeAnnotationInfoArr2) : annotationInfoArr2 != null ? new AnnotationMethodInfoWithAnnotations(methodInfo, obj, annotationInfoArr2) : new AnnotationMethodInfo(methodInfo, obj) : typeAnnotationInfoArr2 != null ? new MethodInfoWithTypeAnnotations(methodInfo, annotationInfoArr2, null, typeAnnotationInfoArr2) : annotationInfoArr2 != null ? new MethodInfoWithAnnotations(methodInfo, annotationInfoArr2) : methodInfo;
    }

    @Override
    public Object getDefaultValue() {
        return this.defaultValue;
    }
}
