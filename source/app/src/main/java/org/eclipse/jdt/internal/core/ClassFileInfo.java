package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IMemberValuePair;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryElementValuePair;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryNestedType;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;

public class ClassFileInfo extends OpenableElementInfo implements SuffixConstants {
    protected JavaElement[] binaryChildren = null;
    protected ITypeParameter[] typeParameters;

    private void generateAnnotationInfo(JavaElement javaElement, HashMap hashMap, IBinaryAnnotation iBinaryAnnotation, String str) {
        generateAnnotationInfo(javaElement, null, hashMap, iBinaryAnnotation, str);
    }

    private void generateAnnotationsInfos(JavaElement javaElement, IBinaryAnnotation[] iBinaryAnnotationArr, long j10, HashMap hashMap) {
        generateAnnotationsInfos(javaElement, null, iBinaryAnnotationArr, j10, hashMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void generateFieldInfos(IType iType, IBinaryType iBinaryType, HashMap hashMap, ArrayList arrayList) {
        IBinaryField[] fields = iBinaryType.getFields();
        if (fields == null) {
            return;
        }
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        for (IBinaryField iBinaryField : fields) {
            BinaryField binaryField = new BinaryField((JavaElement) iType, javaModelManager.intern(new String(iBinaryField.getName())));
            hashMap.put(binaryField, iBinaryField);
            arrayList.add(binaryField);
            generateAnnotationsInfos(binaryField, iBinaryField.getAnnotations(), iBinaryField.getTagBits(), hashMap);
        }
    }

    private void generateInnerClassHandles(IType iType, IBinaryType iBinaryType, ArrayList arrayList) {
        IBinaryNestedType[] memberTypes = iBinaryType.getMemberTypes();
        if (memberTypes != null) {
            IPackageFragment iPackageFragment = (IPackageFragment) iType.getAncestor(4);
            for (IBinaryNestedType iBinaryNestedType : memberTypes) {
                arrayList.add(new BinaryType((JavaElement) iPackageFragment.getClassFile(new String(ClassFile.unqualifiedName(iBinaryNestedType.getName())) + ".class"), ClassFile.simpleName(iBinaryNestedType.getName())));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x013d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void generateMethodInfos(IType iType, IBinaryType iBinaryType, HashMap hashMap, ArrayList arrayList, ArrayList arrayList2) {
        int i10;
        int i11;
        int i12;
        int i13;
        Object defaultValue;
        int i14;
        int i15;
        IBinaryMethod[] methods = iBinaryType.getMethods();
        if (methods == null) {
            return;
        }
        int length = methods.length;
        int i16 = 0;
        int i17 = 0;
        while (i17 < length) {
            IBinaryMethod iBinaryMethod = methods[i17];
            boolean isConstructor = iBinaryMethod.isConstructor();
            try {
                i10 = iType.isEnum();
            } catch (JavaModelException unused) {
                i10 = i16;
            }
            char[] genericSignature = iBinaryMethod.getGenericSignature();
            int i18 = 1;
            String[] strArr = null;
            if (genericSignature == null) {
                genericSignature = iBinaryMethod.getMethodDescriptor();
                if (i10 != 0 && isConstructor) {
                    strArr = Signature.getParameterTypes(new String(genericSignature));
                    int length2 = strArr.length - 2;
                    if (length2 >= 0) {
                        String[] strArr2 = new String[length2];
                        System.arraycopy(strArr, 2, strArr2, i16, length2);
                        i11 = i16;
                        strArr = strArr2;
                    }
                }
                i11 = i16;
            } else {
                i11 = 1;
            }
            String str = new String(iBinaryMethod.getSelector());
            if (isConstructor) {
                str = iType.getElementName();
            }
            if (i10 == 0 || !isConstructor || i11 != 0) {
                strArr = Signature.getParameterTypes(new String(genericSignature));
            }
            if (isConstructor && i11 != 0) {
                try {
                    if (iType.isMember() && !Flags.isStatic(iType.getFlags())) {
                        int length3 = strArr.length;
                        String[] strArr3 = new String[length3 + 1];
                        System.arraycopy(strArr, i16, strArr3, 1, length3);
                        strArr3[i16] = Signature.getParameterTypes(new String(iBinaryMethod.getMethodDescriptor()))[i16];
                        strArr = strArr3;
                    }
                } catch (IllegalArgumentException unused2) {
                    genericSignature = iBinaryMethod.getMethodDescriptor();
                    strArr = Signature.getParameterTypes(new String(genericSignature));
                } catch (JavaModelException unused3) {
                    genericSignature = iBinaryMethod.getMethodDescriptor();
                    strArr = Signature.getParameterTypes(new String(genericSignature));
                }
            }
            char[] cArr = genericSignature;
            char[][] cArr2 = new char[strArr.length];
            int i19 = i16;
            while (i19 < strArr.length) {
                cArr2[i19] = strArr[i19].toCharArray();
                i19++;
                i18 = 1;
                i16 = 0;
            }
            char[][] translatedNames = ClassFile.translatedNames(cArr2);
            JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
            String intern = javaModelManager.intern(str);
            int i20 = i16;
            while (i20 < strArr.length) {
                strArr[i20] = javaModelManager.intern(new String(translatedNames[i20]));
                i20++;
                i18 = 1;
            }
            BinaryMethod binaryMethod = new BinaryMethod((JavaElement) iType, intern, strArr);
            arrayList.add(binaryMethod);
            while (hashMap.containsKey(binaryMethod)) {
                binaryMethod.occurrenceCount += i18;
            }
            hashMap.put(binaryMethod, iBinaryMethod);
            int length4 = strArr.length;
            char[][] argumentNames = iBinaryMethod.getArgumentNames();
            if (argumentNames == null || argumentNames.length < length4) {
                argumentNames = new char[length4];
                int i21 = 0;
                while (i21 < length4) {
                    argumentNames[i21] = ("arg" + i21).toCharArray();
                    i21++;
                    length4 = length4;
                }
            }
            char[][] cArr3 = argumentNames;
            if (isConstructor) {
                if (i10 != 0) {
                    i12 = 2;
                } else {
                    try {
                        if (iType.isMember() && !Flags.isStatic(iType.getFlags())) {
                            i12 = i18;
                        }
                    } catch (JavaModelException unused4) {
                    }
                }
                i13 = i12;
                while (i13 < length4) {
                    IBinaryAnnotation[] parameterAnnotations = iBinaryMethod.getParameterAnnotations(i13 - i12, iBinaryType.getFileName());
                    if (parameterAnnotations != null) {
                        i14 = i13;
                        i15 = length4;
                        generateAnnotationsInfos(new LocalVariable(binaryMethod, new String(cArr3[i13]), 0, -1, 0, -1, binaryMethod.parameterTypes[i13], null, -1, true), cArr3[i13], parameterAnnotations, iBinaryMethod.getTagBits(), hashMap);
                    } else {
                        i14 = i13;
                        i15 = length4;
                    }
                    i13 = i14 + 1;
                    length4 = i15;
                }
                generateTypeParameterInfos(binaryMethod, cArr, hashMap, arrayList2);
                generateAnnotationsInfos(binaryMethod, iBinaryMethod.getAnnotations(), iBinaryMethod.getTagBits(), hashMap);
                defaultValue = iBinaryMethod.getDefaultValue();
                if (!(defaultValue instanceof IBinaryAnnotation)) {
                    generateAnnotationInfo(binaryMethod, hashMap, (IBinaryAnnotation) defaultValue, new String(iBinaryMethod.getSelector()));
                }
                i17++;
                i16 = 0;
            }
            i12 = 0;
            i13 = i12;
            while (i13 < length4) {
            }
            generateTypeParameterInfos(binaryMethod, cArr, hashMap, arrayList2);
            generateAnnotationsInfos(binaryMethod, iBinaryMethod.getAnnotations(), iBinaryMethod.getTagBits(), hashMap);
            defaultValue = iBinaryMethod.getDefaultValue();
            if (!(defaultValue instanceof IBinaryAnnotation)) {
            }
            i17++;
            i16 = 0;
        }
    }

    private void generateStandardAnnotation(JavaElement javaElement, char[][] cArr, IMemberValuePair[] iMemberValuePairArr, HashMap hashMap) {
        Annotation annotation = new Annotation(javaElement, new String(CharOperation.concatWith(cArr, '.')));
        AnnotationInfo annotationInfo = new AnnotationInfo();
        annotationInfo.members = iMemberValuePairArr;
        hashMap.put(annotation, annotationInfo);
    }

    private void generateStandardAnnotationsInfos(JavaElement javaElement, char[] cArr, long j10, HashMap hashMap) {
        if ((TagBits.AllStandardAnnotationsMask & j10) == 0) {
            return;
        }
        if ((TagBits.AnnotationTargetMASK & j10) != 0) {
            generateStandardAnnotation(javaElement, TypeConstants.JAVA_LANG_ANNOTATION_TARGET, getTargetElementTypes(j10), hashMap);
        }
        if ((52776558133248L & j10) != 0) {
            generateStandardAnnotation(javaElement, TypeConstants.JAVA_LANG_ANNOTATION_RETENTION, getRetentionPolicy(j10), hashMap);
        }
        if ((70368744177664L & j10) != 0) {
            generateStandardAnnotation(javaElement, TypeConstants.JAVA_LANG_DEPRECATED, Annotation.NO_MEMBER_VALUE_PAIRS, hashMap);
        }
        if ((140737488355328L & j10) != 0) {
            generateStandardAnnotation(javaElement, TypeConstants.JAVA_LANG_ANNOTATION_DOCUMENTED, Annotation.NO_MEMBER_VALUE_PAIRS, hashMap);
        }
        if ((281474976710656L & j10) != 0) {
            generateStandardAnnotation(javaElement, TypeConstants.JAVA_LANG_ANNOTATION_INHERITED, Annotation.NO_MEMBER_VALUE_PAIRS, hashMap);
        }
        if ((4503599627370496L & j10) != 0) {
            generateStandardAnnotation(javaElement, TypeConstants.JAVA_LANG_INVOKE_METHODHANDLE_$_POLYMORPHICSIGNATURE, Annotation.NO_MEMBER_VALUE_PAIRS, hashMap);
        }
        if ((j10 & 2251799813685248L) != 0) {
            generateStandardAnnotation(javaElement, TypeConstants.JAVA_LANG_SAFEVARARGS, Annotation.NO_MEMBER_VALUE_PAIRS, hashMap);
        }
    }

    private void generateTypeParameterInfos(BinaryMember binaryMember, char[] cArr, HashMap hashMap, ArrayList arrayList) {
        if (cArr == null) {
            return;
        }
        for (char[] cArr2 : Signature.getTypeParameters(cArr)) {
            char[] typeVariable = Signature.getTypeVariable(cArr2);
            CharOperation.replace(cArr2, '/', '.');
            char[][] typeParameterBounds = Signature.getTypeParameterBounds(cArr2);
            int length = typeParameterBounds.length;
            char[][] cArr3 = new char[length];
            for (int i10 = 0; i10 < length; i10++) {
                cArr3[i10] = Signature.toCharArray(typeParameterBounds[i10]);
            }
            TypeParameter typeParameter = new TypeParameter(binaryMember, new String(typeVariable));
            TypeParameterElementInfo typeParameterElementInfo = new TypeParameterElementInfo();
            typeParameterElementInfo.bounds = cArr3;
            typeParameterElementInfo.boundsSignatures = typeParameterBounds;
            arrayList.add(typeParameter);
            while (hashMap.containsKey(typeParameter)) {
                typeParameter.occurrenceCount++;
            }
            hashMap.put(typeParameter, typeParameterElementInfo);
        }
    }

    private IMemberValuePair[] getRetentionPolicy(long j10) {
        final String str;
        long j11 = j10 & 52776558133248L;
        if (j11 == 0) {
            return Annotation.NO_MEMBER_VALUE_PAIRS;
        }
        if (j11 == 52776558133248L) {
            str = new String(CharOperation.concatWith(TypeConstants.JAVA_LANG_ANNOTATION_RETENTIONPOLICY, '.')) + '.' + new String(TypeConstants.UPPER_RUNTIME);
        } else if ((j10 & 17592186044416L) != 0) {
            str = new String(CharOperation.concatWith(TypeConstants.JAVA_LANG_ANNOTATION_RETENTIONPOLICY, '.')) + '.' + new String(TypeConstants.UPPER_SOURCE);
        } else {
            str = new String(CharOperation.concatWith(TypeConstants.JAVA_LANG_ANNOTATION_RETENTIONPOLICY, '.')) + '.' + new String(TypeConstants.UPPER_CLASS);
        }
        return new IMemberValuePair[]{new IMemberValuePair() {
            @Override
            public String getMemberName() {
                return new String(TypeConstants.VALUE);
            }

            @Override
            public Object getValue() {
                return str;
            }

            @Override
            public int getValueKind() {
                return 12;
            }
        }};
    }

    private IMemberValuePair[] getTargetElementTypes(long j10) {
        final Object array;
        ArrayList arrayList = new ArrayList();
        String str = new String(CharOperation.concatWith(TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE, '.')) + '.';
        if ((68719476736L & j10) != 0) {
            arrayList.add(String.valueOf(str) + new String(TypeConstants.TYPE));
        }
        if ((137438953472L & j10) != 0) {
            arrayList.add(String.valueOf(str) + new String(TypeConstants.UPPER_FIELD));
        }
        if ((274877906944L & j10) != 0) {
            arrayList.add(String.valueOf(str) + new String(TypeConstants.UPPER_METHOD));
        }
        if ((549755813888L & j10) != 0) {
            arrayList.add(String.valueOf(str) + new String(TypeConstants.UPPER_PARAMETER));
        }
        if ((1099511627776L & j10) != 0) {
            arrayList.add(String.valueOf(str) + new String(TypeConstants.UPPER_CONSTRUCTOR));
        }
        if ((2199023255552L & j10) != 0) {
            arrayList.add(String.valueOf(str) + new String(TypeConstants.UPPER_LOCAL_VARIABLE));
        }
        if ((4398046511104L & j10) != 0) {
            arrayList.add(String.valueOf(str) + new String(TypeConstants.UPPER_ANNOTATION_TYPE));
        }
        if ((8796093022208L & j10) != 0) {
            arrayList.add(String.valueOf(str) + new String(TypeConstants.UPPER_PACKAGE));
        }
        if ((9007199254740992L & j10) != 0) {
            arrayList.add(String.valueOf(str) + new String(TypeConstants.TYPE_USE_TARGET));
        }
        if ((18014398509481984L & j10) != 0) {
            arrayList.add(String.valueOf(str) + new String(TypeConstants.TYPE_PARAMETER_TARGET));
        }
        if ((2305843009213693952L & j10) != 0) {
            arrayList.add(String.valueOf(str) + new String(TypeConstants.UPPER_MODULE));
        }
        if (arrayList.size() != 0) {
            array = arrayList.size() == 1 ? arrayList.get(0) : arrayList.toArray(new String[arrayList.size()]);
        } else {
            if ((j10 & 34359738368L) == 0) {
                return Annotation.NO_MEMBER_VALUE_PAIRS;
            }
            array = CharOperation.NO_STRINGS;
        }
        return new IMemberValuePair[]{new IMemberValuePair() {
            @Override
            public String getMemberName() {
                return new String(TypeConstants.VALUE);
            }

            @Override
            public Object getValue() {
                return array;
            }

            @Override
            public int getValueKind() {
                return 12;
            }
        }};
    }

    public void readBinaryChildren(ClassFile classFile, HashMap hashMap, IBinaryType iBinaryType) {
        ArrayList arrayList = new ArrayList();
        BinaryType binaryType = (BinaryType) classFile.getType();
        ArrayList arrayList2 = new ArrayList();
        if (iBinaryType != null) {
            generateAnnotationsInfos(binaryType, iBinaryType.getAnnotations(), iBinaryType.getTagBits(), hashMap);
            generateTypeParameterInfos(binaryType, iBinaryType.getGenericSignature(), hashMap, arrayList2);
            generateFieldInfos(binaryType, iBinaryType, hashMap, arrayList);
            generateMethodInfos(binaryType, iBinaryType, hashMap, arrayList, arrayList2);
            generateInnerClassHandles(binaryType, iBinaryType, arrayList);
        }
        JavaElement[] javaElementArr = new JavaElement[arrayList.size()];
        this.binaryChildren = javaElementArr;
        arrayList.toArray(javaElementArr);
        int size = arrayList2.size();
        if (size == 0) {
            this.typeParameters = TypeParameter.NO_TYPE_PARAMETERS;
            return;
        }
        ITypeParameter[] iTypeParameterArr = new ITypeParameter[size];
        this.typeParameters = iTypeParameterArr;
        arrayList2.toArray(iTypeParameterArr);
    }

    public void removeBinaryChildren() throws JavaModelException {
        int i10 = 0;
        if (this.binaryChildren != null) {
            JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
            int i11 = 0;
            while (true) {
                JavaElement[] javaElementArr = this.binaryChildren;
                if (i11 >= javaElementArr.length) {
                    break;
                }
                JavaElement javaElement = javaElementArr[i11];
                if (javaElement instanceof BinaryType) {
                    javaModelManager.removeInfoAndChildren((JavaElement) javaElement.getParent());
                } else {
                    javaModelManager.removeInfoAndChildren(javaElement);
                }
                i11++;
            }
            this.binaryChildren = JavaElement.NO_ELEMENTS;
        }
        if (this.typeParameters == null) {
            return;
        }
        JavaModelManager javaModelManager2 = JavaModelManager.getJavaModelManager();
        while (true) {
            ITypeParameter[] iTypeParameterArr = this.typeParameters;
            if (i10 >= iTypeParameterArr.length) {
                this.typeParameters = TypeParameter.NO_TYPE_PARAMETERS;
                return;
            } else {
                javaModelManager2.removeInfoAndChildren((TypeParameter) iTypeParameterArr[i10]);
                i10++;
            }
        }
    }

    private void generateAnnotationInfo(JavaElement javaElement, char[] cArr, HashMap hashMap, IBinaryAnnotation iBinaryAnnotation, String str) {
        Annotation annotation = new Annotation(javaElement, new String(Signature.toCharArray(CharOperation.replaceOnCopy(iBinaryAnnotation.getTypeName(), '/', '.'))), str);
        while (hashMap.containsKey(annotation)) {
            annotation.occurrenceCount++;
        }
        hashMap.put(annotation, iBinaryAnnotation);
        IBinaryElementValuePair[] elementValuePairs = iBinaryAnnotation.getElementValuePairs();
        int length = elementValuePairs.length;
        for (int i10 = 0; i10 < length; i10++) {
            Object value = elementValuePairs[i10].getValue();
            if (value instanceof IBinaryAnnotation) {
                generateAnnotationInfo(annotation, hashMap, (IBinaryAnnotation) value, new String(elementValuePairs[i10].getName()));
            } else if (value instanceof Object[]) {
                for (Object obj : (Object[]) value) {
                    if (obj instanceof IBinaryAnnotation) {
                        generateAnnotationInfo(annotation, hashMap, (IBinaryAnnotation) obj, new String(elementValuePairs[i10].getName()));
                    }
                }
            }
        }
    }

    private void generateAnnotationsInfos(JavaElement javaElement, char[] cArr, IBinaryAnnotation[] iBinaryAnnotationArr, long j10, HashMap hashMap) {
        if (iBinaryAnnotationArr != null) {
            for (IBinaryAnnotation iBinaryAnnotation : iBinaryAnnotationArr) {
                generateAnnotationInfo(javaElement, cArr, hashMap, iBinaryAnnotation, null);
            }
        }
        generateStandardAnnotationsInfos(javaElement, cArr, j10, hashMap);
    }
}
