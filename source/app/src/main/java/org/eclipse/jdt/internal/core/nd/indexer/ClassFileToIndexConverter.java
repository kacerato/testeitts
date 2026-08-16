package org.eclipse.jdt.internal.core.nd.indexer;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.env.ClassSignature;
import org.eclipse.jdt.internal.compiler.env.EnumConstantSignature;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryElementValuePair;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.SignatureWrapper;
import org.eclipse.jdt.internal.core.JarPackageFragmentRoot;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.java.JavaIndex;
import org.eclipse.jdt.internal.core.nd.java.JavaNames;
import org.eclipse.jdt.internal.core.nd.java.NdAnnotation;
import org.eclipse.jdt.internal.core.nd.java.NdBinding;
import org.eclipse.jdt.internal.core.nd.java.NdComplexTypeSignature;
import org.eclipse.jdt.internal.core.nd.java.NdConstant;
import org.eclipse.jdt.internal.core.nd.java.NdConstantAnnotation;
import org.eclipse.jdt.internal.core.nd.java.NdConstantArray;
import org.eclipse.jdt.internal.core.nd.java.NdConstantClass;
import org.eclipse.jdt.internal.core.nd.java.NdConstantEnum;
import org.eclipse.jdt.internal.core.nd.java.NdMethod;
import org.eclipse.jdt.internal.core.nd.java.NdMethodParameter;
import org.eclipse.jdt.internal.core.nd.java.NdResourceFile;
import org.eclipse.jdt.internal.core.nd.java.NdType;
import org.eclipse.jdt.internal.core.nd.java.NdTypeAnnotation;
import org.eclipse.jdt.internal.core.nd.java.NdTypeArgument;
import org.eclipse.jdt.internal.core.nd.java.NdTypeId;
import org.eclipse.jdt.internal.core.nd.java.NdTypeInterface;
import org.eclipse.jdt.internal.core.nd.java.NdTypeParameter;
import org.eclipse.jdt.internal.core.nd.java.NdTypeSignature;
import org.eclipse.jdt.internal.core.nd.java.NdVariable;
import org.eclipse.jdt.internal.core.nd.util.CharArrayUtils;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;
import org.eclipse.jdt.internal.core.util.Util;

public final class ClassFileToIndexConverter {
    private static final boolean ENABLE_LOGGING = false;
    private JavaIndex index;
    private NdResourceFile resource;
    private static final char[] JAVA_LANG_OBJECT_FIELD_DESCRIPTOR = "Ljava/lang/Object;".toCharArray();
    private static final char[] INNER_TYPE_SEPARATOR = {'$'};
    private static final char[] FIELD_DESCRIPTOR_SUFFIX = {';'};
    private static final char[] COMMA = {IIndexConstants.PARAMETER_SEPARATOR};
    private static final char[][] EMPTY_CHAR_ARRAY_ARRAY = new char[0];
    static final char[] EMPTY_CHAR_ARRAY = new char[0];
    private static final char[] PATH_SEPARATOR = {'/'};
    private static final char[] ARRAY_FIELD_DESCRIPTOR_PREFIX = {'['};

    public static class TypeParameter {
        public boolean firstBoundIsClass;
        public List<NdTypeSignature> bounds = new ArrayList();
        public char[] identifier = ClassFileToIndexConverter.EMPTY_CHAR_ARRAY;
    }

    public ClassFileToIndexConverter(NdResourceFile ndResourceFile) {
        this.resource = ndResourceFile;
        this.index = JavaIndex.getIndex(ndResourceFile.getNd());
    }

    private void addField(NdType ndType, IBinaryField iBinaryField) throws CoreException {
        NdVariable createVariable = ndType.createVariable();
        createVariable.setName(iBinaryField.getName());
        if (iBinaryField.getGenericSignature() != null) {
            createVariable.setVariableFlag((byte) 1);
        }
        attachAnnotations(createVariable, iBinaryField.getAnnotations());
        createVariable.setConstant(NdConstant.create(getNd(), iBinaryField.getConstant()));
        createVariable.setModifiers(iBinaryField.getModifiers());
        SignatureWrapper genericSignatureFor = GenericSignatures.getGenericSignatureFor(iBinaryField);
        IBinaryTypeAnnotation[] typeAnnotations = iBinaryField.getTypeAnnotations();
        if (typeAnnotations != null) {
            createVariable.allocateTypeAnnotations(typeAnnotations.length);
            for (IBinaryTypeAnnotation iBinaryTypeAnnotation : typeAnnotations) {
                initTypeAnnotation(createVariable.createTypeAnnotation(), iBinaryTypeAnnotation);
            }
        }
        createVariable.setType(createTypeSignature(genericSignatureFor, iBinaryField.getTypeName()));
        createVariable.setTagBits(iBinaryField.getTagBits());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void addMethod(NdMethod ndMethod, IBinaryMethod iBinaryMethod, IBinaryType iBinaryType) throws CoreException {
        char c10;
        int i10;
        SignatureWrapper signatureWrapper;
        NdMethod ndMethod2 = ndMethod;
        attachAnnotations(ndMethod2, iBinaryMethod.getAnnotations());
        int i11 = 0;
        int i12 = iBinaryMethod.getGenericSignature() != null ? 1 : 0;
        SignatureWrapper genericSignature = GenericSignatures.getGenericSignature(iBinaryMethod);
        SignatureWrapper signatureWrapper2 = new SignatureWrapper(iBinaryMethod.getMethodDescriptor());
        readTypeParameters(ndMethod2, genericSignature);
        IBinaryTypeAnnotation[] typeAnnotations = iBinaryMethod.getTypeAnnotations();
        if (typeAnnotations != null) {
            ndMethod2.allocateTypeAnnotations(typeAnnotations.length);
            for (IBinaryTypeAnnotation iBinaryTypeAnnotation : typeAnnotations) {
                initTypeAnnotation(ndMethod.createTypeAnnotation(), iBinaryTypeAnnotation);
            }
        }
        skipChar(genericSignature, '(');
        skipChar(signatureWrapper2, '(');
        ArrayList arrayList = new ArrayList();
        while (true) {
            c10 = ')';
            if (signatureWrapper2.atEnd()) {
                break;
            }
            if (signatureWrapper2.charAtStart() == ')') {
                skipChar(signatureWrapper2, ')');
                break;
            }
            arrayList.add(readNextFieldDescriptor(signatureWrapper2));
            ndMethod2 = ndMethod;
            i12 = i12;
            i11 = 0;
        }
        char[][] argumentNames = iBinaryMethod.getArgumentNames();
        int countMethodArguments = countMethodArguments(genericSignature);
        int max = Math.max(i11, arrayList.size() - countMethodArguments);
        int i13 = iBinaryMethod.getGenericSignature() == null ? 1 : i11;
        if (i13 != 0) {
            max = (iBinaryType.isMember() && iBinaryMethod.isConstructor() && (iBinaryType.getModifiers() & 8) == 0 && arrayList.size() > 0) ? 1 : i11;
        }
        int annotatedParametersCount = iBinaryMethod.getAnnotatedParametersCount();
        int length = argumentNames == null ? i11 : argumentNames.length;
        ndMethod2.allocateParameters(Math.max(Math.max(Math.max(countMethodArguments, length), annotatedParametersCount), arrayList.size()));
        char[] name = iBinaryType.getName();
        int i14 = i11;
        while (true) {
            if (genericSignature.atEnd()) {
                break;
            }
            if (genericSignature.charAtStart() == c10) {
                skipChar(genericSignature, c10);
                break;
            }
            char[] cArr = (char[]) arrayList.get(i14);
            boolean z10 = i14 < max;
            if (z10 && i13 == 0) {
                signatureWrapper = new SignatureWrapper(cArr);
                i10 = i12;
            } else {
                i10 = i12;
                signatureWrapper = genericSignature;
            }
            NdMethodParameter createNewParameter = ndMethod.createNewParameter();
            createNewParameter.setType(createTypeSignature(signatureWrapper, cArr));
            createNewParameter.setCompilerDefined(z10);
            if (i14 < annotatedParametersCount) {
                attachAnnotations(createNewParameter, iBinaryMethod.getParameterAnnotations(i14, name));
            }
            if (!z10 && length > i11) {
                createNewParameter.setName(argumentNames[i11]);
                i11++;
            }
            i14 = (short) (i14 + 1);
            ndMethod2 = ndMethod;
            i12 = i10;
            c10 = ')';
        }
        skipChar(signatureWrapper2, c10);
        ndMethod2.setReturnType(createTypeSignature(genericSignature, readNextFieldDescriptor(signatureWrapper2)));
        boolean hasAnotherException = hasAnotherException(genericSignature);
        char[][] exceptionTypeNames = iBinaryMethod.getExceptionTypeNames();
        if (exceptionTypeNames == null) {
            exceptionTypeNames = CharArrayUtils.EMPTY_ARRAY_OF_CHAR_ARRAYS;
        }
        ndMethod2.allocateExceptions(exceptionTypeNames.length);
        if (hasAnotherException) {
            int i15 = 0;
            while (hasAnotherException(genericSignature)) {
                genericSignature.start++;
                ndMethod2.createException(createTypeSignature(genericSignature, JavaNames.binaryNameToFieldDescriptor(exceptionTypeNames[i15])));
                i15++;
            }
        } else if (exceptionTypeNames.length != 0) {
            for (int i16 = 0; i16 < exceptionTypeNames.length; i16++) {
                ndMethod2.createException(createTypeSignature(new SignatureWrapper(JavaNames.binaryNameToFieldDescriptor(exceptionTypeNames[i16])), JavaNames.binaryNameToFieldDescriptor(exceptionTypeNames[i16])));
            }
        }
        if (hasAnotherException) {
            i12 |= 2;
        }
        Object defaultValue = iBinaryMethod.getDefaultValue();
        if (defaultValue != null) {
            ndMethod2.setDefaultValue(createConstantFromMixedType(defaultValue));
        }
        ndMethod2.setModifiers(iBinaryMethod.getModifiers());
        ndMethod2.setTagBits(iBinaryMethod.getTagBits());
        ndMethod2.setFlags(i12);
    }

    private void attachAnnotations(NdMethod ndMethod, IBinaryAnnotation[] iBinaryAnnotationArr) {
        if (iBinaryAnnotationArr != null) {
            ndMethod.allocateAnnotations(iBinaryAnnotationArr.length);
            for (IBinaryAnnotation iBinaryAnnotation : iBinaryAnnotationArr) {
                initAnnotation(ndMethod.createAnnotation(), iBinaryAnnotation);
            }
        }
    }

    private int countMethodArguments(SignatureWrapper signatureWrapper) {
        char charAtStart;
        SignatureWrapper signatureWrapper2 = new SignatureWrapper(signatureWrapper.signature);
        signatureWrapper2.start = signatureWrapper.start;
        skipChar(signatureWrapper2, '(');
        int i10 = 0;
        while (!signatureWrapper2.atEnd() && signatureWrapper2.charAtStart() != ')') {
            char charAtStart2 = signatureWrapper2.charAtStart();
            if (charAtStart2 != 'F') {
                if (charAtStart2 == 'L') {
                    do {
                        signatureWrapper2.nextWord();
                        signatureWrapper2.start = signatureWrapper2.skipAngleContents(signatureWrapper2.start);
                        charAtStart = signatureWrapper2.charAtStart();
                        if (charAtStart == ';') {
                            skipChar(signatureWrapper2, ';');
                        }
                    } while (charAtStart == '.');
                    throw new IllegalStateException("Unknown char in generic signature " + signatureWrapper2.toString());
                }
                if (charAtStart2 != 'V' && charAtStart2 != 'I' && charAtStart2 != 'J' && charAtStart2 != 'S') {
                    if (charAtStart2 == 'T') {
                        signatureWrapper2.nextWord();
                        skipChar(signatureWrapper2, ';');
                    } else if (charAtStart2 != 'Z') {
                        if (charAtStart2 != '[') {
                            switch (charAtStart2) {
                                case 'B':
                                case 'C':
                                case 'D':
                                    break;
                                default:
                                    throw new IllegalStateException("Generic signature starts with unknown character: " + signatureWrapper2.toString());
                            }
                        } else {
                            signatureWrapper2.start++;
                        }
                    }
                }
                i10++;
            }
            i10++;
            signatureWrapper2.start++;
        }
        return i10;
    }

    public static IBinaryType createInfoFromClassFileInJar(Openable openable) throws CoreException {
        PackageFragment packageFragment = (PackageFragment) openable.getParent();
        String concatWith = Util.concatWith(packageFragment.names, openable.getElementName(), '/');
        ZipFile zipFile = null;
        try {
            try {
                zipFile = ((JarPackageFragmentRoot) packageFragment.getParent()).getJar();
                return ClassFileReader.read(zipFile, concatWith);
            } catch (Exception e10) {
                throw new CoreException(Package.createStatus("Unable to parse JAR file", e10));
            }
        } finally {
            JavaModelManager.getJavaModelManager().closeZipFile(zipFile);
        }
    }

    private NdTypeId createTypeIdFromBinaryName(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return this.index.createTypeId(JavaNames.binaryNameToFieldDescriptor(cArr));
    }

    private NdTypeId createTypeIdFromFieldDescriptor(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return this.index.createTypeId(cArr);
    }

    private NdTypeSignature createTypeSignature(SignatureWrapper signatureWrapper, char[] cArr) throws CoreException {
        char[] cArr2 = signatureWrapper.signature;
        char[] cArr3 = null;
        if (cArr2 == null || cArr2.length == 0) {
            return null;
        }
        char charAtStart = signatureWrapper.charAtStart();
        if (charAtStart == '*' || charAtStart == '+' || charAtStart == '-') {
            throw new CoreException(Package.createStatus("Unexpected wildcard in top-level of generic signature: " + signatureWrapper.toString()));
        }
        if (charAtStart != 'F') {
            if (charAtStart == 'L') {
                return parseClassTypeSignature(null, signatureWrapper);
            }
            if (charAtStart == 'V') {
                signatureWrapper.start++;
                return null;
            }
            if (charAtStart != 'I' && charAtStart != 'J' && charAtStart != 'S') {
                if (charAtStart == 'T') {
                    signatureWrapper.start++;
                    NdComplexTypeSignature ndComplexTypeSignature = new NdComplexTypeSignature(getNd());
                    if (cArr == null) {
                        cArr = JAVA_LANG_OBJECT_FIELD_DESCRIPTOR;
                    }
                    ndComplexTypeSignature.setRawType(createTypeIdFromFieldDescriptor(cArr));
                    ndComplexTypeSignature.setVariableIdentifier(signatureWrapper.nextWord());
                    skipChar(signatureWrapper, ';');
                    return ndComplexTypeSignature;
                }
                if (charAtStart != 'Z') {
                    if (charAtStart == '[') {
                        signatureWrapper.start++;
                        if (cArr != null && cArr.length > 0 && cArr[0] == '[') {
                            cArr3 = CharArrayUtils.subarray(cArr, 1);
                        }
                        NdTypeSignature createTypeSignature = createTypeSignature(signatureWrapper, cArr3);
                        NdTypeId createTypeIdFromFieldDescriptor = createTypeIdFromFieldDescriptor(CharArrayUtils.concat(ARRAY_FIELD_DESCRIPTOR_PREFIX, createTypeSignature.getRawType().getFieldDescriptor().getChars()));
                        NdComplexTypeSignature ndComplexTypeSignature2 = new NdComplexTypeSignature(getNd());
                        ndComplexTypeSignature2.setRawType(createTypeIdFromFieldDescriptor);
                        new NdTypeArgument(getNd(), ndComplexTypeSignature2).setType(createTypeSignature);
                        return ndComplexTypeSignature2;
                    }
                    switch (charAtStart) {
                        case 'B':
                        case 'C':
                        case 'D':
                            break;
                        default:
                            throw new CoreException(Package.createStatus("Generic signature starts with unknown character: " + signatureWrapper.toString()));
                    }
                }
            }
        }
        signatureWrapper.start++;
        return createTypeIdFromFieldDescriptor(new char[]{charAtStart});
    }

    private int findEndOfFieldDescriptor(SignatureWrapper signatureWrapper) throws CoreException {
        char[] cArr = signatureWrapper.signature;
        if (cArr == null || cArr.length == 0) {
            return signatureWrapper.start;
        }
        int i10 = signatureWrapper.start;
        while (i10 < cArr.length) {
            char c10 = cArr[i10];
            if (c10 != 'F') {
                if (c10 != 'L') {
                    if (c10 != 'V' && c10 != 'I' && c10 != 'J' && c10 != 'S') {
                        if (c10 != 'T') {
                            if (c10 != 'Z') {
                                if (c10 != '[') {
                                    switch (c10) {
                                        case 'B':
                                        case 'C':
                                        case 'D':
                                            break;
                                        default:
                                            throw new CoreException(Package.createStatus("Field descriptor starts with unknown character: " + signatureWrapper.toString()));
                                    }
                                } else {
                                    i10++;
                                }
                            }
                        }
                    }
                }
                return CharArrayUtils.indexOf(';', cArr, i10, cArr.length) + 1;
            }
            return i10 + 1;
        }
        return i10;
    }

    private static char[] getMissingTypeString(char[][][] cArr) {
        if (cArr == null) {
            return null;
        }
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer();
        for (int i10 = 0; i10 < cArr.length; i10++) {
            char[][] cArr2 = cArr[i10];
            if (i10 != 0) {
                charArrayBuffer.append(COMMA);
            }
            if (cArr2 != null) {
                for (int i11 = 0; i11 < cArr2.length; i11++) {
                    char[] cArr3 = cArr2[i11];
                    if (cArr3 != null) {
                        if (i11 != 0) {
                            charArrayBuffer.append(PATH_SEPARATOR);
                        }
                        charArrayBuffer.append(cArr3);
                    }
                }
            }
        }
        return charArrayBuffer.getContents();
    }

    private Nd getNd() {
        return this.resource.getNd();
    }

    private char[] getSelectorAndDescriptor(IBinaryMethod iBinaryMethod) {
        return CharArrayUtils.concat(iBinaryMethod.getSelector(), iBinaryMethod.getMethodDescriptor());
    }

    private boolean hasAnotherException(SignatureWrapper signatureWrapper) {
        return !signatureWrapper.atEnd() && signatureWrapper.charAtStart() == '^';
    }

    private void initAnnotation(NdAnnotation ndAnnotation, IBinaryAnnotation iBinaryAnnotation) {
        ndAnnotation.setType(createTypeIdFromBinaryName(iBinaryAnnotation.getTypeName()));
        IBinaryElementValuePair[] elementValuePairs = iBinaryAnnotation.getElementValuePairs();
        if (elementValuePairs != null) {
            ndAnnotation.allocateValuePairs(elementValuePairs.length);
            for (IBinaryElementValuePair iBinaryElementValuePair : elementValuePairs) {
                ndAnnotation.createValuePair(iBinaryElementValuePair.getName()).setValue(createConstantFromMixedType(iBinaryElementValuePair.getValue()));
            }
        }
    }

    private void initTypeAnnotation(NdTypeAnnotation ndTypeAnnotation, IBinaryTypeAnnotation iBinaryTypeAnnotation) {
        int[] typePath = iBinaryTypeAnnotation.getTypePath();
        if (typePath != null && typePath.length > 0) {
            int length = typePath.length;
            byte[] bArr = new byte[length];
            for (int i10 = 0; i10 < length; i10++) {
                bArr[i10] = (byte) typePath[i10];
            }
            ndTypeAnnotation.setPath(bArr);
        }
        int targetType = iBinaryTypeAnnotation.getTargetType();
        ndTypeAnnotation.setTargetType(targetType);
        if (targetType == 0 || targetType == 1) {
            ndTypeAnnotation.setTargetInfo(iBinaryTypeAnnotation.getTypeParameterIndex());
        } else {
            switch (targetType) {
                case 16:
                    ndTypeAnnotation.setTargetInfo(iBinaryTypeAnnotation.getSupertypeIndex());
                    break;
                case 17:
                case 18:
                    ndTypeAnnotation.setTargetInfo((byte) iBinaryTypeAnnotation.getTypeParameterIndex(), (byte) iBinaryTypeAnnotation.getBoundIndex());
                    break;
                case 19:
                case 20:
                case 21:
                    break;
                case 22:
                    ndTypeAnnotation.setTargetInfo(iBinaryTypeAnnotation.getMethodFormalParameterIndex());
                    break;
                case 23:
                    ndTypeAnnotation.setTargetInfo(iBinaryTypeAnnotation.getThrowsTypeIndex());
                    break;
                default:
                    throw new IllegalStateException("Target type not handled " + targetType);
            }
        }
        initAnnotation(ndTypeAnnotation, iBinaryTypeAnnotation.getAnnotation());
    }

    public static int lambda$0(char[][] cArr, Integer num, Integer num2) {
        return CharArrayUtils.compare(cArr[num.intValue()], cArr[num2.intValue()]);
    }

    private void logInfo(String str) {
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private NdTypeSignature parseClassTypeSignature(NdComplexTypeSignature ndComplexTypeSignature, SignatureWrapper signatureWrapper) throws CoreException {
        NdTypeId ndTypeId;
        char[] nextWord = signatureWrapper.nextWord();
        char[] concat = ndComplexTypeSignature != null ? CharArrayUtils.concat(ndComplexTypeSignature.getRawType().getFieldDescriptorWithoutTrailingSemicolon(), INNER_TYPE_SEPARATOR, nextWord, FIELD_DESCRIPTOR_SUFFIX) : CharArrayUtils.concat(nextWord, FIELD_DESCRIPTOR_SUFFIX);
        char[] cArr = signatureWrapper.signature;
        int length = cArr.length;
        int i10 = signatureWrapper.start;
        boolean z10 = false;
        boolean z11 = length > i10 && cArr[i10] == '<';
        boolean z12 = cArr[i10] == '.';
        NdTypeId createTypeIdFromFieldDescriptor = createTypeIdFromFieldDescriptor(concat);
        NdTypeId ndTypeId2 = createTypeIdFromFieldDescriptor;
        if (z11 || ndComplexTypeSignature != null || z12) {
            NdComplexTypeSignature ndComplexTypeSignature2 = new NdComplexTypeSignature(getNd());
            ndComplexTypeSignature2.setRawType(createTypeIdFromFieldDescriptor);
            if (z11) {
                signatureWrapper.start++;
                while (true) {
                    int i11 = signatureWrapper.start;
                    if (i11 >= cArr.length || cArr[i11] == '>') {
                        break;
                    }
                    NdTypeArgument ndTypeArgument = new NdTypeArgument(getNd(), ndComplexTypeSignature2);
                    char c10 = cArr[signatureWrapper.start];
                    if (c10 != '*') {
                        if (c10 == '+') {
                            ndTypeArgument.setWildcard(2);
                            signatureWrapper.start++;
                        } else if (c10 == '-') {
                            ndTypeArgument.setWildcard(1);
                            signatureWrapper.start++;
                        }
                        ndTypeArgument.setType(createTypeSignature(signatureWrapper, null));
                    } else {
                        ndTypeArgument.setWildcard(3);
                        signatureWrapper.start++;
                    }
                }
                skipChar(signatureWrapper, '>');
            }
            if (ndComplexTypeSignature != null) {
                ndComplexTypeSignature2.setGenericDeclaringType(ndComplexTypeSignature);
            }
            if (cArr[signatureWrapper.start] == '.') {
                skipChar(signatureWrapper, '.');
                ndTypeId = parseClassTypeSignature(ndComplexTypeSignature2, signatureWrapper);
                if (z10) {
                    skipChar(signatureWrapper, ';');
                }
                return ndTypeId;
            }
            ndTypeId2 = ndComplexTypeSignature2;
        }
        z10 = true;
        ndTypeId = ndTypeId2;
        if (z10) {
        }
        return ndTypeId;
    }

    private char[] readNextFieldDescriptor(SignatureWrapper signatureWrapper) throws CoreException {
        int findEndOfFieldDescriptor = findEndOfFieldDescriptor(signatureWrapper);
        char[] subarray = CharArrayUtils.subarray(signatureWrapper.signature, signatureWrapper.start, findEndOfFieldDescriptor);
        signatureWrapper.start = findEndOfFieldDescriptor;
        return subarray;
    }

    private void readTypeParameters(NdBinding ndBinding, SignatureWrapper signatureWrapper) throws CoreException {
        char[] cArr = signatureWrapper.signature;
        if (cArr.length == 0 || signatureWrapper.charAtStart() != '<') {
            return;
        }
        ArrayList<TypeParameter> arrayList = new ArrayList();
        int skipAngleContents = signatureWrapper.skipAngleContents(signatureWrapper.start) - 1;
        signatureWrapper.start++;
        TypeParameter typeParameter = null;
        while (true) {
            int i10 = signatureWrapper.start;
            if (i10 >= skipAngleContents) {
                break;
            }
            int indexOf = CharOperation.indexOf(':', cArr, i10, skipAngleContents);
            int i11 = signatureWrapper.start;
            if (indexOf > i11) {
                char[] subarray = CharOperation.subarray(cArr, i11, indexOf);
                TypeParameter typeParameter2 = new TypeParameter();
                arrayList.add(typeParameter2);
                typeParameter2.identifier = subarray;
                signatureWrapper.start = indexOf + 1;
                typeParameter2.firstBoundIsClass = signatureWrapper.charAtStart() != ':';
                typeParameter = typeParameter2;
            }
            skipChar(signatureWrapper, ':');
            typeParameter.bounds.add(createTypeSignature(signatureWrapper, JAVA_LANG_OBJECT_FIELD_DESCRIPTOR));
        }
        ndBinding.allocateTypeParameters(arrayList.size());
        for (TypeParameter typeParameter3 : arrayList) {
            NdTypeParameter createTypeParameter = ndBinding.createTypeParameter();
            createTypeParameter.setIdentifier(typeParameter3.identifier);
            createTypeParameter.setFirstBoundIsClass(typeParameter3.firstBoundIsClass);
            createTypeParameter.allocateBounds(typeParameter3.bounds.size());
            Iterator<NdTypeSignature> it = typeParameter3.bounds.iterator();
            while (it.hasNext()) {
                createTypeParameter.createBound(it.next());
            }
        }
        skipChar(signatureWrapper, '>');
    }

    private void skipChar(SignatureWrapper signatureWrapper, char c10) {
        if (signatureWrapper.start >= signatureWrapper.signature.length || signatureWrapper.charAtStart() != c10) {
            return;
        }
        signatureWrapper.start++;
    }

    public NdType addType(IBinaryType iBinaryType, char[] cArr, IProgressMonitor iProgressMonitor) throws CoreException {
        char[] binaryNameToFieldDescriptor = JavaNames.binaryNameToFieldDescriptor(iBinaryType.getName());
        logInfo("adding binary type " + new String(cArr));
        NdTypeId createTypeIdFromFieldDescriptor = createTypeIdFromFieldDescriptor(cArr);
        NdType findTypeByResourceAddress = createTypeIdFromFieldDescriptor.findTypeByResourceAddress(this.resource.address);
        if (findTypeByResourceAddress == null) {
            findTypeByResourceAddress = new NdType(getNd(), this.resource);
        }
        IBinaryTypeAnnotation[] typeAnnotations = iBinaryType.getTypeAnnotations();
        if (typeAnnotations != null) {
            findTypeByResourceAddress.allocateTypeAnnotations(typeAnnotations.length);
            for (IBinaryTypeAnnotation iBinaryTypeAnnotation : typeAnnotations) {
                initTypeAnnotation(findTypeByResourceAddress.createTypeAnnotation(), iBinaryTypeAnnotation);
            }
        }
        findTypeByResourceAddress.setTypeId(createTypeIdFromFieldDescriptor);
        if (!CharArrayUtils.equals(binaryNameToFieldDescriptor, cArr)) {
            findTypeByResourceAddress.setFieldDescriptorFromClass(binaryNameToFieldDescriptor);
        }
        char[][] interfaceNames = iBinaryType.getInterfaceNames();
        if (interfaceNames == null) {
            interfaceNames = EMPTY_CHAR_ARRAY_ARRAY;
        }
        if (iBinaryType.getGenericSignature() != null) {
            findTypeByResourceAddress.setFlag((byte) 8, true);
        }
        SignatureWrapper genericSignature = GenericSignatures.getGenericSignature(iBinaryType);
        findTypeByResourceAddress.setModifiers(iBinaryType.getModifiers());
        findTypeByResourceAddress.setDeclaringType(createTypeIdFromBinaryName(iBinaryType.getEnclosingTypeName()));
        readTypeParameters(findTypeByResourceAddress, genericSignature);
        char[] superclassName = iBinaryType.getSuperclassName();
        findTypeByResourceAddress.setSuperclass(createTypeSignature(genericSignature, superclassName == null ? JAVA_LANG_OBJECT_FIELD_DESCRIPTOR : JavaNames.binaryNameToFieldDescriptor(superclassName)));
        short s10 = 0;
        while (genericSignature.start < genericSignature.signature.length) {
            new NdTypeInterface(getNd(), findTypeByResourceAddress, createTypeSignature(genericSignature, JavaNames.binaryNameToFieldDescriptor(s10 < interfaceNames.length ? interfaceNames[s10] : EMPTY_CHAR_ARRAY)));
            s10 = (short) (s10 + 1);
        }
        attachAnnotations(findTypeByResourceAddress, iBinaryType.getAnnotations());
        findTypeByResourceAddress.setDeclaringMethod(iBinaryType.getEnclosingMethod());
        IBinaryField[] fields = iBinaryType.getFields();
        if (fields != null) {
            findTypeByResourceAddress.allocateVariables(fields.length);
            for (IBinaryField iBinaryField : fields) {
                addField(findTypeByResourceAddress, iBinaryField);
            }
        }
        IBinaryMethod[] methods = iBinaryType.getMethods();
        if (methods != null) {
            final char[][] cArr2 = new char[methods.length];
            int length = methods.length;
            Integer[] numArr = new Integer[length];
            for (int i10 = 0; i10 < length; i10++) {
                numArr[i10] = Integer.valueOf(i10);
                cArr2[i10] = getSelectorAndDescriptor(methods[i10]);
            }
            Arrays.sort(numArr, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    int lambda$0;
                    lambda$0 = ClassFileToIndexConverter.lambda$0(cArr2, (Integer) obj, (Integer) obj2);
                    return lambda$0;
                }
            });
            findTypeByResourceAddress.allocateMethods(methods.length);
            for (int i11 = 0; i11 < methods.length; i11++) {
                NdMethod createMethod = findTypeByResourceAddress.createMethod();
                int intValue = numArr[i11].intValue();
                createMethod.setDeclarationPosition(intValue);
                createMethod.setMethodName(cArr2[intValue]);
                addMethod(createMethod, methods[intValue], iBinaryType);
            }
        }
        findTypeByResourceAddress.setMissingTypeNames(getMissingTypeString(iBinaryType.getMissingTypeNames()));
        findTypeByResourceAddress.setSourceFileName(iBinaryType.sourceFileName());
        findTypeByResourceAddress.setAnonymous(iBinaryType.isAnonymous());
        findTypeByResourceAddress.setIsLocal(iBinaryType.isLocal());
        findTypeByResourceAddress.setIsMember(iBinaryType.isMember());
        findTypeByResourceAddress.setTagBits(iBinaryType.getTagBits());
        findTypeByResourceAddress.setSourceNameOverride(iBinaryType.getSourceName());
        return findTypeByResourceAddress;
    }

    public NdConstant createConstantFromMixedType(Object obj) {
        if (obj instanceof Constant) {
            return NdConstant.create(getNd(), (Constant) obj);
        }
        if (obj instanceof ClassSignature) {
            return NdConstantClass.create(getNd(), this.index.createTypeId(JavaNames.binaryNameToFieldDescriptor(((ClassSignature) obj).getTypeName())));
        }
        if (obj instanceof IBinaryAnnotation) {
            NdConstantAnnotation ndConstantAnnotation = new NdConstantAnnotation(getNd());
            initAnnotation(ndConstantAnnotation.getValue(), (IBinaryAnnotation) obj);
            return ndConstantAnnotation;
        }
        if (!(obj instanceof Object[])) {
            if (obj instanceof EnumConstantSignature) {
                EnumConstantSignature enumConstantSignature = (EnumConstantSignature) obj;
                return NdConstantEnum.create(createTypeIdFromBinaryName(enumConstantSignature.getTypeName()), new String(enumConstantSignature.getEnumConstantName()));
            }
            throw new IllegalStateException("Unknown constant type " + obj.getClass().getName());
        }
        NdConstantArray ndConstantArray = new NdConstantArray(getNd());
        Object[] objArr = (Object[]) obj;
        for (Object obj2 : objArr) {
            createConstantFromMixedType(obj2).setParent(ndConstantArray);
        }
        return ndConstantArray;
    }

    private void attachAnnotations(NdType ndType, IBinaryAnnotation[] iBinaryAnnotationArr) {
        if (iBinaryAnnotationArr != null) {
            ndType.allocateAnnotations(iBinaryAnnotationArr.length);
            for (IBinaryAnnotation iBinaryAnnotation : iBinaryAnnotationArr) {
                initAnnotation(ndType.createAnnotation(), iBinaryAnnotation);
            }
        }
    }

    private void attachAnnotations(NdVariable ndVariable, IBinaryAnnotation[] iBinaryAnnotationArr) {
        if (iBinaryAnnotationArr != null) {
            ndVariable.allocateAnnotations(iBinaryAnnotationArr.length);
            for (IBinaryAnnotation iBinaryAnnotation : iBinaryAnnotationArr) {
                initAnnotation(ndVariable.createAnnotation(), iBinaryAnnotation);
            }
        }
    }

    private void attachAnnotations(NdMethodParameter ndMethodParameter, IBinaryAnnotation[] iBinaryAnnotationArr) {
        if (iBinaryAnnotationArr != null) {
            ndMethodParameter.allocateAnnotations(iBinaryAnnotationArr.length);
            for (IBinaryAnnotation iBinaryAnnotation : iBinaryAnnotationArr) {
                initAnnotation(ndMethodParameter.createAnnotation(), iBinaryAnnotation);
            }
        }
    }
}
