package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryElementValuePair;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.ResolvedBinaryField;
import org.eclipse.jdt.internal.core.ResolvedBinaryMethod;
import org.eclipse.jdt.internal.core.ResolvedBinaryType;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class ClassFileMatchLocator implements IIndexConstants {
    private static final char[] JAVA_LANG_ANNOTATION_ELEMENTTYPE = CharOperation.concatWith(TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE, '.');
    private static final long TARGET_ANNOTATION_BITS = 2305860532680261632L;

    private boolean checkAnnotation(IBinaryAnnotation iBinaryAnnotation, TypeReferencePattern typeReferencePattern) {
        if (checkTypeName(typeReferencePattern.simpleName, typeReferencePattern.qualification, convertClassFileFormat(Signature.toCharArray(iBinaryAnnotation.getTypeName())), typeReferencePattern.isCaseSensitive, typeReferencePattern.isCamelCase)) {
            return true;
        }
        IBinaryElementValuePair[] elementValuePairs = iBinaryAnnotation.getElementValuePairs();
        if (elementValuePairs != null) {
            for (IBinaryElementValuePair iBinaryElementValuePair : elementValuePairs) {
                Object value = iBinaryElementValuePair.getValue();
                if ((value instanceof IBinaryAnnotation) && checkAnnotation((IBinaryAnnotation) value, typeReferencePattern)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean checkAnnotationTypeReference(char[] cArr, TypeReferencePattern typeReferencePattern) {
        return checkTypeName(typeReferencePattern.simpleName, typeReferencePattern.qualification, cArr, typeReferencePattern.isCaseSensitive, typeReferencePattern.isCamelCase);
    }

    private boolean checkAnnotations(TypeReferencePattern typeReferencePattern, IBinaryAnnotation[] iBinaryAnnotationArr, long j10) {
        if (iBinaryAnnotationArr != null) {
            for (IBinaryAnnotation iBinaryAnnotation : iBinaryAnnotationArr) {
                if (checkAnnotation(iBinaryAnnotation, typeReferencePattern)) {
                    return true;
                }
            }
        }
        return (TagBits.AllStandardAnnotationsMask & j10) != 0 && checkStandardAnnotations(j10, typeReferencePattern);
    }

    private boolean checkDeclaringType(IBinaryType iBinaryType, char[] cArr, char[] cArr2, boolean z10, boolean z11) {
        if ((cArr == null && cArr2 == null) || iBinaryType == null) {
            return true;
        }
        return checkTypeName(cArr, cArr2, convertClassFileFormat(iBinaryType.getName()), z10, z11);
    }

    private boolean checkParameters(char[] cArr, char[][] cArr2, char[][] cArr3, boolean z10, boolean z11) {
        char[][] parameterTypes = Signature.getParameterTypes(cArr);
        int length = cArr2.length;
        if (length != parameterTypes.length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (!checkTypeName(cArr2[i10], cArr3[i10], Signature.toCharArray(parameterTypes[i10]), z10, z11)) {
                return false;
            }
        }
        return true;
    }

    private boolean checkStandardAnnotations(long j10, TypeReferencePattern typeReferencePattern) {
        if ((TagBits.AllStandardAnnotationsMask & j10) == 0) {
            return false;
        }
        if ((TagBits.AnnotationTargetMASK & j10) != 0 && (checkAnnotationTypeReference(CharOperation.concatWith(TypeConstants.JAVA_LANG_ANNOTATION_TARGET, '.'), typeReferencePattern) || ((TARGET_ANNOTATION_BITS & j10) != 0 && checkAnnotationTypeReference(JAVA_LANG_ANNOTATION_ELEMENTTYPE, typeReferencePattern)))) {
            return true;
        }
        if ((52776558133248L & j10) != 0 && (checkAnnotationTypeReference(CharOperation.concatWith(TypeConstants.JAVA_LANG_ANNOTATION_RETENTION, '.'), typeReferencePattern) || checkAnnotationTypeReference(CharOperation.concatWith(TypeConstants.JAVA_LANG_ANNOTATION_RETENTIONPOLICY, '.'), typeReferencePattern))) {
            return true;
        }
        if ((70368744177664L & j10) != 0 && checkAnnotationTypeReference(CharOperation.concatWith(TypeConstants.JAVA_LANG_DEPRECATED, '.'), typeReferencePattern)) {
            return true;
        }
        if ((140737488355328L & j10) != 0 && checkAnnotationTypeReference(CharOperation.concatWith(TypeConstants.JAVA_LANG_ANNOTATION_DOCUMENTED, '.'), typeReferencePattern)) {
            return true;
        }
        if ((281474976710656L & j10) != 0 && checkAnnotationTypeReference(CharOperation.concatWith(TypeConstants.JAVA_LANG_ANNOTATION_INHERITED, '.'), typeReferencePattern)) {
            return true;
        }
        if ((562949953421312L & j10) != 0 && checkAnnotationTypeReference(CharOperation.concatWith(TypeConstants.JAVA_LANG_OVERRIDE, '.'), typeReferencePattern)) {
            return true;
        }
        if ((1125899906842624L & j10) != 0 && checkAnnotationTypeReference(CharOperation.concatWith(TypeConstants.JAVA_LANG_SUPPRESSWARNINGS, '.'), typeReferencePattern)) {
            return true;
        }
        if ((2251799813685248L & j10) == 0 || !checkAnnotationTypeReference(CharOperation.concatWith(TypeConstants.JAVA_LANG_SAFEVARARGS, '.'), typeReferencePattern)) {
            return (j10 & 4503599627370496L) != 0 && checkAnnotationTypeReference(CharOperation.concatWith(TypeConstants.JAVA_LANG_INVOKE_METHODHANDLE_$_POLYMORPHICSIGNATURE, '.'), typeReferencePattern);
        }
        return true;
    }

    private boolean checkTypeName(char[] cArr, char[] cArr2, char[] cArr3, boolean z10, boolean z11) {
        char[] qualifiedPattern = PatternLocator.qualifiedPattern(cArr, cArr2);
        if (qualifiedPattern == null) {
            return true;
        }
        return CharOperation.match(qualifiedPattern, cArr3, z10);
    }

    public static char[] convertClassFileFormat(char[] cArr) {
        return CharOperation.replaceOnCopy(cArr, '/', '.');
    }

    /*  JADX ERROR: NullPointerException in pass: LoopRegionVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.use(jadx.core.dex.instructions.args.RegisterArg)" because "ssaVar" is null
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:489)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:492)
        */
    private void matchAnnotations(org.eclipse.jdt.core.search.SearchPattern r22, org.eclipse.jdt.internal.core.search.matching.MatchLocator r23, org.eclipse.jdt.internal.core.ClassFile r24, org.eclipse.jdt.internal.compiler.env.IBinaryType r25) throws org.eclipse.core.runtime.CoreException {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jdt.internal.core.search.matching.ClassFileMatchLocator.matchAnnotations(org.eclipse.jdt.core.search.SearchPattern, org.eclipse.jdt.internal.core.search.matching.MatchLocator, org.eclipse.jdt.internal.core.ClassFile, org.eclipse.jdt.internal.compiler.env.IBinaryType):void");
    }

    public void locateMatches(MatchLocator matchLocator, ClassFile classFile, IBinaryType iBinaryType) throws CoreException {
        boolean z10;
        char[] cArr;
        int i10;
        int i11;
        IBinaryMethod[] iBinaryMethodArr;
        char[][] cArr2;
        IBinaryField[] iBinaryFieldArr;
        int i12;
        IBinaryMethod[] iBinaryMethodArr2;
        FieldBinding fieldBinding;
        int i13;
        int i14;
        boolean z11;
        int i15;
        int i16;
        MethodBinding[] methodBindingArr;
        BinaryTypeBinding binaryTypeBinding;
        char[] cArr3;
        char[][] cArr4;
        char[] cArr5;
        MatchLocator matchLocator2 = matchLocator;
        SearchPattern searchPattern = matchLocator2.pattern;
        matchAnnotations(searchPattern, matchLocator2, classFile, iBinaryType);
        BinaryType binaryType = (BinaryType) classFile.getType();
        if (matchBinary(searchPattern, iBinaryType, null)) {
            matchLocator.reportBinaryMemberDeclaration(null, new ResolvedBinaryType((JavaElement) binaryType.getParent(), binaryType.getElementName(), binaryType.getKey()), null, iBinaryType, 0);
            return;
        }
        IBinaryMethod[] methods = iBinaryType.getMethods();
        int length = methods == null ? 0 : methods.length;
        IBinaryField[] fields = iBinaryType.getFields();
        int length2 = fields == null ? 0 : fields.length;
        boolean z12 = searchPattern.mustResolve;
        if (z12) {
            BinaryTypeBinding cacheBinaryType = matchLocator2.cacheBinaryType(binaryType, iBinaryType);
            i11 = 1;
            if (cacheBinaryType == null) {
                z10 = z12;
                cArr = null;
                i10 = 0;
                cArr2 = null;
                iBinaryMethodArr2 = null;
                iBinaryFieldArr = null;
            } else {
                if (!matchLocator2.typeInHierarchy(cacheBinaryType)) {
                    return;
                }
                MethodBinding[] availableMethods = cacheBinaryType.availableMethods();
                int length3 = availableMethods == null ? 0 : availableMethods.length;
                boolean z13 = length != length3;
                cArr2 = null;
                iBinaryMethodArr2 = null;
                int i17 = 0;
                while (i17 < length3) {
                    boolean z14 = z12;
                    int i18 = length2;
                    MethodBinding methodBinding = availableMethods[i17];
                    char[] genericSignature = methodBinding.genericSignature();
                    if (genericSignature == null) {
                        genericSignature = methodBinding.signature();
                    }
                    char[] cArr6 = genericSignature;
                    int resolveLevel = matchLocator2.patternLocator.resolveLevel(methodBinding);
                    int i19 = i17;
                    if (resolveLevel != 0) {
                        if (methodBinding.isConstructor()) {
                            i16 = length3;
                            methodBindingArr = availableMethods;
                            cArr5 = cacheBinaryType.compoundName[r2.length - 1];
                        } else {
                            i16 = length3;
                            methodBindingArr = availableMethods;
                            cArr5 = methodBinding.selector;
                        }
                        binaryTypeBinding = cacheBinaryType;
                        cArr3 = cArr6;
                        matchLocator.reportBinaryMemberDeclaration(null, binaryType.getMethod(new String(cArr5), CharOperation.toStrings(Signature.getParameterTypes(convertClassFileFormat(cArr6)))), methodBinding, iBinaryType, resolveLevel == 3 ? 0 : 1);
                    } else {
                        i16 = length3;
                        methodBindingArr = availableMethods;
                        binaryTypeBinding = cacheBinaryType;
                        cArr3 = cArr6;
                    }
                    if (z13) {
                        if (cArr2 == null) {
                            cArr4 = new char[length];
                            for (int i20 = 0; i20 < length; i20++) {
                                IBinaryMethod iBinaryMethod = methods[i20];
                                char[] genericSignature2 = iBinaryMethod.getGenericSignature();
                                if (genericSignature2 == null) {
                                    genericSignature2 = iBinaryMethod.getMethodDescriptor();
                                }
                                cArr4[i20] = genericSignature2;
                            }
                        } else {
                            cArr4 = cArr2;
                        }
                        for (int i21 = 0; i21 < length; i21++) {
                            if (CharOperation.equals(methods[i21].getSelector(), methodBinding.selector) && CharOperation.equals(cArr4[i21], cArr3)) {
                                if (iBinaryMethodArr2 == null) {
                                    IBinaryMethod[] iBinaryMethodArr3 = new IBinaryMethod[length];
                                    System.arraycopy(methods, 0, iBinaryMethodArr3, 0, length);
                                    iBinaryMethodArr2 = iBinaryMethodArr3;
                                }
                                iBinaryMethodArr2[i21] = null;
                                cArr2 = cArr4;
                                i17 = i19 + 1;
                                matchLocator2 = matchLocator;
                                length2 = i18;
                                length3 = i16;
                                availableMethods = methodBindingArr;
                                cacheBinaryType = binaryTypeBinding;
                                z12 = z14;
                            }
                        }
                        cArr2 = cArr4;
                    }
                    i17 = i19 + 1;
                    matchLocator2 = matchLocator;
                    length2 = i18;
                    length3 = i16;
                    availableMethods = methodBindingArr;
                    cacheBinaryType = binaryTypeBinding;
                    z12 = z14;
                }
                FieldBinding[] availableFields = cacheBinaryType.availableFields();
                int length4 = availableFields == null ? 0 : availableFields.length;
                boolean z15 = length2 != length4;
                int i22 = 0;
                iBinaryFieldArr = null;
                while (i22 < length4) {
                    FieldBinding fieldBinding2 = availableFields[i22];
                    int resolveLevel2 = matchLocator2.patternLocator.resolveLevel(fieldBinding2);
                    if (resolveLevel2 != 0) {
                        fieldBinding = fieldBinding2;
                        i13 = i22;
                        z11 = z12;
                        i14 = length4;
                        i15 = length2;
                        matchLocator.reportBinaryMemberDeclaration(null, binaryType.getField(new String(fieldBinding2.name)), fieldBinding, iBinaryType, resolveLevel2 == 3 ? 0 : 1);
                    } else {
                        fieldBinding = fieldBinding2;
                        i13 = i22;
                        i14 = length4;
                        z11 = z12;
                        i15 = length2;
                    }
                    if (z15) {
                        int i23 = 0;
                        while (true) {
                            if (i23 >= i15) {
                                break;
                            }
                            FieldBinding fieldBinding3 = fieldBinding;
                            if (CharOperation.equals(fields[i23].getName(), fieldBinding3.name)) {
                                if (iBinaryFieldArr == null) {
                                    IBinaryField[] iBinaryFieldArr2 = new IBinaryField[i15];
                                    System.arraycopy(fields, 0, iBinaryFieldArr2, 0, i15);
                                    iBinaryFieldArr = iBinaryFieldArr2;
                                }
                                iBinaryFieldArr[i23] = null;
                            } else {
                                i23++;
                                fieldBinding = fieldBinding3;
                            }
                        }
                    }
                    i22 = i13 + 1;
                    length2 = i15;
                    z12 = z11;
                    length4 = i14;
                }
                if (!z13 && !z15) {
                    return;
                }
                z10 = z12;
                i10 = 0;
                cArr = null;
            }
            iBinaryMethodArr = iBinaryMethodArr2;
        } else {
            z10 = z12;
            cArr = null;
            i10 = 0;
            i11 = 0;
            iBinaryMethodArr = null;
            cArr2 = null;
            iBinaryFieldArr = null;
        }
        if (z10) {
            methods = iBinaryMethodArr;
        }
        int length5 = methods == null ? i10 : methods.length;
        int i24 = i10;
        while (i24 < length5) {
            IBinaryMethod iBinaryMethod2 = methods[i24];
            if (iBinaryMethod2 != null && matchBinary(searchPattern, iBinaryMethod2, iBinaryType)) {
                String str = new String(iBinaryMethod2.isConstructor() ? iBinaryType.getSourceName() : iBinaryMethod2.getSelector());
                char[] cArr7 = cArr2 == null ? cArr : cArr2[i24];
                if (cArr7 == null && (cArr7 = iBinaryMethod2.getGenericSignature()) == null) {
                    cArr7 = iBinaryMethod2.getMethodDescriptor();
                }
                String[] strings = CharOperation.toStrings(Signature.getParameterTypes(convertClassFileFormat(cArr7)));
                i12 = i10;
                matchLocator.reportBinaryMemberDeclaration(null, new ResolvedBinaryMethod(binaryType, str, strings, binaryType.getMethod(str, strings).getKey()), null, iBinaryType, i11);
            } else {
                i12 = i10;
            }
            i24++;
            i10 = i12;
        }
        IBinaryField[] iBinaryFieldArr3 = z10 ? iBinaryFieldArr : fields;
        int length6 = iBinaryFieldArr3 == null ? i10 : iBinaryFieldArr3.length;
        for (int i25 = i10; i25 < length6; i25++) {
            IBinaryField iBinaryField = iBinaryFieldArr3[i25];
            if (iBinaryField != null && matchBinary(searchPattern, iBinaryField, iBinaryType)) {
                String str2 = new String(iBinaryField.getName());
                matchLocator.reportBinaryMemberDeclaration(null, new ResolvedBinaryField(binaryType, str2, binaryType.getField(str2).getKey()), null, iBinaryType, i11);
            }
        }
    }

    public boolean matchBinary(SearchPattern searchPattern, Object obj, IBinaryType iBinaryType) {
        int i10 = searchPattern.kind;
        if (i10 == 8) {
            return matchTypeDeclaration((TypeDeclarationPattern) searchPattern, obj, iBinaryType);
        }
        if (i10 == 16) {
            return matchSuperTypeReference((SuperTypeReferencePattern) searchPattern, obj, iBinaryType);
        }
        if (i10 == 32) {
            return matchConstructor((ConstructorPattern) searchPattern, obj, iBinaryType);
        }
        if (i10 == 64) {
            return matchField((FieldPattern) searchPattern, obj, iBinaryType);
        }
        if (i10 == 128) {
            return matchMethod((MethodPattern) searchPattern, obj, iBinaryType);
        }
        if (i10 == 256) {
            SearchPattern[] searchPatternArr = ((OrPattern) searchPattern).patterns;
            for (SearchPattern searchPattern2 : searchPatternArr) {
                if (matchBinary(searchPattern2, obj, iBinaryType)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean matchConstructor(ConstructorPattern constructorPattern, Object obj, IBinaryType iBinaryType) {
        if (!constructorPattern.findDeclarations || !(obj instanceof IBinaryMethod)) {
            return false;
        }
        IBinaryMethod iBinaryMethod = (IBinaryMethod) obj;
        if (iBinaryMethod.isConstructor() && checkDeclaringType(iBinaryType, constructorPattern.declaringSimpleName, constructorPattern.declaringQualification, constructorPattern.isCaseSensitive(), constructorPattern.isCamelCase())) {
            return constructorPattern.parameterSimpleNames == null || checkParameters(convertClassFileFormat(iBinaryMethod.getMethodDescriptor()), constructorPattern.parameterSimpleNames, constructorPattern.parameterQualifications, constructorPattern.isCaseSensitive(), constructorPattern.isCamelCase());
        }
        return false;
    }

    public boolean matchField(FieldPattern fieldPattern, Object obj, IBinaryType iBinaryType) {
        if (!fieldPattern.findDeclarations || !(obj instanceof IBinaryField)) {
            return false;
        }
        IBinaryField iBinaryField = (IBinaryField) obj;
        if (!fieldPattern.matchesName(fieldPattern.name, iBinaryField.getName()) || !checkDeclaringType(iBinaryType, fieldPattern.declaringSimpleName, fieldPattern.declaringQualification, fieldPattern.isCaseSensitive(), fieldPattern.isCamelCase())) {
            return false;
        }
        return checkTypeName(fieldPattern.typeSimpleName, fieldPattern.typeQualification, Signature.toCharArray(convertClassFileFormat(iBinaryField.getTypeName())), fieldPattern.isCaseSensitive(), fieldPattern.isCamelCase());
    }

    public boolean matchMethod(MethodPattern methodPattern, Object obj, IBinaryType iBinaryType) {
        if (!methodPattern.findDeclarations || !(obj instanceof IBinaryMethod)) {
            return false;
        }
        IBinaryMethod iBinaryMethod = (IBinaryMethod) obj;
        if (!methodPattern.matchesName(methodPattern.selector, iBinaryMethod.getSelector()) || !checkDeclaringType(iBinaryType, methodPattern.declaringSimpleName, methodPattern.declaringQualification, methodPattern.isCaseSensitive(), methodPattern.isCamelCase())) {
            return false;
        }
        boolean z10 = methodPattern.declaringSimpleName == null && !(methodPattern.returnSimpleName == null && methodPattern.returnQualification == null);
        boolean z11 = methodPattern.parameterSimpleNames != null;
        if (z10 || z11) {
            char[] convertClassFileFormat = convertClassFileFormat(iBinaryMethod.getMethodDescriptor());
            if (z10) {
                if (!checkTypeName(methodPattern.returnSimpleName, methodPattern.returnQualification, Signature.toCharArray(Signature.getReturnType(convertClassFileFormat)), methodPattern.isCaseSensitive(), methodPattern.isCamelCase())) {
                    return false;
                }
            }
            if (z11 && !checkParameters(convertClassFileFormat, methodPattern.parameterSimpleNames, methodPattern.parameterQualifications, methodPattern.isCaseSensitive(), methodPattern.isCamelCase())) {
                return false;
            }
        }
        return true;
    }

    public boolean matchSuperTypeReference(SuperTypeReferencePattern superTypeReferencePattern, Object obj, IBinaryType iBinaryType) {
        char[][] interfaceNames;
        char[] superclassName;
        if (!(obj instanceof IBinaryType)) {
            return false;
        }
        IBinaryType iBinaryType2 = (IBinaryType) obj;
        if (superTypeReferencePattern.superRefKind != 1 && (superclassName = iBinaryType2.getSuperclassName()) != null) {
            if (checkTypeName(superTypeReferencePattern.superSimpleName, superTypeReferencePattern.superQualification, convertClassFileFormat(superclassName), superTypeReferencePattern.isCaseSensitive(), superTypeReferencePattern.isCamelCase())) {
                return true;
            }
        }
        if (superTypeReferencePattern.superRefKind != 2 && (interfaceNames = iBinaryType2.getInterfaceNames()) != null) {
            for (char[] cArr : interfaceNames) {
                if (checkTypeName(superTypeReferencePattern.superSimpleName, superTypeReferencePattern.superQualification, convertClassFileFormat(cArr), superTypeReferencePattern.isCaseSensitive(), superTypeReferencePattern.isCamelCase())) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean matchTypeDeclaration(TypeDeclarationPattern typeDeclarationPattern, Object obj, IBinaryType iBinaryType) {
        if (!(obj instanceof IBinaryType)) {
            return false;
        }
        IBinaryType iBinaryType2 = (IBinaryType) obj;
        char[] convertClassFileFormat = convertClassFileFormat(iBinaryType2.getName());
        boolean z10 = typeDeclarationPattern instanceof QualifiedTypeDeclarationPattern;
        char[][] cArr = typeDeclarationPattern.enclosingTypeNames;
        if (cArr == null || z10) {
            if (!checkTypeName(typeDeclarationPattern.getMatchMode() == 1 ? CharOperation.concat(typeDeclarationPattern.simpleName, IIndexConstants.ONE_STAR) : typeDeclarationPattern.simpleName, z10 ? ((QualifiedTypeDeclarationPattern) typeDeclarationPattern).qualification : typeDeclarationPattern.pkg, convertClassFileFormat, typeDeclarationPattern.isCaseSensitive(), typeDeclarationPattern.isCamelCase())) {
                return false;
            }
        } else {
            char[] concatWith = CharOperation.concatWith(cArr, '.');
            char[] cArr2 = typeDeclarationPattern.pkg;
            if (!checkTypeName(typeDeclarationPattern.simpleName, cArr2 == null ? concatWith : CharOperation.concat(cArr2, concatWith, '.'), convertClassFileFormat, typeDeclarationPattern.isCaseSensitive(), typeDeclarationPattern.isCamelCase())) {
                return false;
            }
        }
        int kind = TypeDeclaration.kind(iBinaryType2.getModifiers());
        char c10 = typeDeclarationPattern.typeSuffix;
        if (c10 == 'A') {
            return kind == 4;
        }
        if (c10 == 'C') {
            return kind == 1;
        }
        if (c10 == 'E') {
            return kind == 3;
        }
        if (c10 == 'I') {
            return kind == 2;
        }
        switch (c10) {
            case '\t':
                return kind == 1 || kind == 3;
            case '\n':
                return kind == 1 || kind == 2;
            case 11:
                return kind == 2 || kind == 4;
            default:
                return true;
        }
    }
}
