package org.eclipse.jdt.internal.compiler.lookup;

import java.util.Arrays;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.Annotation;

public class AnnotationBinding {
    ElementValuePair[] pairs;
    ReferenceBinding type;

    public AnnotationBinding(ReferenceBinding referenceBinding, ElementValuePair[] elementValuePairArr) {
        this.type = referenceBinding;
        this.pairs = elementValuePairArr;
    }

    public static AnnotationBinding[] addStandardAnnotations(AnnotationBinding[] annotationBindingArr, long j10, LookupEnvironment lookupEnvironment) {
        boolean z10;
        if ((j10 & TagBits.AllStandardAnnotationsMask) == 0) {
            return annotationBindingArr;
        }
        int length = annotationBindingArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                z10 = false;
                break;
            }
            if (annotationBindingArr[i10].getAnnotationType().f102482id == 44) {
                z10 = true;
                break;
            }
            i10++;
        }
        long j11 = j10 & TagBits.AnnotationTargetMASK;
        int i11 = j11 == 0 ? 0 : 1;
        long j12 = j10 & 52776558133248L;
        if (j12 != 0) {
            i11++;
        }
        if (!z10 && (j10 & 70368744177664L) != 0) {
            i11++;
        }
        long j13 = j10 & 140737488355328L;
        if (j13 != 0) {
            i11++;
        }
        long j14 = j10 & 281474976710656L;
        if (j14 != 0) {
            i11++;
        }
        long j15 = j10 & 562949953421312L;
        if (j15 != 0) {
            i11++;
        }
        long j16 = j10 & 1125899906842624L;
        if (j16 != 0) {
            i11++;
        }
        long j17 = j10 & 4503599627370496L;
        if (j17 != 0) {
            i11++;
        }
        long j18 = j10 & 2251799813685248L;
        if (j18 != 0) {
            i11++;
        }
        if (i11 == 0) {
            return annotationBindingArr;
        }
        int length2 = annotationBindingArr.length;
        AnnotationBinding[] annotationBindingArr2 = new AnnotationBinding[i11 + length2];
        System.arraycopy(annotationBindingArr, 0, annotationBindingArr2, 0, length2);
        if (j11 != 0) {
            annotationBindingArr2[length2] = buildTargetAnnotation(j10, lookupEnvironment);
            length2++;
        }
        if (j12 != 0) {
            annotationBindingArr2[length2] = buildRetentionAnnotation(j10, lookupEnvironment);
            length2++;
        }
        if (!z10 && (j10 & 70368744177664L) != 0) {
            annotationBindingArr2[length2] = buildMarkerAnnotation(TypeConstants.JAVA_LANG_DEPRECATED, lookupEnvironment.javaBaseModule(), lookupEnvironment);
            length2++;
        }
        if (j13 != 0) {
            annotationBindingArr2[length2] = buildMarkerAnnotation(TypeConstants.JAVA_LANG_ANNOTATION_DOCUMENTED, lookupEnvironment.javaBaseModule(), lookupEnvironment);
            length2++;
        }
        if (j14 != 0) {
            annotationBindingArr2[length2] = buildMarkerAnnotation(TypeConstants.JAVA_LANG_ANNOTATION_INHERITED, lookupEnvironment.javaBaseModule(), lookupEnvironment);
            length2++;
        }
        if (j15 != 0) {
            annotationBindingArr2[length2] = buildMarkerAnnotation(TypeConstants.JAVA_LANG_OVERRIDE, lookupEnvironment.javaBaseModule(), lookupEnvironment);
            length2++;
        }
        if (j16 != 0) {
            annotationBindingArr2[length2] = buildMarkerAnnotation(TypeConstants.JAVA_LANG_SUPPRESSWARNINGS, lookupEnvironment.javaBaseModule(), lookupEnvironment);
            length2++;
        }
        if (j17 != 0) {
            annotationBindingArr2[length2] = buildMarkerAnnotationForMemberType(TypeConstants.JAVA_LANG_INVOKE_METHODHANDLE_$_POLYMORPHICSIGNATURE, lookupEnvironment.javaBaseModule(), lookupEnvironment);
            length2++;
        }
        if (j18 != 0) {
            annotationBindingArr2[length2] = buildMarkerAnnotation(TypeConstants.JAVA_LANG_SAFEVARARGS, lookupEnvironment.javaBaseModule(), lookupEnvironment);
        }
        return annotationBindingArr2;
    }

    private static AnnotationBinding buildMarkerAnnotation(char[][] cArr, ModuleBinding moduleBinding, LookupEnvironment lookupEnvironment) {
        return lookupEnvironment.createAnnotation(lookupEnvironment.getResolvedType(cArr, moduleBinding, null), Binding.NO_ELEMENT_VALUE_PAIRS);
    }

    private static AnnotationBinding buildMarkerAnnotationForMemberType(char[][] cArr, ModuleBinding moduleBinding, LookupEnvironment lookupEnvironment) {
        ReferenceBinding resolvedType = lookupEnvironment.getResolvedType(cArr, moduleBinding, null);
        if (!resolvedType.isValidBinding()) {
            resolvedType = ((ProblemReferenceBinding) resolvedType).closestMatch;
        }
        return lookupEnvironment.createAnnotation(resolvedType, Binding.NO_ELEMENT_VALUE_PAIRS);
    }

    private static AnnotationBinding buildRetentionAnnotation(long j10, LookupEnvironment lookupEnvironment) {
        ReferenceBinding resolvedJavaBaseType = lookupEnvironment.getResolvedJavaBaseType(TypeConstants.JAVA_LANG_ANNOTATION_RETENTIONPOLICY, null);
        return lookupEnvironment.createAnnotation(lookupEnvironment.getResolvedJavaBaseType(TypeConstants.JAVA_LANG_ANNOTATION_RETENTION, null), new ElementValuePair[]{new ElementValuePair(TypeConstants.VALUE, (j10 & 52776558133248L) == 52776558133248L ? resolvedJavaBaseType.getField(TypeConstants.UPPER_RUNTIME, true) : (35184372088832L & j10) != 0 ? resolvedJavaBaseType.getField(TypeConstants.UPPER_CLASS, true) : (j10 & 17592186044416L) != 0 ? resolvedJavaBaseType.getField(TypeConstants.UPPER_SOURCE, true) : null, (MethodBinding) null)});
    }

    private static AnnotationBinding buildTargetAnnotation(long j10, LookupEnvironment lookupEnvironment) {
        ReferenceBinding resolvedJavaBaseType = lookupEnvironment.getResolvedJavaBaseType(TypeConstants.JAVA_LANG_ANNOTATION_TARGET, null);
        if ((j10 & 34359738368L) != 0) {
            return new AnnotationBinding(resolvedJavaBaseType, Binding.NO_ELEMENT_VALUE_PAIRS);
        }
        long j11 = j10 & 4398046511104L;
        int i10 = 0;
        int i11 = j11 != 0 ? 1 : 0;
        long j12 = j10 & 1099511627776L;
        if (j12 != 0) {
            i11++;
        }
        long j13 = j10 & 137438953472L;
        if (j13 != 0) {
            i11++;
        }
        long j14 = j10 & 2199023255552L;
        if (j14 != 0) {
            i11++;
        }
        long j15 = j10 & 274877906944L;
        if (j15 != 0) {
            i11++;
        }
        long j16 = j10 & 8796093022208L;
        if (j16 != 0) {
            i11++;
        }
        long j17 = j10 & 549755813888L;
        if (j17 != 0) {
            i11++;
        }
        long j18 = j10 & 68719476736L;
        if (j18 != 0) {
            i11++;
        }
        long j19 = j10 & 9007199254740992L;
        if (j19 != 0) {
            i11++;
        }
        long j20 = j10 & 18014398509481984L;
        if (j20 != 0) {
            i11++;
        }
        if ((j10 & 2305843009213693952L) != 0) {
            i11++;
        }
        Object[] objArr = new Object[i11];
        if (i11 > 0) {
            ReferenceBinding resolvedType = lookupEnvironment.getResolvedType(TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE, null);
            if (j19 != 0) {
                objArr[0] = resolvedType.getField(TypeConstants.TYPE_USE_TARGET, true);
                i10 = 1;
            }
            if (j11 != 0) {
                objArr[i10] = resolvedType.getField(TypeConstants.UPPER_ANNOTATION_TYPE, true);
                i10++;
            }
            if (j12 != 0) {
                objArr[i10] = resolvedType.getField(TypeConstants.UPPER_CONSTRUCTOR, true);
                i10++;
            }
            if (j13 != 0) {
                objArr[i10] = resolvedType.getField(TypeConstants.UPPER_FIELD, true);
                i10++;
            }
            if (j15 != 0) {
                objArr[i10] = resolvedType.getField(TypeConstants.UPPER_METHOD, true);
                i10++;
            }
            if (j16 != 0) {
                objArr[i10] = resolvedType.getField(TypeConstants.UPPER_PACKAGE, true);
                i10++;
            }
            if (j17 != 0) {
                objArr[i10] = resolvedType.getField(TypeConstants.UPPER_PARAMETER, true);
                i10++;
            }
            if (j20 != 0) {
                objArr[i10] = resolvedType.getField(TypeConstants.TYPE_PARAMETER_TARGET, true);
                i10++;
            }
            if (j18 != 0) {
                objArr[i10] = resolvedType.getField(TypeConstants.TYPE, true);
                i10++;
            }
            if (j14 != 0) {
                objArr[i10] = resolvedType.getField(TypeConstants.UPPER_LOCAL_VARIABLE, true);
            }
        }
        return lookupEnvironment.createAnnotation(resolvedJavaBaseType, new ElementValuePair[]{new ElementValuePair(TypeConstants.VALUE, objArr, (MethodBinding) null)});
    }

    public static void setMethodBindings(ReferenceBinding referenceBinding, ElementValuePair[] elementValuePairArr) {
        int length = elementValuePairArr.length;
        while (true) {
            length--;
            if (length < 0) {
                return;
            }
            ElementValuePair elementValuePair = elementValuePairArr[length];
            MethodBinding[] methods = referenceBinding.getMethods(elementValuePair.getName());
            if (methods != null && methods.length == 1) {
                elementValuePair.setMethodBinding(methods[0]);
            }
        }
    }

    public char[] computeUniqueKey(char[] cArr) {
        char[] computeUniqueKey = this.type.computeUniqueKey(false);
        int length = cArr.length;
        int i10 = length + 1;
        char[] cArr2 = new char[computeUniqueKey.length + i10];
        System.arraycopy(cArr, 0, cArr2, 0, length);
        cArr2[length] = '@';
        System.arraycopy(computeUniqueKey, 0, cArr2, i10, computeUniqueKey.length);
        return cArr2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnnotationBinding)) {
            return false;
        }
        AnnotationBinding annotationBinding = (AnnotationBinding) obj;
        if (getAnnotationType() != annotationBinding.getAnnotationType()) {
            return false;
        }
        ElementValuePair[] elementValuePairs = getElementValuePairs();
        ElementValuePair[] elementValuePairs2 = annotationBinding.getElementValuePairs();
        int length = elementValuePairs.length;
        if (length != elementValuePairs2.length) {
            return false;
        }
        for (ElementValuePair elementValuePair : elementValuePairs) {
            for (int i10 = 0; i10 < length; i10++) {
                ElementValuePair elementValuePair2 = elementValuePairs2[i10];
                if (elementValuePair.binding == elementValuePair2.binding) {
                    Object obj2 = elementValuePair.value;
                    if (obj2 != null) {
                        Object obj3 = elementValuePair2.value;
                        if (obj3 == null) {
                            return false;
                        }
                        if ((obj3 instanceof Object[]) && (obj2 instanceof Object[])) {
                            if (!Arrays.equals((Object[]) obj2, (Object[]) obj3)) {
                                return false;
                            }
                        } else if (!obj3.equals(obj2)) {
                            return false;
                        }
                    } else if (elementValuePair2.value != null) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public ReferenceBinding getAnnotationType() {
        return this.type;
    }

    public ElementValuePair[] getElementValuePairs() {
        return this.pairs;
    }

    public int hashCode() {
        return ((527 + getAnnotationType().hashCode()) * 31) + Arrays.hashCode(getElementValuePairs());
    }

    public void resolve() {
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(5);
        stringBuffer.append('@');
        stringBuffer.append(this.type.sourceName);
        ElementValuePair[] elementValuePairArr = this.pairs;
        if (elementValuePairArr != null && elementValuePairArr.length > 0) {
            stringBuffer.append('(');
            ElementValuePair[] elementValuePairArr2 = this.pairs;
            if (elementValuePairArr2.length == 1 && CharOperation.equals(elementValuePairArr2[0].getName(), TypeConstants.VALUE)) {
                stringBuffer.append(this.pairs[0].value);
            } else {
                int length = this.pairs.length;
                for (int i10 = 0; i10 < length; i10++) {
                    if (i10 > 0) {
                        stringBuffer.append(", ");
                    }
                    stringBuffer.append((Object) this.pairs[i10]);
                }
            }
            stringBuffer.append(')');
        }
        return stringBuffer.toString();
    }

    public AnnotationBinding(Annotation annotation) {
        this((ReferenceBinding) annotation.resolvedType, annotation.computeElementValuePairs());
    }
}
