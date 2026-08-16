package org.eclipse.jdt.internal.core.nd.java.model;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.classfmt.BinaryTypeFormatter;
import org.eclipse.jdt.internal.compiler.classfmt.ElementValuePairInfo;
import org.eclipse.jdt.internal.compiler.env.ClassSignature;
import org.eclipse.jdt.internal.compiler.env.EnumConstantSignature;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryElementValuePair;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryNestedType;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;
import org.eclipse.jdt.internal.compiler.env.ITypeAnnotationWalker;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.core.nd.IReader;
import org.eclipse.jdt.internal.core.nd.db.IString;
import org.eclipse.jdt.internal.core.nd.java.JavaNames;
import org.eclipse.jdt.internal.core.nd.java.NdAnnotation;
import org.eclipse.jdt.internal.core.nd.java.NdAnnotationValuePair;
import org.eclipse.jdt.internal.core.nd.java.NdConstant;
import org.eclipse.jdt.internal.core.nd.java.NdConstantAnnotation;
import org.eclipse.jdt.internal.core.nd.java.NdConstantArray;
import org.eclipse.jdt.internal.core.nd.java.NdConstantClass;
import org.eclipse.jdt.internal.core.nd.java.NdConstantEnum;
import org.eclipse.jdt.internal.core.nd.java.NdMethod;
import org.eclipse.jdt.internal.core.nd.java.NdMethodException;
import org.eclipse.jdt.internal.core.nd.java.NdMethodParameter;
import org.eclipse.jdt.internal.core.nd.java.NdType;
import org.eclipse.jdt.internal.core.nd.java.NdTypeAnnotation;
import org.eclipse.jdt.internal.core.nd.java.NdTypeId;
import org.eclipse.jdt.internal.core.nd.java.NdTypeInterface;
import org.eclipse.jdt.internal.core.nd.java.NdTypeParameter;
import org.eclipse.jdt.internal.core.nd.java.NdTypeSignature;
import org.eclipse.jdt.internal.core.nd.java.NdVariable;
import org.eclipse.jdt.internal.core.nd.java.TypeRef;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;

public class IndexBinaryType implements IBinaryType {
    private static final IBinaryAnnotation[] NO_ANNOTATIONS = new IBinaryAnnotation[0];
    private static final int[] NO_PATH = new int[0];
    private char[] binaryTypeName;
    private char[] enclosingMethod;
    private char[] enclosingType;
    private char[] fileName;
    private boolean isAnonymous;
    private boolean isLocal;
    private boolean isMember;
    private int modifiers;
    private boolean simpleAttributesInitialized;
    private char[] superclassName;
    private long tagBits;
    private final TypeRef typeRef;

    public IndexBinaryType(TypeRef typeRef, char[] cArr) {
        this.typeRef = typeRef;
        this.fileName = cArr;
    }

    public static IBinaryAnnotation createBinaryAnnotation(NdAnnotation ndAnnotation) {
        List<NdAnnotationValuePair> elementValuePairs = ndAnnotation.getElementValuePairs();
        final IBinaryElementValuePair[] iBinaryElementValuePairArr = new IBinaryElementValuePair[elementValuePairs.size()];
        for (int i10 = 0; i10 < elementValuePairs.size(); i10++) {
            NdAnnotationValuePair ndAnnotationValuePair = elementValuePairs.get(i10);
            iBinaryElementValuePairArr[i10] = new ElementValuePairInfo(ndAnnotationValuePair.getName().getChars(), unpackValue(ndAnnotationValuePair.getValue()));
        }
        final char[] fieldDescriptorToBinaryName = JavaNames.fieldDescriptorToBinaryName(ndAnnotation.getType().getRawType().getFieldDescriptor().getChars());
        return new IBinaryAnnotation() {
            @Override
            public IBinaryElementValuePair[] getElementValuePairs() {
                return iBinaryElementValuePairArr;
            }

            @Override
            public char[] getTypeName() {
                return fieldDescriptorToBinaryName;
            }

            public String toString() {
                return BinaryTypeFormatter.annotationToString(this);
            }
        };
    }

    public static IBinaryField createBinaryField(NdVariable ndVariable) {
        char[] chars = ndVariable.getName().getChars();
        NdConstant constant = ndVariable.getConstant();
        Constant constant2 = constant != null ? constant.getConstant() : null;
        if (constant2 == null) {
            constant2 = Constant.NotAConstant;
        }
        Constant constant3 = constant2;
        NdTypeSignature type = ndVariable.getType();
        IBinaryTypeAnnotation[] createBinaryTypeAnnotations = createBinaryTypeAnnotations(ndVariable.getTypeAnnotations());
        IBinaryAnnotation[] annotationArray = toAnnotationArray(ndVariable.getAnnotations());
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer();
        if (ndVariable.hasVariableFlag(1)) {
            type.getSignature(charArrayBuffer);
        }
        return new IndexBinaryField(annotationArray, constant3, charArrayBuffer.getContents(), ndVariable.getModifiers(), chars, ndVariable.getTagBits(), createBinaryTypeAnnotations, type.getRawType().getFieldDescriptor().getChars());
    }

    private IBinaryMethod createBinaryMethod(NdMethod ndMethod) {
        return IndexBinaryMethod.create().setAnnotations(toAnnotationArray(ndMethod.getAnnotations())).setModifiers(ndMethod.getModifiers()).setIsConstructor(ndMethod.isConstructor()).setArgumentNames(getArgumentNames(ndMethod)).setDefaultValue(unpackValue(ndMethod.getDefaultValue())).setExceptionTypeNames(getExceptionTypeNames(ndMethod)).setGenericSignature(getGenericSignatureFor(ndMethod)).setMethodDescriptor(ndMethod.getMethodDescriptor()).setParameterAnnotations(getParameterAnnotations(ndMethod)).setSelector(ndMethod.getSelector()).setTagBits(ndMethod.getTagBits()).setIsClInit(ndMethod.isClInit()).setTypeAnnotations(createBinaryTypeAnnotations(ndMethod.getTypeAnnotations()));
    }

    private IBinaryNestedType createBinaryNestedType(NdType ndType) {
        return new IndexBinaryNestedType(ndType.getTypeId().getBinaryName(), ndType.getDeclaringType().getBinaryName(), ndType.getModifiers());
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0036. Please report as an issue. */
    private static IBinaryTypeAnnotation[] createBinaryTypeAnnotations(List<? extends NdTypeAnnotation> list) {
        int targetInfoArg0;
        byte b10;
        int i10;
        if (list.isEmpty()) {
            return null;
        }
        IBinaryTypeAnnotation[] iBinaryTypeAnnotationArr = new IBinaryTypeAnnotation[list.size()];
        int i11 = 0;
        for (NdTypeAnnotation ndTypeAnnotation : list) {
            IBinaryAnnotation createBinaryAnnotation = createBinaryAnnotation(ndTypeAnnotation);
            int[] typePath = getTypePath(ndTypeAnnotation.getTypePath());
            int targetType = ndTypeAnnotation.getTargetType();
            if (targetType == 0 || targetType == 1) {
                targetInfoArg0 = ndTypeAnnotation.getTargetInfoArg0();
            } else {
                switch (targetType) {
                    case 16:
                        targetInfoArg0 = ndTypeAnnotation.getTarget();
                        break;
                    case 17:
                    case 18:
                        i10 = ndTypeAnnotation.getTargetInfoArg0();
                        b10 = ndTypeAnnotation.getTargetInfoArg1();
                        iBinaryTypeAnnotationArr[i11] = new IndexBinaryTypeAnnotation(ndTypeAnnotation.getTargetType(), i10, b10, typePath, createBinaryAnnotation);
                        i11++;
                    case 19:
                    case 20:
                    case 21:
                        i10 = 0;
                        b10 = 0;
                        iBinaryTypeAnnotationArr[i11] = new IndexBinaryTypeAnnotation(ndTypeAnnotation.getTargetType(), i10, b10, typePath, createBinaryAnnotation);
                        i11++;
                    case 22:
                        targetInfoArg0 = ndTypeAnnotation.getTarget();
                        break;
                    case 23:
                        targetInfoArg0 = ndTypeAnnotation.getTarget();
                        break;
                    default:
                        throw new IllegalStateException("Target type not handled " + ndTypeAnnotation.getTargetType());
                }
            }
            b10 = 0;
            i10 = targetInfoArg0;
            iBinaryTypeAnnotationArr[i11] = new IndexBinaryTypeAnnotation(ndTypeAnnotation.getTargetType(), i10, b10, typePath, createBinaryAnnotation);
            i11++;
        }
        return iBinaryTypeAnnotationArr;
    }

    private char[][] getArgumentNames(NdMethod ndMethod) {
        char[][] parameterNames = ndMethod.getParameterNames();
        int i10 = -1;
        for (int i11 = 0; i11 < parameterNames.length; i11++) {
            char[] cArr = parameterNames[i11];
            if (cArr != null && cArr.length != 0) {
                i10 = i11;
            }
        }
        if (i10 == parameterNames.length - 1) {
            return parameterNames;
        }
        int i12 = i10 + 1;
        char[][] cArr2 = new char[i12];
        System.arraycopy(parameterNames, 0, cArr2, 0, i12);
        return cArr2;
    }

    private char[][] getExceptionTypeNames(NdMethod ndMethod) {
        List<NdMethodException> exceptions = ndMethod.getExceptions();
        char[][] cArr = new char[exceptions.size()];
        for (int i10 = 0; i10 < exceptions.size(); i10++) {
            cArr[i10] = exceptions.get(i10).getExceptionType().getRawType().getBinaryName();
        }
        return cArr;
    }

    private static char[] getGenericSignatureFor(NdMethod ndMethod) {
        if (!ndMethod.hasAllFlags(1)) {
            return null;
        }
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer();
        ndMethod.getGenericSignature(charArrayBuffer, ndMethod.hasAllFlags(2));
        return charArrayBuffer.getContents();
    }

    private IBinaryAnnotation[][] getParameterAnnotations(NdMethod ndMethod) {
        List<NdMethodParameter> methodParameters = ndMethod.getMethodParameters();
        if (methodParameters.isEmpty()) {
            return null;
        }
        IBinaryAnnotation[][] iBinaryAnnotationArr = new IBinaryAnnotation[methodParameters.size()];
        for (int i10 = 0; i10 < methodParameters.size(); i10++) {
            iBinaryAnnotationArr[i10] = toAnnotationArray(methodParameters.get(i10).getAnnotations());
        }
        return iBinaryAnnotationArr;
    }

    private static int[] getTypePath(byte[] bArr) {
        if (bArr.length == 0) {
            return NO_PATH;
        }
        int[] iArr = new int[bArr.length];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            iArr[i10] = bArr[i10];
        }
        return iArr;
    }

    private static IBinaryAnnotation[] toAnnotationArray(List<? extends NdAnnotation> list) {
        if (list.isEmpty()) {
            return NO_ANNOTATIONS;
        }
        int size = list.size();
        IBinaryAnnotation[] iBinaryAnnotationArr = new IBinaryAnnotation[size];
        for (int i10 = 0; i10 < size; i10++) {
            iBinaryAnnotationArr[i10] = createBinaryAnnotation(list.get(i10));
        }
        return iBinaryAnnotationArr;
    }

    private static Object unpackValue(NdConstant ndConstant) {
        if (ndConstant == null) {
            return null;
        }
        if (ndConstant instanceof NdConstantAnnotation) {
            return createBinaryAnnotation(((NdConstantAnnotation) ndConstant).getValue());
        }
        if (!(ndConstant instanceof NdConstantArray)) {
            if (!(ndConstant instanceof NdConstantEnum)) {
                return ndConstant instanceof NdConstantClass ? new ClassSignature(((NdConstantClass) ndConstant).getValue().getRawType().getBinaryName()) : ndConstant.getConstant();
            }
            NdConstantEnum ndConstantEnum = (NdConstantEnum) ndConstant;
            return new EnumConstantSignature(ndConstantEnum.getType().getRawType().getBinaryName(), ndConstantEnum.getValue());
        }
        List<NdConstant> value = ((NdConstantArray) ndConstant).getValue();
        Object[] objArr = new Object[value.size()];
        for (int i10 = 0; i10 < value.size(); i10++) {
            objArr[i10] = unpackValue(value.get(i10));
        }
        return objArr;
    }

    @Override
    public ITypeAnnotationWalker enrichWithExternalAnnotationsFor(ITypeAnnotationWalker iTypeAnnotationWalker, Object obj, LookupEnvironment lookupEnvironment) {
        return iTypeAnnotationWalker;
    }

    public boolean exists() {
        return this.typeRef.get() != null;
    }

    @Override
    public IBinaryAnnotation[] getAnnotations() {
        Throwable th2 = null;
        try {
            IReader lock = this.typeRef.lock();
            try {
                if (this.typeRef.get() != null) {
                    return toAnnotationArray(this.typeRef.get().getAnnotations());
                }
                IBinaryAnnotation[] iBinaryAnnotationArr = NO_ANNOTATIONS;
                if (lock != null) {
                    lock.close();
                }
                return iBinaryAnnotationArr;
            } finally {
                if (lock != null) {
                    lock.close();
                }
            }
        } catch (Throwable th3) {
            if (0 == 0) {
                throw th3;
            }
            if (null == th3) {
                throw null;
            }
            th2.addSuppressed(th3);
            throw null;
        }
    }

    @Override
    public char[] getEnclosingMethod() {
        initSimpleAttributes();
        return this.enclosingMethod;
    }

    @Override
    public char[] getEnclosingTypeName() {
        initSimpleAttributes();
        return this.enclosingType;
    }

    @Override
    public BinaryTypeBinding.ExternalAnnotationStatus getExternalAnnotationStatus() {
        return BinaryTypeBinding.ExternalAnnotationStatus.NOT_EEA_CONFIGURED;
    }

    @Override
    public IBinaryField[] getFields() {
        Throwable th2 = null;
        try {
            IReader lock = this.typeRef.lock();
            try {
                NdType ndType = this.typeRef.get();
                if (ndType == null) {
                    if (lock != null) {
                        lock.close();
                    }
                    return null;
                }
                List<NdVariable> variables = ndType.getVariables();
                if (variables.isEmpty()) {
                    return null;
                }
                IBinaryField[] iBinaryFieldArr = new IBinaryField[variables.size()];
                for (int i10 = 0; i10 < variables.size(); i10++) {
                    iBinaryFieldArr[i10] = createBinaryField(variables.get(i10));
                }
                if (lock != null) {
                    lock.close();
                }
                return iBinaryFieldArr;
            } finally {
                if (lock != null) {
                    lock.close();
                }
            }
        } catch (Throwable th3) {
            if (0 == 0) {
                throw th3;
            }
            if (null == th3) {
                throw null;
            }
            th2.addSuppressed(th3);
            throw null;
        }
    }

    @Override
    public char[] getFileName() {
        return this.fileName;
    }

    @Override
    public char[] getGenericSignature() {
        Throwable th2 = null;
        try {
            IReader lock = this.typeRef.lock();
            try {
                NdType ndType = this.typeRef.get();
                if (ndType == null) {
                    if (lock != null) {
                        lock.close();
                    }
                    return null;
                }
                if (!ndType.getFlag((byte) 8)) {
                    if (lock != null) {
                        lock.close();
                    }
                    return null;
                }
                CharArrayBuffer charArrayBuffer = new CharArrayBuffer();
                NdTypeParameter.getSignature(charArrayBuffer, ndType.getTypeParameters());
                NdTypeSignature superclass = ndType.getSuperclass();
                if (superclass != null) {
                    superclass.getSignature(charArrayBuffer);
                }
                Iterator<NdTypeInterface> it = ndType.getInterfaces().iterator();
                while (it.hasNext()) {
                    it.next().getInterface().getSignature(charArrayBuffer);
                }
                char[] contents = charArrayBuffer.getContents();
                if (lock != null) {
                    lock.close();
                }
                return contents;
            } catch (Throwable th3) {
                if (lock != null) {
                    lock.close();
                }
                throw th3;
            }
        } catch (Throwable th4) {
            if (0 == 0) {
                throw th4;
            }
            if (null == th4) {
                throw null;
            }
            th2.addSuppressed(th4);
            throw null;
        }
    }

    @Override
    public char[][] getInterfaceNames() {
        Throwable th2 = null;
        try {
            IReader lock = this.typeRef.lock();
            try {
                NdType ndType = this.typeRef.get();
                if (ndType == null) {
                    if (lock != null) {
                        lock.close();
                    }
                    return null;
                }
                List<NdTypeInterface> interfaces = ndType.getInterfaces();
                if (interfaces.isEmpty()) {
                    return null;
                }
                char[][] cArr = new char[interfaces.size()];
                for (int i10 = 0; i10 < interfaces.size(); i10++) {
                    cArr[i10] = interfaces.get(i10).getInterface().getRawType().getBinaryName();
                }
                if (lock != null) {
                    lock.close();
                }
                return cArr;
            } finally {
                if (lock != null) {
                    lock.close();
                }
            }
        } catch (Throwable th3) {
            if (0 == 0) {
                throw th3;
            }
            if (null == th3) {
                throw null;
            }
            th2.addSuppressed(th3);
            throw null;
        }
    }

    @Override
    public IBinaryNestedType[] getMemberTypes() {
        Throwable th2 = null;
        try {
            IReader lock = this.typeRef.lock();
            try {
                NdType ndType = this.typeRef.get();
                if (ndType == null) {
                    if (lock != null) {
                        lock.close();
                    }
                    return null;
                }
                List<NdType> declaredTypes = ndType.getTypeId().getDeclaredTypes();
                if (declaredTypes.isEmpty()) {
                    return null;
                }
                IString packageFragmentRoot = ndType.getResourceFile().getPackageFragmentRoot();
                ArrayList arrayList = new ArrayList();
                for (NdType ndType2 : declaredTypes) {
                    if (ndType2.getResourceFile().getPackageFragmentRoot().compare(packageFragmentRoot, true) == 0) {
                        arrayList.add(createBinaryNestedType(ndType2));
                    }
                }
                IBinaryNestedType[] iBinaryNestedTypeArr = arrayList.isEmpty() ? null : (IBinaryNestedType[]) arrayList.toArray(new IBinaryNestedType[arrayList.size()]);
                if (lock != null) {
                    lock.close();
                }
                return iBinaryNestedTypeArr;
            } finally {
                if (lock != null) {
                    lock.close();
                }
            }
        } catch (Throwable th3) {
            if (0 == 0) {
                throw th3;
            }
            if (null == th3) {
                throw null;
            }
            th2.addSuppressed(th3);
            throw null;
        }
    }

    @Override
    public IBinaryMethod[] getMethods() {
        Throwable th2 = null;
        try {
            IReader lock = this.typeRef.lock();
            try {
                NdType ndType = this.typeRef.get();
                if (ndType == null) {
                    if (lock != null) {
                        lock.close();
                    }
                    return null;
                }
                List<NdMethod> methodsInDeclarationOrder = ndType.getMethodsInDeclarationOrder();
                if (methodsInDeclarationOrder.isEmpty()) {
                    return null;
                }
                int size = methodsInDeclarationOrder.size();
                IBinaryMethod[] iBinaryMethodArr = new IBinaryMethod[size];
                for (int i10 = 0; i10 < size; i10++) {
                    iBinaryMethodArr[i10] = createBinaryMethod(methodsInDeclarationOrder.get(i10));
                }
                if (lock != null) {
                    lock.close();
                }
                return iBinaryMethodArr;
            } finally {
                if (lock != null) {
                    lock.close();
                }
            }
        } catch (Throwable th3) {
            if (0 == 0) {
                throw th3;
            }
            if (null == th3) {
                throw null;
            }
            th2.addSuppressed(th3);
            throw null;
        }
    }

    @Override
    public char[][][] getMissingTypeNames() {
        Throwable th2 = null;
        try {
            IReader lock = this.typeRef.lock();
            try {
                NdType ndType = this.typeRef.get();
                if (ndType == null) {
                    if (lock != null) {
                        lock.close();
                    }
                    return null;
                }
                IString missingTypeNames = ndType.getMissingTypeNames();
                if (missingTypeNames.length() == 0) {
                    return null;
                }
                char[][] splitOn = CharOperation.splitOn(IIndexConstants.PARAMETER_SEPARATOR, missingTypeNames.getChars());
                char[][][] cArr = new char[splitOn.length][];
                for (int i10 = 0; i10 < splitOn.length; i10++) {
                    cArr[i10] = CharOperation.splitOn('/', splitOn[i10]);
                }
                if (lock != null) {
                    lock.close();
                }
                return cArr;
            } finally {
                if (lock != null) {
                    lock.close();
                }
            }
        } catch (Throwable th3) {
            if (0 == 0) {
                throw th3;
            }
            if (null == th3) {
                throw null;
            }
            th2.addSuppressed(th3);
            throw null;
        }
    }

    @Override
    public int getModifiers() {
        initSimpleAttributes();
        return this.modifiers;
    }

    @Override
    public char[] getModule() {
        return null;
    }

    @Override
    public char[] getName() {
        initSimpleAttributes();
        return this.binaryTypeName;
    }

    @Override
    public char[] getSourceName() {
        Throwable th2 = null;
        try {
            IReader lock = this.typeRef.lock();
            try {
                NdType ndType = this.typeRef.get();
                if (ndType != null) {
                    return ndType.getSourceName();
                }
                char[] cArr = new char[0];
                if (lock != null) {
                    lock.close();
                }
                return cArr;
            } finally {
                if (lock != null) {
                    lock.close();
                }
            }
        } catch (Throwable th3) {
            if (0 == 0) {
                throw th3;
            }
            if (null == th3) {
                throw null;
            }
            th2.addSuppressed(th3);
            throw null;
        }
    }

    @Override
    public char[] getSuperclassName() {
        initSimpleAttributes();
        return this.superclassName;
    }

    @Override
    public long getTagBits() {
        initSimpleAttributes();
        return this.tagBits;
    }

    @Override
    public IBinaryTypeAnnotation[] getTypeAnnotations() {
        Throwable th2 = null;
        try {
            IReader lock = this.typeRef.lock();
            try {
                NdType ndType = this.typeRef.get();
                if (ndType == null) {
                    if (lock != null) {
                        lock.close();
                    }
                    return null;
                }
                IBinaryTypeAnnotation[] createBinaryTypeAnnotations = createBinaryTypeAnnotations(ndType.getTypeAnnotations());
                if (lock != null) {
                    lock.close();
                }
                return createBinaryTypeAnnotations;
            } catch (Throwable th3) {
                if (lock != null) {
                    lock.close();
                }
                throw th3;
            }
        } catch (Throwable th4) {
            if (0 == 0) {
                throw th4;
            }
            if (null == th4) {
                throw null;
            }
            th2.addSuppressed(th4);
            throw null;
        }
    }

    public void initSimpleAttributes() {
        if (this.simpleAttributesInitialized) {
            return;
        }
        this.simpleAttributesInitialized = true;
        Throwable th2 = null;
        try {
            IReader lock = this.typeRef.lock();
            try {
                NdType ndType = this.typeRef.get();
                if (ndType != null) {
                    IString declaringMethod = ndType.getDeclaringMethod();
                    if (declaringMethod.length() != 0) {
                        this.enclosingMethod = declaringMethod.getChars();
                        this.enclosingType = ndType.getDeclaringType().getBinaryName();
                    } else {
                        NdTypeId declaringType = ndType.getDeclaringType();
                        if (declaringType != null) {
                            this.enclosingType = declaringType.getBinaryName();
                        }
                    }
                    this.modifiers = ndType.getModifiers();
                    this.isAnonymous = ndType.isAnonymous();
                    this.isLocal = ndType.isLocal();
                    this.isMember = ndType.isMember();
                    this.tagBits = ndType.getTagBits();
                    NdTypeSignature superclass = ndType.getSuperclass();
                    if (superclass != null) {
                        this.superclassName = superclass.getRawType().getBinaryName();
                    } else {
                        this.superclassName = null;
                    }
                    this.binaryTypeName = JavaNames.fieldDescriptorToBinaryName(ndType.getFieldDescriptor().getChars());
                } else {
                    this.binaryTypeName = JavaNames.fieldDescriptorToBinaryName(this.typeRef.getFieldDescriptor());
                }
                if (lock != null) {
                    lock.close();
                }
            } catch (Throwable th3) {
                if (lock != null) {
                    lock.close();
                }
                throw th3;
            }
        } catch (Throwable th4) {
            if (0 == 0) {
                throw th4;
            }
            if (null == th4) {
                throw null;
            }
            th2.addSuppressed(th4);
        }
    }

    @Override
    public boolean isAnonymous() {
        initSimpleAttributes();
        return this.isAnonymous;
    }

    @Override
    public boolean isBinaryType() {
        return true;
    }

    @Override
    public boolean isLocal() {
        initSimpleAttributes();
        return this.isLocal;
    }

    @Override
    public boolean isMember() {
        initSimpleAttributes();
        return this.isMember;
    }

    @Override
    public char[] sourceFileName() {
        Throwable th2 = null;
        try {
            IReader lock = this.typeRef.lock();
            try {
                NdType ndType = this.typeRef.get();
                if (ndType == null) {
                    if (lock != null) {
                        lock.close();
                    }
                    return null;
                }
                char[] chars = ndType.getSourceFileName().getChars();
                if (chars.length == 0) {
                    if (lock != null) {
                        lock.close();
                    }
                    return null;
                }
                if (lock != null) {
                    lock.close();
                }
                return chars;
            } catch (Throwable th3) {
                if (lock != null) {
                    lock.close();
                }
                throw th3;
            }
        } catch (Throwable th4) {
            if (0 == 0) {
                throw th4;
            }
            if (null == th4) {
                throw null;
            }
            th2.addSuppressed(th4);
            throw null;
        }
    }
}
