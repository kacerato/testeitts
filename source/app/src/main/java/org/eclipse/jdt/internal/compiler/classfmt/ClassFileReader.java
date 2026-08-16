package org.eclipse.jdt.internal.compiler.classfmt;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.function.Predicate;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.codegen.AttributeNamesConstants;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryElementValuePair;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryModule;
import org.eclipse.jdt.internal.compiler.env.IBinaryNestedType;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.ITypeAnnotationWalker;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;
import org.eclipse.jdt.internal.compiler.util.Util;

public class ClassFileReader extends ClassFileStruct implements IBinaryType {
    private int accessFlags;
    private AnnotationInfo[] annotations;
    private char[] classFileName;
    private char[] className;
    private int classNameIndex;
    private int constantPoolCount;
    private char[] enclosingMethod;
    private int enclosingNameAndTypeIndex;
    private char[] enclosingTypeName;
    private FieldInfo[] fields;
    private int fieldsCount;
    private InnerClassInfo innerInfo;
    private int innerInfoIndex;
    private InnerClassInfo[] innerInfos;
    private char[][] interfaceNames;
    private int interfacesCount;
    private MethodInfo[] methods;
    private int methodsCount;
    private char[][][] missingTypeNames;
    private ModuleInfo moduleDeclaration;
    public char[] moduleName;
    private char[] nestHost;
    private char[][] nestMembers;
    private int nestMembersCount;
    private char[] signature;
    private char[] sourceFileName;
    private char[] sourceName;
    private char[] superclassName;
    private long tagBits;
    private TypeAnnotationInfo[] typeAnnotations;
    private long version;

    public ClassFileReader(byte[] bArr, char[] cArr) throws ClassFormatException {
        this(bArr, cArr, false);
    }

    private boolean affectsSignature(IBinaryTypeAnnotation iBinaryTypeAnnotation) {
        if (iBinaryTypeAnnotation == null) {
            return false;
        }
        int targetType = iBinaryTypeAnnotation.getTargetType();
        return targetType < 64 || targetType > 75;
    }

    private void decodeAnnotations(int i10, boolean z10) {
        int u2At = u2At(i10 + 6);
        if (u2At > 0) {
            int i11 = i10 + 8;
            AnnotationInfo[] annotationInfoArr = null;
            int i12 = 0;
            for (int i13 = 0; i13 < u2At; i13++) {
                AnnotationInfo annotationInfo = new AnnotationInfo(this.reference, this.constantPoolOffsets, i11, z10, false);
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
            if (annotationInfoArr == null) {
                return;
            }
            AnnotationInfo[] annotationInfoArr2 = this.annotations;
            if (annotationInfoArr2 == null) {
                if (i12 != annotationInfoArr.length) {
                    AnnotationInfo[] annotationInfoArr3 = new AnnotationInfo[i12];
                    System.arraycopy(annotationInfoArr, 0, annotationInfoArr3, 0, i12);
                    annotationInfoArr = annotationInfoArr3;
                }
                this.annotations = annotationInfoArr;
                return;
            }
            int length = annotationInfoArr2.length;
            AnnotationInfo[] annotationInfoArr4 = new AnnotationInfo[length + i12];
            System.arraycopy(annotationInfoArr2, 0, annotationInfoArr4, 0, length);
            System.arraycopy(annotationInfoArr, 0, annotationInfoArr4, length, i12);
            this.annotations = annotationInfoArr4;
        }
    }

    private void decodeTypeAnnotations(int i10, boolean z10) {
        int u2At = u2At(i10 + 6);
        if (u2At > 0) {
            int i11 = i10 + 8;
            TypeAnnotationInfo[] typeAnnotationInfoArr = new TypeAnnotationInfo[u2At];
            for (int i12 = 0; i12 < u2At; i12++) {
                TypeAnnotationInfo typeAnnotationInfo = new TypeAnnotationInfo(this.reference, this.constantPoolOffsets, i11, z10, false);
                i11 += typeAnnotationInfo.readOffset;
                typeAnnotationInfoArr[i12] = typeAnnotationInfo;
            }
            TypeAnnotationInfo[] typeAnnotationInfoArr2 = this.typeAnnotations;
            if (typeAnnotationInfoArr2 == null) {
                this.typeAnnotations = typeAnnotationInfoArr;
                return;
            }
            int length = typeAnnotationInfoArr2.length;
            TypeAnnotationInfo[] typeAnnotationInfoArr3 = new TypeAnnotationInfo[length + u2At];
            System.arraycopy(typeAnnotationInfoArr2, 0, typeAnnotationInfoArr3, 0, length);
            System.arraycopy(typeAnnotationInfoArr, 0, typeAnnotationInfoArr3, length, u2At);
            this.typeAnnotations = typeAnnotationInfoArr3;
        }
    }

    private char[] getConstantClassNameAt(int i10) {
        int[] iArr = this.constantPoolOffsets;
        int i11 = iArr[u2At(iArr[i10] + 1)];
        return utf8At(i11 + 3, u2At(i11 + 1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0021, code lost:
    
        if (r10[r4].isSynthetic() != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0035, code lost:
    
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0037, code lost:
    
        if (r4 < r2) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0023, code lost:
    
        r6 = r3 + 1;
        r7 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x002f, code lost:
    
        if (hasStructuralFieldChanges(r9[r3], r10[r4]) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0032, code lost:
    
        r3 = r6;
        r4 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0031, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean hasNonSyntheticFieldChanges(FieldInfo[] fieldInfoArr, FieldInfo[] fieldInfoArr2) {
        int length = fieldInfoArr == null ? 0 : fieldInfoArr.length;
        int length2 = fieldInfoArr2 == null ? 0 : fieldInfoArr2.length;
        int i10 = 0;
        int i11 = 0;
        loop0: while (i10 < length && i11 < length2) {
            while (true) {
                if (!fieldInfoArr[i10].isSynthetic()) {
                    break;
                }
                i10++;
                if (i10 >= length) {
                    break loop0;
                }
            }
        }
        while (i10 < length) {
            int i12 = i10 + 1;
            if (!fieldInfoArr[i10].isSynthetic()) {
                return true;
            }
            i10 = i12;
        }
        while (i11 < length2) {
            int i13 = i11 + 1;
            if (!fieldInfoArr2[i11].isSynthetic()) {
                return true;
            }
            i11 = i13;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0021, code lost:
    
        r6 = r10[r4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0027, code lost:
    
        if (r6.isSynthetic() != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002d, code lost:
    
        if (r6.isClinit() != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002f, code lost:
    
        r6 = r3 + 1;
        r7 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003b, code lost:
    
        if (hasStructuralMethodChanges(r9[r3], r10[r4]) == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003e, code lost:
    
        r3 = r6;
        r4 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003d, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0041, code lost:
    
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0043, code lost:
    
        if (r4 < r2) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean hasNonSyntheticMethodChanges(MethodInfo[] methodInfoArr, MethodInfo[] methodInfoArr2) {
        int length = methodInfoArr == null ? 0 : methodInfoArr.length;
        int length2 = methodInfoArr2 == null ? 0 : methodInfoArr2.length;
        int i10 = 0;
        int i11 = 0;
        loop0: while (i10 < length && i11 < length2) {
            while (true) {
                MethodInfo methodInfo = methodInfoArr[i10];
                if (!methodInfo.isSynthetic() && !methodInfo.isClinit()) {
                    break;
                }
                i10++;
                if (i10 >= length) {
                    break loop0;
                }
            }
        }
        while (i10 < length) {
            int i12 = i10 + 1;
            MethodInfo methodInfo2 = methodInfoArr[i10];
            if (!methodInfo2.isSynthetic() && !methodInfo2.isClinit()) {
                return true;
            }
            i10 = i12;
        }
        while (i11 < length2) {
            int i13 = i11 + 1;
            MethodInfo methodInfo3 = methodInfoArr2[i11];
            if (!methodInfo3.isSynthetic() && !methodInfo3.isClinit()) {
                return true;
            }
            i11 = i13;
        }
        return false;
    }

    private boolean hasStructuralAnnotationChanges(IBinaryAnnotation[] iBinaryAnnotationArr, IBinaryAnnotation[] iBinaryAnnotationArr2) {
        if (iBinaryAnnotationArr == iBinaryAnnotationArr2) {
            return false;
        }
        int length = iBinaryAnnotationArr == null ? 0 : iBinaryAnnotationArr.length;
        if (length != (iBinaryAnnotationArr2 == null ? 0 : iBinaryAnnotationArr2.length)) {
            return true;
        }
        for (int i10 = 0; i10 < length; i10++) {
            Boolean matchAnnotations = matchAnnotations(iBinaryAnnotationArr[i10], iBinaryAnnotationArr2[i10]);
            if (matchAnnotations != null) {
                return matchAnnotations.booleanValue();
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private boolean hasStructuralFieldChanges(FieldInfo fieldInfo, FieldInfo fieldInfo2) {
        if (!CharOperation.equals(fieldInfo.getGenericSignature(), fieldInfo2.getGenericSignature()) || fieldInfo.getModifiers() != fieldInfo2.getModifiers() || (fieldInfo.getTagBits() & 70368744177664L) != (70368744177664L & fieldInfo2.getTagBits()) || hasStructuralAnnotationChanges(fieldInfo.getAnnotations(), fieldInfo2.getAnnotations())) {
            return true;
        }
        if ((this.version >= ClassFileConstants.JDK1_8 && hasStructuralTypeAnnotationChanges(fieldInfo.getTypeAnnotations(), fieldInfo2.getTypeAnnotations())) || !CharOperation.equals(fieldInfo.getName(), fieldInfo2.getName()) || !CharOperation.equals(fieldInfo.getTypeName(), fieldInfo2.getTypeName()) || fieldInfo.hasConstant() != fieldInfo2.hasConstant()) {
            return true;
        }
        if (fieldInfo.hasConstant()) {
            Constant constant = fieldInfo.getConstant();
            Constant constant2 = fieldInfo2.getConstant();
            if (constant.typeID() != constant2.typeID() || !constant.getClass().equals(constant2.getClass())) {
                return true;
            }
            switch (constant.typeID()) {
                case 2:
                    if (constant.charValue() != constant2.charValue()) {
                        return true;
                    }
                    break;
                case 3:
                    return constant.byteValue() != constant2.byteValue();
                case 4:
                    return constant.shortValue() != constant2.shortValue();
                case 5:
                    return constant.booleanValue() ^ constant2.booleanValue();
                case 7:
                    return constant.longValue() != constant2.longValue();
                case 8:
                    return constant.doubleValue() != constant2.doubleValue();
                case 9:
                    return constant.floatValue() != constant2.floatValue();
                case 10:
                    return constant.intValue() != constant2.intValue();
                case 11:
                    return !constant.stringValue().equals(constant2.stringValue());
            }
        }
        return false;
    }

    private boolean hasStructuralMethodChanges(MethodInfo methodInfo, MethodInfo methodInfo2) {
        int annotatedParametersCount;
        if (!CharOperation.equals(methodInfo.getGenericSignature(), methodInfo2.getGenericSignature()) || methodInfo.getModifiers() != methodInfo2.getModifiers() || (methodInfo.getTagBits() & 70368744177664L) != (70368744177664L & methodInfo2.getTagBits()) || hasStructuralAnnotationChanges(methodInfo.getAnnotations(), methodInfo2.getAnnotations()) || (annotatedParametersCount = methodInfo.getAnnotatedParametersCount()) != methodInfo2.getAnnotatedParametersCount()) {
            return true;
        }
        for (int i10 = 0; i10 < annotatedParametersCount; i10++) {
            if (hasStructuralAnnotationChanges(methodInfo.getParameterAnnotations(i10, this.classFileName), methodInfo2.getParameterAnnotations(i10, this.classFileName))) {
                return true;
            }
        }
        if ((this.version >= ClassFileConstants.JDK1_8 && hasStructuralTypeAnnotationChanges(methodInfo.getTypeAnnotations(), methodInfo2.getTypeAnnotations())) || !CharOperation.equals(methodInfo.getSelector(), methodInfo2.getSelector()) || !CharOperation.equals(methodInfo.getMethodDescriptor(), methodInfo2.getMethodDescriptor()) || !CharOperation.equals(methodInfo.getGenericSignature(), methodInfo2.getGenericSignature())) {
            return true;
        }
        char[][] exceptionTypeNames = methodInfo.getExceptionTypeNames();
        char[][] exceptionTypeNames2 = methodInfo2.getExceptionTypeNames();
        if (exceptionTypeNames != exceptionTypeNames2) {
            int length = exceptionTypeNames == null ? 0 : exceptionTypeNames.length;
            if (length != (exceptionTypeNames2 == null ? 0 : exceptionTypeNames2.length)) {
                return true;
            }
            for (int i11 = 0; i11 < length; i11++) {
                if (!CharOperation.equals(exceptionTypeNames[i11], exceptionTypeNames2[i11])) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean hasStructuralTypeAnnotationChanges(IBinaryTypeAnnotation[] iBinaryTypeAnnotationArr, IBinaryTypeAnnotation[] iBinaryTypeAnnotationArr2) {
        if (iBinaryTypeAnnotationArr2 != null) {
            int length = iBinaryTypeAnnotationArr2.length;
            IBinaryTypeAnnotation[] iBinaryTypeAnnotationArr3 = new IBinaryTypeAnnotation[length];
            System.arraycopy(iBinaryTypeAnnotationArr2, 0, iBinaryTypeAnnotationArr3, 0, length);
            iBinaryTypeAnnotationArr2 = iBinaryTypeAnnotationArr3;
        }
        if (iBinaryTypeAnnotationArr != null) {
            for (IBinaryTypeAnnotation iBinaryTypeAnnotation : iBinaryTypeAnnotationArr) {
                if (affectsSignature(iBinaryTypeAnnotation)) {
                    if (iBinaryTypeAnnotationArr2 == null) {
                        return true;
                    }
                    for (int i10 = 0; i10 < iBinaryTypeAnnotationArr2.length; i10++) {
                        IBinaryTypeAnnotation iBinaryTypeAnnotation2 = iBinaryTypeAnnotationArr2[i10];
                        if (iBinaryTypeAnnotation2 != null && matchAnnotations(iBinaryTypeAnnotation.getAnnotation(), iBinaryTypeAnnotation2.getAnnotation()) == Boolean.TRUE) {
                            iBinaryTypeAnnotationArr2[i10] = null;
                        }
                    }
                    return true;
                }
            }
        }
        if (iBinaryTypeAnnotationArr2 != null) {
            for (IBinaryTypeAnnotation iBinaryTypeAnnotation3 : iBinaryTypeAnnotationArr2) {
                if (affectsSignature(iBinaryTypeAnnotation3)) {
                    return true;
                }
            }
        }
        return false;
    }

    private void initialize() throws ClassFormatException {
        try {
            int i10 = this.fieldsCount;
            for (int i11 = 0; i11 < i10; i11++) {
                this.fields[i11].initialize();
            }
            int i12 = this.methodsCount;
            for (int i13 = 0; i13 < i12; i13++) {
                this.methods[i13].initialize();
            }
            InnerClassInfo[] innerClassInfoArr = this.innerInfos;
            if (innerClassInfoArr != null) {
                int length = innerClassInfoArr.length;
                for (int i14 = 0; i14 < length; i14++) {
                    this.innerInfos[i14].initialize();
                }
            }
            AnnotationInfo[] annotationInfoArr = this.annotations;
            if (annotationInfoArr != null) {
                int length2 = annotationInfoArr.length;
                for (int i15 = 0; i15 < length2; i15++) {
                    this.annotations[i15].initialize();
                }
            }
            getEnclosingMethod();
            reset();
        } catch (RuntimeException e10) {
            throw new ClassFormatException(e10, this.classFileName);
        }
    }

    private Boolean matchAnnotations(IBinaryAnnotation iBinaryAnnotation, IBinaryAnnotation iBinaryAnnotation2) {
        if (!CharOperation.equals(iBinaryAnnotation.getTypeName(), iBinaryAnnotation2.getTypeName())) {
            return Boolean.TRUE;
        }
        IBinaryElementValuePair[] elementValuePairs = iBinaryAnnotation.getElementValuePairs();
        IBinaryElementValuePair[] elementValuePairs2 = iBinaryAnnotation2.getElementValuePairs();
        int length = elementValuePairs == null ? 0 : elementValuePairs.length;
        if (length != (elementValuePairs2 == null ? 0 : elementValuePairs2.length)) {
            return Boolean.TRUE;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (!CharOperation.equals(elementValuePairs[i10].getName(), elementValuePairs2[i10].getName())) {
                return Boolean.TRUE;
            }
            Object value = elementValuePairs[i10].getValue();
            Object value2 = elementValuePairs2[i10].getValue();
            if (value instanceof Object[]) {
                Object[] objArr = (Object[]) value;
                if (!(value2 instanceof Object[])) {
                    return Boolean.TRUE;
                }
                Object[] objArr2 = (Object[]) value2;
                int length2 = objArr.length;
                if (length2 != objArr2.length) {
                    return Boolean.TRUE;
                }
                for (int i11 = 0; i11 < length2; i11++) {
                    if (!objArr[i11].equals(objArr2[i11])) {
                        return Boolean.TRUE;
                    }
                }
                return Boolean.FALSE;
            }
            if (!value.equals(value2)) {
                return Boolean.TRUE;
            }
        }
        return null;
    }

    private static String printTypeModifiers(int i10) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintWriter printWriter = new PrintWriter(byteArrayOutputStream);
        if ((i10 & 1) != 0) {
            printWriter.print("public ");
        }
        if ((i10 & 2) != 0) {
            printWriter.print("private ");
        }
        if ((i10 & 16) != 0) {
            printWriter.print("final ");
        }
        if ((i10 & 32) != 0) {
            printWriter.print(ExternalAnnotationProvider.SUPER_PREFIX);
        }
        if ((i10 & 512) != 0) {
            printWriter.print("interface ");
        }
        if ((i10 & 1024) != 0) {
            printWriter.print("abstract ");
        }
        printWriter.flush();
        return byteArrayOutputStream.toString();
    }

    public static ClassFileReader read(File file) throws ClassFormatException, IOException {
        return read(file, false);
    }

    public static ClassFileReader readFromJrt(File file, IModule iModule, String str) throws ClassFormatException, IOException {
        return JRTUtil.getClassfile(file, str, iModule);
    }

    public static ClassFileReader readFromModule(File file, String str, String str2, Predicate<String> predicate) throws ClassFormatException, IOException {
        return JRTUtil.getClassfile(file, str2, str, predicate);
    }

    public int accessFlags() {
        return this.accessFlags;
    }

    @Override
    public ITypeAnnotationWalker enrichWithExternalAnnotationsFor(ITypeAnnotationWalker iTypeAnnotationWalker, Object obj, LookupEnvironment lookupEnvironment) {
        return iTypeAnnotationWalker;
    }

    @Override
    public IBinaryAnnotation[] getAnnotations() {
        return this.annotations;
    }

    public int[] getConstantPoolOffsets() {
        return this.constantPoolOffsets;
    }

    @Override
    public char[] getEnclosingMethod() {
        if (this.enclosingNameAndTypeIndex <= 0) {
            return null;
        }
        if (this.enclosingMethod == null) {
            StringBuffer stringBuffer = new StringBuffer();
            int[] iArr = this.constantPoolOffsets;
            int i10 = iArr[this.enclosingNameAndTypeIndex];
            int i11 = iArr[u2At(i10 + 1)];
            stringBuffer.append(utf8At(i11 + 3, u2At(i11 + 1)));
            int i12 = this.constantPoolOffsets[u2At(i10 + 3)];
            stringBuffer.append(utf8At(i12 + 3, u2At(i12 + 1)));
            this.enclosingMethod = String.valueOf(stringBuffer).toCharArray();
        }
        return this.enclosingMethod;
    }

    @Override
    public char[] getEnclosingTypeName() {
        return this.enclosingTypeName;
    }

    @Override
    public BinaryTypeBinding.ExternalAnnotationStatus getExternalAnnotationStatus() {
        return BinaryTypeBinding.ExternalAnnotationStatus.NOT_EEA_CONFIGURED;
    }

    @Override
    public IBinaryField[] getFields() {
        return this.fields;
    }

    @Override
    public char[] getFileName() {
        return this.classFileName;
    }

    @Override
    public char[] getGenericSignature() {
        return this.signature;
    }

    public char[] getInnerSourceName() {
        InnerClassInfo innerClassInfo = this.innerInfo;
        if (innerClassInfo != null) {
            return innerClassInfo.getSourceName();
        }
        return null;
    }

    @Override
    public char[][] getInterfaceNames() {
        return this.interfaceNames;
    }

    @Override
    public IBinaryNestedType[] getMemberTypes() {
        InnerClassInfo[] innerClassInfoArr = this.innerInfos;
        if (innerClassInfoArr == null) {
            return null;
        }
        int length = innerClassInfoArr.length;
        int i10 = this.innerInfo != null ? this.innerInfoIndex + 1 : 0;
        if (length == i10) {
            return null;
        }
        int i11 = length - this.innerInfoIndex;
        IBinaryNestedType[] iBinaryNestedTypeArr = new IBinaryNestedType[i11];
        int i12 = 0;
        while (i10 < length) {
            InnerClassInfo innerClassInfo = this.innerInfos[i10];
            int i13 = innerClassInfo.outerClassNameIndex;
            int i14 = innerClassInfo.innerNameIndex;
            if (i13 != 0 && i14 != 0 && i13 == this.classNameIndex && innerClassInfo.getSourceName().length != 0) {
                iBinaryNestedTypeArr[i12] = innerClassInfo;
                i12++;
            }
            i10++;
        }
        if (i12 == 0) {
            return null;
        }
        if (i12 == i11) {
            return iBinaryNestedTypeArr;
        }
        IBinaryNestedType[] iBinaryNestedTypeArr2 = new IBinaryNestedType[i12];
        System.arraycopy(iBinaryNestedTypeArr, 0, iBinaryNestedTypeArr2, 0, i12);
        return iBinaryNestedTypeArr2;
    }

    @Override
    public IBinaryMethod[] getMethods() {
        return this.methods;
    }

    @Override
    public char[][][] getMissingTypeNames() {
        return this.missingTypeNames;
    }

    @Override
    public int getModifiers() {
        InnerClassInfo innerClassInfo = this.innerInfo;
        if (innerClassInfo == null) {
            return this.accessFlags;
        }
        int modifiers = innerClassInfo.getModifiers();
        int i10 = this.accessFlags;
        return modifiers | (1048576 & i10) | (i10 & 4096);
    }

    @Override
    public char[] getModule() {
        return this.moduleName;
    }

    public IBinaryModule getModuleDeclaration() {
        return this.moduleDeclaration;
    }

    @Override
    public char[] getName() {
        return this.className;
    }

    public char[] getNestHost() {
        return this.nestHost;
    }

    @Override
    public char[] getSourceName() {
        char[] cArr = this.sourceName;
        if (cArr != null) {
            return cArr;
        }
        char[] innerSourceName = getInnerSourceName();
        if (innerSourceName == null) {
            innerSourceName = getName();
            int indexOf = (isAnonymous() ? CharOperation.indexOf('$', innerSourceName, CharOperation.lastIndexOf('/', innerSourceName) + 1) : CharOperation.lastIndexOf('/', innerSourceName)) + 1;
            if (indexOf > 0) {
                int length = innerSourceName.length - indexOf;
                char[] cArr2 = new char[length];
                System.arraycopy(innerSourceName, indexOf, cArr2, 0, length);
                innerSourceName = cArr2;
            }
        }
        this.sourceName = innerSourceName;
        return innerSourceName;
    }

    @Override
    public char[] getSuperclassName() {
        return this.superclassName;
    }

    @Override
    public long getTagBits() {
        return this.tagBits;
    }

    @Override
    public IBinaryTypeAnnotation[] getTypeAnnotations() {
        return this.typeAnnotations;
    }

    public long getVersion() {
        return this.version;
    }

    public boolean hasStructuralChanges(byte[] bArr) {
        return hasStructuralChanges(bArr, true, true);
    }

    @Override
    public boolean isAnonymous() {
        InnerClassInfo innerClassInfo = this.innerInfo;
        if (innerClassInfo == null) {
            return false;
        }
        char[] sourceName = innerClassInfo.getSourceName();
        return sourceName == null || sourceName.length == 0;
    }

    @Override
    public boolean isBinaryType() {
        return true;
    }

    @Override
    public boolean isLocal() {
        char[] sourceName;
        InnerClassInfo innerClassInfo = this.innerInfo;
        return innerClassInfo != null && innerClassInfo.getEnclosingTypeName() == null && (sourceName = this.innerInfo.getSourceName()) != null && sourceName.length > 0;
    }

    @Override
    public boolean isMember() {
        char[] sourceName;
        InnerClassInfo innerClassInfo = this.innerInfo;
        return (innerClassInfo == null || innerClassInfo.getEnclosingTypeName() == null || (sourceName = this.innerInfo.getSourceName()) == null || sourceName.length <= 0) ? false : true;
    }

    public boolean isNestedType() {
        return this.innerInfo != null;
    }

    @Override
    public char[] sourceFileName() {
        return this.sourceFileName;
    }

    public String toString() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintWriter printWriter = new PrintWriter(byteArrayOutputStream);
        printWriter.println(getClass().getName() + "{");
        printWriter.println(" this.className: " + new String(getName()));
        StringBuilder sb2 = new StringBuilder(" this.superclassName: ");
        sb2.append(getSuperclassName() == null ? "null" : new String(getSuperclassName()));
        printWriter.println(sb2.toString());
        if (this.moduleName != null) {
            printWriter.println(" this.moduleName: " + new String(this.moduleName));
        }
        printWriter.println(" access_flags: " + printTypeModifiers(accessFlags()) + "(" + accessFlags() + ")");
        printWriter.flush();
        return byteArrayOutputStream.toString();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x036c. Please report as an issue. */
    public ClassFileReader(byte[] bArr, char[] cArr, boolean z10) throws ClassFormatException {
        super(bArr, null, 0);
        AnnotationInfo[] annotationInfoArr;
        char[] enclosingTypeName;
        MethodInfo createMethod;
        AnnotationInfo[] annotationInfoArr2 = null;
        this.classFileName = cArr;
        int i10 = 10;
        try {
            try {
                this.version = (u2At(6) << 16) + u2At(4);
                int u2At = u2At(8);
                this.constantPoolCount = u2At;
                this.constantPoolOffsets = new int[u2At];
                int i11 = 1;
                while (i11 < this.constantPoolCount) {
                    switch (u1At(i10)) {
                        case 1:
                            this.constantPoolOffsets[i11] = i10;
                            i10 += u2At(i10 + 1);
                            i10 += 3;
                            break;
                        case 3:
                            this.constantPoolOffsets[i11] = i10;
                            i10 += 5;
                            break;
                        case 4:
                            this.constantPoolOffsets[i11] = i10;
                            i10 += 5;
                            break;
                        case 5:
                            this.constantPoolOffsets[i11] = i10;
                            i10 += 9;
                            i11++;
                            break;
                        case 6:
                            this.constantPoolOffsets[i11] = i10;
                            i10 += 9;
                            i11++;
                            break;
                        case 7:
                            this.constantPoolOffsets[i11] = i10;
                            i10 += 3;
                            break;
                        case 8:
                            this.constantPoolOffsets[i11] = i10;
                            i10 += 3;
                            break;
                        case 9:
                            this.constantPoolOffsets[i11] = i10;
                            i10 += 5;
                            break;
                        case 10:
                            this.constantPoolOffsets[i11] = i10;
                            i10 += 5;
                            break;
                        case 11:
                            this.constantPoolOffsets[i11] = i10;
                            i10 += 5;
                            break;
                        case 12:
                            this.constantPoolOffsets[i11] = i10;
                            i10 += 5;
                            break;
                        case 15:
                            this.constantPoolOffsets[i11] = i10;
                            i10 += 4;
                            break;
                        case 16:
                            this.constantPoolOffsets[i11] = i10;
                            i10 += 3;
                            break;
                        case 17:
                            this.constantPoolOffsets[i11] = i10;
                            i10 += 5;
                            break;
                        case 18:
                            this.constantPoolOffsets[i11] = i10;
                            i10 += 5;
                            break;
                        case 19:
                            this.constantPoolOffsets[i11] = i10;
                            i10 += 3;
                            break;
                        case 20:
                            this.constantPoolOffsets[i11] = i10;
                            i10 += 3;
                            break;
                    }
                    i11++;
                    annotationInfoArr2 = null;
                }
                this.accessFlags = u2At(i10);
                int i12 = i10 + 2;
                try {
                    int u2At2 = u2At(i12);
                    this.classNameIndex = u2At2;
                    if (u2At2 != 0) {
                        this.className = getConstantClassNameAt(u2At2);
                    }
                    int u2At3 = u2At(i10 + 4);
                    int i13 = i10 + 6;
                    if (u2At3 != 0) {
                        try {
                            this.superclassName = getConstantClassNameAt(u2At3);
                        } catch (Exception e10) {
                            e = e10;
                            i10 = i13;
                            throw new ClassFormatException(e, this.classFileName, 21, i10);
                        }
                    }
                    int u2At4 = u2At(i13);
                    this.interfacesCount = u2At4;
                    int i14 = i10 + 8;
                    if (u2At4 != 0) {
                        this.interfaceNames = new char[u2At4];
                        for (int i15 = 0; i15 < this.interfacesCount; i15++) {
                            this.interfaceNames[i15] = getConstantClassNameAt(u2At(i14));
                            i14 += 2;
                        }
                    }
                    int u2At5 = u2At(i14);
                    this.fieldsCount = u2At5;
                    int i16 = i14 + 2;
                    if (u2At5 != 0) {
                        this.fields = new FieldInfo[u2At5];
                        for (int i17 = 0; i17 < this.fieldsCount; i17++) {
                            FieldInfo createField = FieldInfo.createField(this.reference, this.constantPoolOffsets, i16, this.version);
                            this.fields[i17] = createField;
                            i16 += createField.sizeInBytes();
                        }
                    }
                    int u2At6 = u2At(i16);
                    this.methodsCount = u2At6;
                    int i18 = i16 + 2;
                    if (u2At6 != 0) {
                        this.methods = new MethodInfo[u2At6];
                        boolean z11 = (this.accessFlags & 8192) != 0;
                        for (int i19 = 0; i19 < this.methodsCount; i19++) {
                            MethodInfo[] methodInfoArr = this.methods;
                            if (z11) {
                                createMethod = AnnotationMethodInfo.createAnnotationMethod(this.reference, this.constantPoolOffsets, i18, this.version);
                            } else {
                                createMethod = MethodInfo.createMethod(this.reference, this.constantPoolOffsets, i18, this.version);
                            }
                            methodInfoArr[i19] = createMethod;
                            i18 += this.methods[i19].sizeInBytes();
                        }
                    }
                    int u2At7 = u2At(i18);
                    i10 = i18 + 2;
                    int i20 = 0;
                    while (i20 < u2At7) {
                        int i21 = this.constantPoolOffsets[u2At(i10)];
                        char[] utf8At = utf8At(i21 + 3, u2At(i21 + 1));
                        if (utf8At.length == 0) {
                            i10 = (int) (i10 + u4At(i10 + 2) + 6);
                        } else {
                            char c10 = utf8At[0];
                            if (c10 != 'D') {
                                if (c10 != 'E') {
                                    if (c10 != 'I') {
                                        if (c10 != 'M') {
                                            if (c10 != 'N') {
                                                if (c10 != 'R') {
                                                    if (c10 == 'S' && utf8At.length > 2) {
                                                        char c11 = utf8At[1];
                                                        if (c11 != 'i') {
                                                            if (c11 != 'o') {
                                                                if (c11 == 'y' && CharOperation.equals(utf8At, AttributeNamesConstants.SyntheticName)) {
                                                                    this.accessFlags |= 4096;
                                                                }
                                                            } else if (CharOperation.equals(utf8At, AttributeNamesConstants.SourceName)) {
                                                                int i22 = this.constantPoolOffsets[u2At(i10 + 6)];
                                                                this.sourceFileName = utf8At(i22 + 3, u2At(i22 + 1));
                                                            }
                                                        } else if (CharOperation.equals(utf8At, AttributeNamesConstants.SignatureName)) {
                                                            int i23 = this.constantPoolOffsets[u2At(i10 + 6)];
                                                            this.signature = utf8At(i23 + 3, u2At(i23 + 1));
                                                        }
                                                    }
                                                } else if (CharOperation.equals(utf8At, AttributeNamesConstants.RuntimeVisibleAnnotationsName)) {
                                                    decodeAnnotations(i10, true);
                                                } else if (CharOperation.equals(utf8At, AttributeNamesConstants.RuntimeInvisibleAnnotationsName)) {
                                                    decodeAnnotations(i10, false);
                                                } else if (CharOperation.equals(utf8At, AttributeNamesConstants.RuntimeVisibleTypeAnnotationsName)) {
                                                    decodeTypeAnnotations(i10, true);
                                                } else if (CharOperation.equals(utf8At, AttributeNamesConstants.RuntimeInvisibleTypeAnnotationsName)) {
                                                    decodeTypeAnnotations(i10, false);
                                                }
                                            } else if (CharOperation.equals(utf8At, AttributeNamesConstants.NestHost)) {
                                                int[] iArr = this.constantPoolOffsets;
                                                int i24 = iArr[u2At(iArr[u2At(i10 + 6)] + 1)];
                                                this.nestHost = utf8At(i24 + 3, u2At(i24 + 1));
                                            } else if (CharOperation.equals(utf8At, AttributeNamesConstants.NestMembers)) {
                                                int u2At8 = u2At(i10 + 6);
                                                this.nestMembersCount = u2At8;
                                                if (u2At8 != 0) {
                                                    int i25 = i10 + 8;
                                                    this.nestMembers = new char[u2At8];
                                                    for (int i26 = 0; i26 < this.nestMembersCount; i26++) {
                                                        int[] iArr2 = this.constantPoolOffsets;
                                                        int i27 = iArr2[u2At(iArr2[u2At(i25)] + 1)];
                                                        this.nestMembers[i26] = utf8At(i27 + 3, u2At(i27 + 1));
                                                        i25 += 2;
                                                    }
                                                }
                                            }
                                        } else if (CharOperation.equals(utf8At, AttributeNamesConstants.MissingTypesName)) {
                                            int u2At9 = u2At(i10 + 6);
                                            if (u2At9 != 0) {
                                                this.missingTypeNames = new char[u2At9][];
                                                int i28 = i10 + 8;
                                                for (int i29 = 0; i29 < u2At9; i29++) {
                                                    int[] iArr3 = this.constantPoolOffsets;
                                                    int i30 = iArr3[u2At(iArr3[u2At(i28)] + 1)];
                                                    this.missingTypeNames[i29] = CharOperation.splitOn('/', utf8At(i30 + 3, u2At(i30 + 1)));
                                                    i28 += 2;
                                                }
                                            }
                                        } else if (CharOperation.equals(utf8At, AttributeNamesConstants.ModuleName)) {
                                            ModuleInfo createModule = ModuleInfo.createModule(this.reference, this.constantPoolOffsets, i10);
                                            this.moduleDeclaration = createModule;
                                            this.moduleName = createModule.name();
                                        }
                                    } else if (CharOperation.equals(utf8At, AttributeNamesConstants.InnerClassName)) {
                                        int u2At10 = u2At(i10 + 6);
                                        if (u2At10 != 0) {
                                            int i31 = i10 + 8;
                                            this.innerInfos = new InnerClassInfo[u2At10];
                                            for (int i32 = 0; i32 < u2At10; i32++) {
                                                this.innerInfos[i32] = new InnerClassInfo(this.reference, this.constantPoolOffsets, i31);
                                                int i33 = this.classNameIndex;
                                                InnerClassInfo innerClassInfo = this.innerInfos[i32];
                                                if (i33 == innerClassInfo.innerClassNameIndex) {
                                                    this.innerInfo = innerClassInfo;
                                                    this.innerInfoIndex = i32;
                                                }
                                                i31 += 8;
                                            }
                                            InnerClassInfo innerClassInfo2 = this.innerInfo;
                                            if (innerClassInfo2 != null && (enclosingTypeName = innerClassInfo2.getEnclosingTypeName()) != null) {
                                                this.enclosingTypeName = enclosingTypeName;
                                            }
                                        }
                                    } else if (CharOperation.equals(utf8At, AttributeNamesConstants.InconsistentHierarchy)) {
                                        this.tagBits |= 131072;
                                    }
                                } else if (CharOperation.equals(utf8At, AttributeNamesConstants.EnclosingMethodName)) {
                                    int[] iArr4 = this.constantPoolOffsets;
                                    int i34 = iArr4[u2At(iArr4[u2At(i10 + 6)] + 1)];
                                    this.enclosingTypeName = utf8At(i34 + 3, u2At(i34 + 1));
                                    this.enclosingNameAndTypeIndex = u2At(i10 + 8);
                                }
                            } else if (CharOperation.equals(utf8At, AttributeNamesConstants.DeprecatedName)) {
                                this.accessFlags |= 1048576;
                            }
                            i10 = (int) (i10 + u4At(i10 + 2) + 6);
                        }
                        i20++;
                        annotationInfoArr2 = null;
                    }
                    ModuleInfo moduleInfo = this.moduleDeclaration;
                    if (moduleInfo != null && (annotationInfoArr = this.annotations) != null) {
                        moduleInfo.setAnnotations(annotationInfoArr, this.tagBits, z10);
                        this.annotations = annotationInfoArr2;
                    }
                    if (z10) {
                        initialize();
                    }
                } catch (Exception e11) {
                    e = e11;
                    i10 = i12;
                }
            } catch (Exception e12) {
                e = e12;
            }
        } catch (ClassFormatException e13) {
            throw e13;
        }
    }

    public static ClassFileReader read(File file, boolean z10) throws ClassFormatException, IOException {
        ClassFileReader classFileReader = new ClassFileReader(Util.getFileByteContent(file), file.getAbsolutePath().toCharArray());
        if (z10) {
            classFileReader.initialize();
        }
        return classFileReader;
    }

    public boolean hasStructuralChanges(byte[] bArr, boolean z10, boolean z11) {
        boolean z12;
        boolean z13;
        int length;
        int i10;
        try {
            ClassFileReader classFileReader = new ClassFileReader(bArr, this.classFileName);
            if (getModifiers() != classFileReader.getModifiers() || (getTagBits() & 2333005310106664960L) != (2333005310106664960L & classFileReader.getTagBits()) || hasStructuralAnnotationChanges(getAnnotations(), classFileReader.getAnnotations())) {
                return true;
            }
            if ((this.version >= ClassFileConstants.JDK1_8 && hasStructuralTypeAnnotationChanges(getTypeAnnotations(), classFileReader.getTypeAnnotations())) || !CharOperation.equals(getGenericSignature(), classFileReader.getGenericSignature()) || !CharOperation.equals(getSuperclassName(), classFileReader.getSuperclassName())) {
                return true;
            }
            char[][] interfaceNames = classFileReader.getInterfaceNames();
            if (this.interfaceNames != interfaceNames) {
                int length2 = interfaceNames == null ? 0 : interfaceNames.length;
                int i11 = this.interfacesCount;
                if (length2 != i11) {
                    return true;
                }
                for (int i12 = 0; i12 < i11; i12++) {
                    if (!CharOperation.equals(this.interfaceNames[i12], interfaceNames[i12])) {
                        return true;
                    }
                }
            }
            IBinaryNestedType[] memberTypes = getMemberTypes();
            IBinaryNestedType[] memberTypes2 = classFileReader.getMemberTypes();
            if (memberTypes != memberTypes2) {
                int length3 = memberTypes == null ? 0 : memberTypes.length;
                if (length3 != (memberTypes2 == null ? 0 : memberTypes2.length)) {
                    return true;
                }
                for (0; i10 < length3; i10 + 1) {
                    i10 = (CharOperation.equals(memberTypes[i10].getName(), memberTypes2[i10].getName()) && memberTypes[i10].getModifiers() == memberTypes2[i10].getModifiers()) ? i10 + 1 : 0;
                    return true;
                }
            }
            FieldInfo[] fieldInfoArr = (FieldInfo[]) classFileReader.getFields();
            int length4 = fieldInfoArr == null ? 0 : fieldInfoArr.length;
            if (this.fieldsCount == length4) {
                int i13 = 0;
                while (i13 < this.fieldsCount && !hasStructuralFieldChanges(this.fields[i13], fieldInfoArr[i13])) {
                    i13++;
                }
                z12 = i13 != this.fieldsCount;
                if (z12 && !z10 && !z11) {
                    return true;
                }
            } else {
                z12 = true;
            }
            if (z12) {
                int i14 = this.fieldsCount;
                if (i14 != length4 && !z11) {
                    return true;
                }
                if (z10) {
                    if (i14 != 0) {
                        Arrays.sort(this.fields);
                    }
                    if (length4 != 0) {
                        Arrays.sort(fieldInfoArr);
                    }
                }
                if (z11) {
                    if (hasNonSyntheticFieldChanges(this.fields, fieldInfoArr)) {
                        return true;
                    }
                } else {
                    for (int i15 = 0; i15 < this.fieldsCount; i15++) {
                        if (hasStructuralFieldChanges(this.fields[i15], fieldInfoArr[i15])) {
                            return true;
                        }
                    }
                }
            }
            MethodInfo[] methodInfoArr = (MethodInfo[]) classFileReader.getMethods();
            int length5 = methodInfoArr == null ? 0 : methodInfoArr.length;
            if (this.methodsCount == length5) {
                int i16 = 0;
                while (i16 < this.methodsCount && !hasStructuralMethodChanges(this.methods[i16], methodInfoArr[i16])) {
                    i16++;
                }
                z13 = i16 != this.methodsCount;
                if (z13 && !z10 && !z11) {
                    return true;
                }
            } else {
                z13 = true;
            }
            if (z13) {
                int i17 = this.methodsCount;
                if (i17 != length5 && !z11) {
                    return true;
                }
                if (z10) {
                    if (i17 != 0) {
                        Arrays.sort(this.methods);
                    }
                    if (length5 != 0) {
                        Arrays.sort(methodInfoArr);
                    }
                }
                if (z11) {
                    if (hasNonSyntheticMethodChanges(this.methods, methodInfoArr)) {
                        return true;
                    }
                } else {
                    for (int i18 = 0; i18 < this.methodsCount; i18++) {
                        if (hasStructuralMethodChanges(this.methods[i18], methodInfoArr[i18])) {
                            return true;
                        }
                    }
                }
            }
            char[][][] missingTypeNames = getMissingTypeNames();
            char[][][] missingTypeNames2 = classFileReader.getMissingTypeNames();
            if (missingTypeNames != null) {
                if (missingTypeNames2 == null || (length = missingTypeNames.length) != missingTypeNames2.length) {
                    return true;
                }
                for (int i19 = 0; i19 < length; i19++) {
                    if (!CharOperation.equals(missingTypeNames[i19], missingTypeNames2[i19])) {
                        return true;
                    }
                }
            } else if (missingTypeNames2 != null) {
                return true;
            }
            return false;
        } catch (ClassFormatException unused) {
            return true;
        }
    }

    public static ClassFileReader read(InputStream inputStream, String str) throws ClassFormatException, IOException {
        return read(inputStream, str, false);
    }

    public static ClassFileReader read(InputStream inputStream, String str, boolean z10) throws ClassFormatException, IOException {
        ClassFileReader classFileReader = new ClassFileReader(Util.getInputStreamAsByteArray(inputStream, -1), str.toCharArray());
        if (z10) {
            classFileReader.initialize();
        }
        return classFileReader;
    }

    public static ClassFileReader read(ZipFile zipFile, String str) throws ClassFormatException, IOException {
        return read(zipFile, str, false);
    }

    public static ClassFileReader read(ZipFile zipFile, String str, boolean z10) throws ClassFormatException, IOException {
        ZipEntry entry = zipFile.getEntry(str);
        if (entry == null) {
            return null;
        }
        ClassFileReader classFileReader = new ClassFileReader(Util.getZipEntryByteContent(entry, zipFile), str.toCharArray());
        if (z10) {
            classFileReader.initialize();
        }
        return classFileReader;
    }

    public static ClassFileReader read(String str) throws ClassFormatException, IOException {
        return read(str, false);
    }

    public static ClassFileReader read(String str, boolean z10) throws ClassFormatException, IOException {
        return read(new File(str), z10);
    }
}
