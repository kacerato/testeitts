package org.eclipse.jdt.internal.core.search.indexing;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.constant.ConstantDescs;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchDocument;
import org.eclipse.jdt.internal.compiler.ExtraFlags;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.classfmt.FieldInfo;
import org.eclipse.jdt.internal.compiler.classfmt.MethodInfo;
import org.eclipse.jdt.internal.compiler.env.ClassSignature;
import org.eclipse.jdt.internal.compiler.env.EnumConstantSignature;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryElementValuePair;
import org.eclipse.jdt.internal.compiler.env.IBinaryModule;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;

public class BinaryIndexer extends AbstractIndexer implements SuffixConstants {
    private static final char[] BYTE = "byte".toCharArray();
    private static final char[] CHAR = "char".toCharArray();
    private static final char[] DOUBLE = "double".toCharArray();
    private static final char[] FLOAT = TypedValues.Custom.S_FLOAT.toCharArray();
    private static final char[] INT = "int".toCharArray();
    private static final char[] LONG = "long".toCharArray();
    private static final char[] SHORT = "short".toCharArray();
    private static final char[] BOOLEAN = TypedValues.Custom.S_BOOLEAN.toCharArray();
    private static final char[] VOID = "void".toCharArray();
    private static final char[] INIT = ConstantDescs.INIT_NAME.toCharArray();

    public BinaryIndexer(SearchDocument searchDocument) {
        super(searchDocument);
    }

    private void addBinaryAnnotation(IBinaryAnnotation iBinaryAnnotation) {
        addAnnotationTypeReference(replace('/', '.', Signature.toCharArray(iBinaryAnnotation.getTypeName())));
        IBinaryElementValuePair[] elementValuePairs = iBinaryAnnotation.getElementValuePairs();
        if (elementValuePairs != null) {
            for (IBinaryElementValuePair iBinaryElementValuePair : elementValuePairs) {
                addMethodReference(iBinaryElementValuePair.getName(), 0);
                addPairValue(iBinaryElementValuePair.getValue());
            }
        }
    }

    private void addBinaryRetentionAnnotation(long j10) {
        addTypeReference(TypeConstants.JAVA_LANG_ANNOTATION_RETENTIONPOLICY[r0.length - 1]);
        if ((j10 & 52776558133248L) == 52776558133248L) {
            addFieldReference(TypeConstants.UPPER_RUNTIME);
        } else if ((35184372088832L & j10) != 0) {
            addFieldReference(TypeConstants.UPPER_CLASS);
        } else if ((j10 & 17592186044416L) != 0) {
            addFieldReference(TypeConstants.UPPER_SOURCE);
        }
    }

    private void addBinaryStandardAnnotations(long j10) {
        if ((TagBits.AllStandardAnnotationsMask & j10) == 0) {
            return;
        }
        if ((TagBits.AnnotationTargetMASK & j10) != 0) {
            addAnnotationTypeReference(TypeConstants.JAVA_LANG_ANNOTATION_TARGET[r0.length - 1]);
            addBinaryTargetAnnotation(j10);
        }
        if ((52776558133248L & j10) != 0) {
            addAnnotationTypeReference(TypeConstants.JAVA_LANG_ANNOTATION_RETENTION[r0.length - 1]);
            addBinaryRetentionAnnotation(j10);
        }
        if ((70368744177664L & j10) != 0) {
            addAnnotationTypeReference(TypeConstants.JAVA_LANG_DEPRECATED[r0.length - 1]);
        }
        if ((140737488355328L & j10) != 0) {
            addAnnotationTypeReference(TypeConstants.JAVA_LANG_ANNOTATION_DOCUMENTED[r0.length - 1]);
        }
        if ((281474976710656L & j10) != 0) {
            addAnnotationTypeReference(TypeConstants.JAVA_LANG_ANNOTATION_INHERITED[r0.length - 1]);
        }
        if ((562949953421312L & j10) != 0) {
            addAnnotationTypeReference(TypeConstants.JAVA_LANG_OVERRIDE[r0.length - 1]);
        }
        if ((1125899906842624L & j10) != 0) {
            addAnnotationTypeReference(TypeConstants.JAVA_LANG_SUPPRESSWARNINGS[r0.length - 1]);
        }
        if ((2251799813685248L & j10) != 0) {
            addAnnotationTypeReference(TypeConstants.JAVA_LANG_SAFEVARARGS[r0.length - 1]);
        }
        if ((j10 & 4503599627370496L) != 0) {
            addAnnotationTypeReference(TypeConstants.JAVA_LANG_INVOKE_METHODHANDLE_$_POLYMORPHICSIGNATURE[r5.length - 1]);
        }
    }

    private void addBinaryTargetAnnotation(long j10) {
        char[][] cArr;
        if ((4398046511104L & j10) != 0) {
            cArr = TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE;
            addTypeReference(cArr[cArr.length - 1]);
            addFieldReference(TypeConstants.UPPER_ANNOTATION_TYPE);
        } else {
            cArr = null;
        }
        if ((1099511627776L & j10) != 0) {
            if (cArr == null) {
                cArr = TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE;
                addTypeReference(cArr[cArr.length - 1]);
            }
            addFieldReference(TypeConstants.UPPER_CONSTRUCTOR);
        }
        if ((137438953472L & j10) != 0) {
            if (cArr == null) {
                cArr = TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE;
                addTypeReference(cArr[cArr.length - 1]);
            }
            addFieldReference(TypeConstants.UPPER_FIELD);
        }
        if ((2199023255552L & j10) != 0) {
            if (cArr == null) {
                cArr = TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE;
                addTypeReference(cArr[cArr.length - 1]);
            }
            addFieldReference(TypeConstants.UPPER_LOCAL_VARIABLE);
        }
        if ((274877906944L & j10) != 0) {
            if (cArr == null) {
                cArr = TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE;
                addTypeReference(cArr[cArr.length - 1]);
            }
            addFieldReference(TypeConstants.UPPER_METHOD);
        }
        if ((8796093022208L & j10) != 0) {
            if (cArr == null) {
                cArr = TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE;
                addTypeReference(cArr[cArr.length - 1]);
            }
            addFieldReference(TypeConstants.UPPER_PACKAGE);
        }
        if ((549755813888L & j10) != 0) {
            if (cArr == null) {
                cArr = TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE;
                addTypeReference(cArr[cArr.length - 1]);
            }
            addFieldReference(TypeConstants.UPPER_PARAMETER);
        }
        if ((68719476736L & j10) != 0) {
            if (cArr == null) {
                cArr = TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE;
                addTypeReference(cArr[cArr.length - 1]);
            }
            addFieldReference(TypeConstants.TYPE);
        }
        if ((j10 & 2305843009213693952L) != 0) {
            if (cArr == null) {
                addTypeReference(TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE[r7.length - 1]);
            }
            addFieldReference(TypeConstants.UPPER_MODULE);
        }
    }

    private void addPairValue(Object obj) {
        if (obj instanceof EnumConstantSignature) {
            EnumConstantSignature enumConstantSignature = (EnumConstantSignature) obj;
            addTypeReference(replace('/', '.', Signature.toCharArray(enumConstantSignature.getTypeName())));
            addNameReference(enumConstantSignature.getEnumConstantName());
        } else {
            if (obj instanceof ClassSignature) {
                addTypeReference(replace('/', '.', Signature.toCharArray(((ClassSignature) obj).getTypeName())));
                return;
            }
            if (obj instanceof IBinaryAnnotation) {
                addBinaryAnnotation((IBinaryAnnotation) obj);
                return;
            }
            if (obj instanceof Object[]) {
                for (Object obj2 : (Object[]) obj) {
                    addPairValue(obj2);
                }
            }
        }
    }

    private void convertToArrayType(char[][] cArr, int i10, int i11) {
        char[] cArr2 = cArr[i10];
        int length = cArr2.length;
        char[] cArr3 = new char[(i11 * 2) + length];
        System.arraycopy(cArr2, 0, cArr3, 0, length);
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = (i12 * 2) + length;
            cArr3[i13] = '[';
            cArr3[i13 + 1] = JavaElement.JEM_TYPE_PARAMETER;
        }
        cArr[i10] = cArr3;
    }

    private char[] decodeFieldType(char[] cArr) throws ClassFormatException {
        if (cArr == null) {
            return null;
        }
        int length = cArr.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char c10 = cArr[i11];
            if (c10 == 'F') {
                return i10 > 0 ? convertToArrayType(FLOAT, i10) : FLOAT;
            }
            if (c10 == 'L') {
                int i12 = i11 + 1;
                int indexOf = CharOperation.indexOf(';', cArr, i12);
                if (indexOf != -1) {
                    return i10 > 0 ? convertToArrayType(replace('/', '.', CharOperation.subarray(cArr, i12, indexOf)), i10) : replace('/', '.', CharOperation.subarray(cArr, i12, indexOf));
                }
                throw new ClassFormatException(28);
            }
            if (c10 == 'S') {
                return i10 > 0 ? convertToArrayType(SHORT, i10) : SHORT;
            }
            if (c10 == 'V') {
                return VOID;
            }
            if (c10 == 'I') {
                return i10 > 0 ? convertToArrayType(INT, i10) : INT;
            }
            if (c10 == 'J') {
                return i10 > 0 ? convertToArrayType(LONG, i10) : LONG;
            }
            if (c10 == 'Z') {
                return i10 > 0 ? convertToArrayType(BOOLEAN, i10) : BOOLEAN;
            }
            if (c10 != '[') {
                switch (c10) {
                    case 'B':
                        return i10 > 0 ? convertToArrayType(BYTE, i10) : BYTE;
                    case 'C':
                        return i10 > 0 ? convertToArrayType(CHAR, i10) : CHAR;
                    case 'D':
                        return i10 > 0 ? convertToArrayType(DOUBLE, i10) : DOUBLE;
                    default:
                        throw new ClassFormatException(28);
                }
            }
            i10++;
        }
        return null;
    }

    private char[][] decodeParameterTypes(char[] cArr, boolean z10) throws ClassFormatException {
        int lastIndexOf;
        int i10;
        if (cArr == null || (lastIndexOf = CharOperation.lastIndexOf(')', cArr)) == 1) {
            return null;
        }
        if (lastIndexOf == -1) {
            throw new ClassFormatException(28);
        }
        char[][] cArr2 = new char[3];
        int i11 = 1;
        int i12 = 0;
        int i13 = 0;
        while (i11 < lastIndexOf) {
            if (i12 == cArr2.length) {
                char[][] cArr3 = new char[i12 * 2];
                System.arraycopy(cArr2, 0, cArr3, 0, i12);
                cArr2 = cArr3;
            }
            char c10 = cArr[i11];
            if (c10 != 'F') {
                if (c10 == 'L') {
                    int i14 = i11 + 1;
                    int indexOf = CharOperation.indexOf(';', cArr, i14);
                    if (indexOf == -1) {
                        throw new ClassFormatException(28);
                    }
                    if (z10 && i12 == 0) {
                        z10 = false;
                    } else {
                        int i15 = i12 + 1;
                        cArr2[i12] = replace('/', '.', CharOperation.subarray(cArr, i14, indexOf));
                        if (i13 > 0) {
                            convertToArrayType(cArr2, i12, i13);
                        }
                        i12 = i15;
                    }
                    i13 = 0;
                    i11 = indexOf;
                } else if (c10 == 'S') {
                    i10 = i12 + 1;
                    cArr2[i12] = SHORT;
                    if (i13 > 0) {
                        convertToArrayType(cArr2, i12, i13);
                    }
                } else if (c10 == 'I') {
                    i10 = i12 + 1;
                    cArr2[i12] = INT;
                    if (i13 > 0) {
                        convertToArrayType(cArr2, i12, i13);
                    }
                } else if (c10 == 'J') {
                    i10 = i12 + 1;
                    cArr2[i12] = LONG;
                    if (i13 > 0) {
                        convertToArrayType(cArr2, i12, i13);
                    }
                } else if (c10 == 'Z') {
                    i10 = i12 + 1;
                    cArr2[i12] = BOOLEAN;
                    if (i13 > 0) {
                        convertToArrayType(cArr2, i12, i13);
                    }
                } else if (c10 != '[') {
                    switch (c10) {
                        case 'B':
                            i10 = i12 + 1;
                            cArr2[i12] = BYTE;
                            if (i13 > 0) {
                                convertToArrayType(cArr2, i12, i13);
                                break;
                            }
                            break;
                        case 'C':
                            i10 = i12 + 1;
                            cArr2[i12] = CHAR;
                            if (i13 > 0) {
                                convertToArrayType(cArr2, i12, i13);
                                break;
                            }
                            break;
                        case 'D':
                            i10 = i12 + 1;
                            cArr2[i12] = DOUBLE;
                            if (i13 > 0) {
                                convertToArrayType(cArr2, i12, i13);
                                break;
                            }
                            break;
                        default:
                            throw new ClassFormatException(28);
                    }
                } else {
                    i13++;
                }
                i11++;
            } else {
                i10 = i12 + 1;
                cArr2[i12] = FLOAT;
                if (i13 > 0) {
                    convertToArrayType(cArr2, i12, i13);
                }
            }
            i13 = 0;
            i12 = i10;
            i11++;
        }
        if (cArr2.length == i12) {
            return cArr2;
        }
        char[][] cArr4 = new char[i12];
        System.arraycopy(cArr2, 0, cArr4, 0, i12);
        return cArr4;
    }

    private char[] decodeReturnType(char[] cArr) throws ClassFormatException {
        if (cArr == null) {
            return null;
        }
        int lastIndexOf = CharOperation.lastIndexOf(')', cArr);
        if (lastIndexOf == -1) {
            throw new ClassFormatException(28);
        }
        int length = cArr.length;
        int i10 = 0;
        for (int i11 = lastIndexOf + 1; i11 < length; i11++) {
            char c10 = cArr[i11];
            if (c10 == 'F') {
                return i10 > 0 ? convertToArrayType(FLOAT, i10) : FLOAT;
            }
            if (c10 == 'L') {
                int i12 = i11 + 1;
                int indexOf = CharOperation.indexOf(';', cArr, i12);
                if (indexOf != -1) {
                    return i10 > 0 ? convertToArrayType(replace('/', '.', CharOperation.subarray(cArr, i12, indexOf)), i10) : replace('/', '.', CharOperation.subarray(cArr, i12, indexOf));
                }
                throw new ClassFormatException(28);
            }
            if (c10 == 'S') {
                return i10 > 0 ? convertToArrayType(SHORT, i10) : SHORT;
            }
            if (c10 == 'V') {
                return VOID;
            }
            if (c10 == 'I') {
                return i10 > 0 ? convertToArrayType(INT, i10) : INT;
            }
            if (c10 == 'J') {
                return i10 > 0 ? convertToArrayType(LONG, i10) : LONG;
            }
            if (c10 == 'Z') {
                return i10 > 0 ? convertToArrayType(BOOLEAN, i10) : BOOLEAN;
            }
            if (c10 != '[') {
                switch (c10) {
                    case 'B':
                        return i10 > 0 ? convertToArrayType(BYTE, i10) : BYTE;
                    case 'C':
                        return i10 > 0 ? convertToArrayType(CHAR, i10) : CHAR;
                    case 'D':
                        return i10 > 0 ? convertToArrayType(DOUBLE, i10) : DOUBLE;
                    default:
                        throw new ClassFormatException(28);
                }
            }
            i10++;
        }
        return null;
    }

    private int extractArgCount(char[] cArr, char[] cArr2) throws ClassFormatException {
        int lastIndexOf = CharOperation.lastIndexOf(')', cArr);
        if (lastIndexOf == 1) {
            return 0;
        }
        if (lastIndexOf == -1) {
            throw new ClassFormatException(28);
        }
        int i10 = 0;
        int i11 = 1;
        while (i11 < lastIndexOf) {
            char c10 = cArr[i11];
            if (c10 != 'F') {
                if (c10 == 'L') {
                    int indexOf = CharOperation.indexOf(';', cArr, i11 + 1);
                    if (indexOf == -1) {
                        throw new ClassFormatException(28);
                    }
                    if (cArr2 == null || i10 != 0) {
                        i10++;
                    } else {
                        char[] createCharArrayTypeSignature = Signature.createCharArrayTypeSignature(cArr2, true);
                        if (createCharArrayTypeSignature.length > (indexOf - i11) + 2) {
                            int i12 = 0;
                            while (i11 < indexOf) {
                                char c11 = cArr[i11];
                                char c12 = createCharArrayTypeSignature[i12];
                                if (c11 == c12 || (c11 == '/' && c12 == '.')) {
                                    i11++;
                                    i12++;
                                }
                            }
                            cArr2 = null;
                        }
                        i10++;
                        cArr2 = null;
                    }
                    i11 = indexOf;
                } else if (c10 != 'S' && c10 != 'I' && c10 != 'J' && c10 != 'Z') {
                    if (c10 != '[') {
                        switch (c10) {
                            case 'B':
                            case 'C':
                            case 'D':
                                break;
                            default:
                                throw new ClassFormatException(28);
                        }
                    } else {
                        continue;
                    }
                }
                i11++;
            }
            i10++;
            i11++;
        }
        return i10;
    }

    private char[] extractClassName(int[] iArr, ClassFileReader classFileReader, int i10) {
        int i11 = iArr[classFileReader.u2At(iArr[classFileReader.u2At(iArr[i10] + 1)] + 1)];
        return classFileReader.utf8At(i11 + 3, classFileReader.u2At(i11 + 1));
    }

    private char[] extractClassReference(int[] iArr, ClassFileReader classFileReader, int i10) {
        int i11 = iArr[classFileReader.u2At(iArr[i10] + 1)];
        return classFileReader.utf8At(i11 + 3, classFileReader.u2At(i11 + 1));
    }

    private char[] extractName(int[] iArr, ClassFileReader classFileReader, int i10) {
        int i11 = iArr[classFileReader.u2At(iArr[classFileReader.u2At(iArr[i10] + 3)] + 1)];
        return classFileReader.utf8At(i11 + 3, classFileReader.u2At(i11 + 1));
    }

    private void extractReferenceFromConstantPool(byte[] bArr, ClassFileReader classFileReader) throws ClassFormatException {
        int[] constantPoolOffsets = classFileReader.getConstantPoolOffsets();
        int length = constantPoolOffsets.length;
        for (int i10 = 1; i10 < length; i10++) {
            int i11 = 0;
            switch (classFileReader.u1At(constantPoolOffsets[i10])) {
                case 7:
                    char[] extractClassReference = extractClassReference(constantPoolOffsets, classFileReader, i10);
                    if (extractClassReference.length <= 0 || extractClassReference[0] != '[') {
                        char[] replace = replace('/', '.', extractClassReference);
                        addTypeReference(replace);
                        char[][] splitOn = CharOperation.splitOn('.', replace);
                        int length2 = splitOn.length;
                        while (i11 < length2) {
                            addNameReference(splitOn[i11]);
                            i11++;
                        }
                        break;
                    } else {
                        break;
                    }
                    break;
                case 9:
                    addFieldReference(extractName(constantPoolOffsets, classFileReader, i10));
                    break;
                case 10:
                case 11:
                    char[] extractName = extractName(constantPoolOffsets, classFileReader, i10);
                    char[] extractType = extractType(constantPoolOffsets, classFileReader, i10);
                    if (CharOperation.equals(INIT, extractName)) {
                        char[] extractClassName = extractClassName(constantPoolOffsets, classFileReader, i10);
                        if (extractClassName != null) {
                            int length3 = extractClassName.length;
                            int i12 = 0;
                            while (i11 < length3) {
                                char c10 = extractClassName[i11];
                                if (c10 == '$') {
                                    i12 = 1;
                                } else if (c10 == '/') {
                                    extractClassName[i11] = '.';
                                }
                                i11++;
                            }
                            i11 = i12;
                        }
                        addConstructorReference(extractClassName, extractArgCount(extractType, i11 != 0 ? extractClassName : null));
                        break;
                    } else {
                        addMethodReference(extractName, extractArgCount(extractType, null));
                        break;
                    }
            }
        }
    }

    private char[] extractType(int[] iArr, ClassFileReader classFileReader, int i10) {
        int i11 = iArr[classFileReader.u2At(iArr[classFileReader.u2At(iArr[i10] + 3)] + 3)];
        return classFileReader.utf8At(i11 + 3, classFileReader.u2At(i11 + 1));
    }

    private void indexModule(IModule iModule) {
        addModuleDeclaration(iModule.name());
        IModule.IModuleReference[] requires = iModule.requires();
        if (requires != null) {
            for (IModule.IModuleReference iModuleReference : requires) {
                addModuleReference(iModuleReference.name());
            }
        }
        indexPackageVisibilityDirective(iModule.exports());
        indexPackageVisibilityDirective(iModule.opens());
        char[][] uses = iModule.uses();
        if (uses != null) {
            for (char[] cArr : uses) {
                indexTypeReference(cArr);
            }
        }
        IModule.IService[] provides = iModule.provides();
        if (provides != null) {
            for (IModule.IService iService : provides) {
                indexTypeReference(iService.name());
                indexTypeReferences(iService.with());
            }
        }
    }

    private void indexPackageVisibilityDirective(IModule.IPackageExport[] iPackageExportArr) {
        if (iPackageExportArr != null) {
            for (IModule.IPackageExport iPackageExport : iPackageExportArr) {
                addModuleExportedPackages(iPackageExport.name());
                char[][] targets = iPackageExport.targets();
                if (targets != null && targets != CharOperation.NO_CHAR_CHAR) {
                    for (char[] cArr : targets) {
                        if (cArr != null && cArr != CharOperation.NO_CHAR) {
                            addModuleReference(cArr);
                        }
                    }
                }
            }
        }
    }

    private void indexTypeReference(char[] cArr) {
        if (cArr == null || cArr == CharOperation.NO_CHAR) {
            return;
        }
        addTypeReference(cArr);
    }

    private void indexTypeReferences(char[][] cArr) {
        if (cArr == null || cArr == CharOperation.NO_CHAR_CHAR) {
            return;
        }
        for (char[] cArr2 : cArr) {
            addTypeReference(cArr2);
        }
    }

    private char[] removeFirstSyntheticParameter(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        if (cArr.length < 3 || cArr[0] != '(' || cArr[1] == ')') {
            return cArr;
        }
        int scanTypeSignature = Util.scanTypeSignature(cArr, 1) + 1;
        int length = cArr.length - scanTypeSignature;
        char[] cArr2 = new char[length + 1];
        cArr2[0] = cArr[0];
        System.arraycopy(cArr, scanTypeSignature, cArr2, 1, length);
        return cArr2;
    }

    private char[][] replace(char c10, char c11, char[][] cArr) {
        if (cArr == null) {
            return null;
        }
        for (char[] cArr2 : cArr) {
            replace(c10, c11, cArr2);
        }
        return cArr;
    }

    @Override
    public void addTypeReference(char[] cArr) {
        int length = cArr.length;
        if (length > 2 && cArr[length - 2] == '$') {
            switch (cArr[length - 1]) {
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                    return;
            }
        }
        super.addTypeReference(CharOperation.replaceOnCopy(cArr, '$', '.'));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0238 A[Catch: RuntimeException -> 0x01a6, ClassFormatException -> 0x0275, TRY_ENTER, TryCatch #0 {RuntimeException -> 0x01a6, blocks: (B:59:0x0192, B:173:0x0198, B:175:0x019e, B:61:0x01b6, B:64:0x01c7, B:65:0x01ca, B:67:0x01d7, B:69:0x01ed, B:73:0x0200, B:116:0x0212, B:118:0x0218, B:120:0x021e, B:122:0x0224, B:126:0x023b, B:128:0x0238, B:76:0x0289, B:78:0x028f, B:81:0x02a1, B:85:0x02ab, B:111:0x02a9, B:190:0x018f), top: B:189:0x018f }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0314 A[Catch: RuntimeException -> 0x02da, ClassFormatException -> 0x02dd, TryCatch #10 {RuntimeException -> 0x02da, ClassFormatException -> 0x02dd, blocks: (B:148:0x033f, B:149:0x034a, B:151:0x0352, B:153:0x035c, B:155:0x0379, B:157:0x037f, B:160:0x0387, B:162:0x0391, B:164:0x0394, B:168:0x0397, B:88:0x02f6, B:97:0x02fc, B:99:0x0302, B:90:0x030a, B:92:0x0314, B:94:0x0317, B:87:0x02d6), top: B:96:0x02fc }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0317 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v27, types: [int] */
    /* JADX WARN: Type inference failed for: r1v39, types: [int] */
    /* JADX WARN: Type inference failed for: r6v10, types: [int] */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16, types: [int] */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7, types: [int] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8, types: [int] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void indexDocument() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        int i10;
        char[] cArr;
        char[] cArr2;
        char[] cArr3;
        char[] cArr4;
        char[][] cArr5;
        byte[] bArr;
        boolean z10;
        char[] cArr6;
        boolean z11;
        char[] cArr7;
        int i11;
        char c10;
        int i12;
        String str7;
        char c11;
        int i13;
        ClassFileReader classFileReader;
        char c12;
        boolean z12;
        int i14;
        char[] cArr8;
        int i15;
        int i16;
        MethodInfo[] methodInfoArr;
        int i17;
        ClassFileReader classFileReader2;
        char[] cArr9;
        char[] cArr10;
        char c13;
        IBinaryAnnotation[] annotations;
        long tagBits;
        String str8 = "The Java indexing could not index ";
        String str9 = JavaCore.PLUGIN_ID;
        try {
            try {
                try {
                    byte[] byteContents = this.document.getByteContents();
                    if (byteContents == null) {
                        return;
                    }
                    String path = this.document.getPath();
                    ClassFileReader classFileReader3 = new ClassFileReader(byteContents, path == null ? null : path.toCharArray());
                    IBinaryModule moduleDeclaration = classFileReader3.getModuleDeclaration();
                    if (moduleDeclaration != null) {
                        indexModule(moduleDeclaration);
                        return;
                    }
                    char[] replace = replace('/', '.', classFileReader3.getName());
                    int lastIndexOf = CharOperation.lastIndexOf('.', replace);
                    if (lastIndexOf >= 0) {
                        char[] subarray = CharOperation.subarray(replace, 0, lastIndexOf);
                        cArr2 = CharOperation.subarray(replace, lastIndexOf + 1, replace.length);
                        cArr = subarray;
                    } else {
                        cArr = CharOperation.NO_CHAR;
                        cArr2 = replace;
                    }
                    boolean isNestedType = classFileReader3.isNestedType();
                    if (isNestedType) {
                        char[] innerSourceName = classFileReader3.isAnonymous() ? CharOperation.NO_CHAR : classFileReader3.getInnerSourceName();
                        if (!classFileReader3.isLocal() && !classFileReader3.isAnonymous()) {
                            char[] enclosingTypeName = classFileReader3.getEnclosingTypeName();
                            int length = (enclosingTypeName.length - lastIndexOf) - 1;
                            if (length <= 0) {
                                return;
                            }
                            cArr4 = new char[length];
                            System.arraycopy(enclosingTypeName, lastIndexOf + 1, cArr4, 0, length);
                            cArr3 = innerSourceName;
                        }
                        cArr4 = IIndexConstants.ONE_ZERO;
                        cArr3 = innerSourceName;
                    } else {
                        cArr3 = cArr2;
                        cArr4 = null;
                    }
                    char[] genericSignature = classFileReader3.getGenericSignature();
                    if (genericSignature != null) {
                        CharOperation.replace(genericSignature, '/', '.');
                        cArr5 = Signature.getTypeParameters(genericSignature);
                    } else {
                        cArr5 = null;
                    }
                    if (cArr3 == null) {
                        return;
                    }
                    char[][] replace2 = replace('/', '.', classFileReader3.getInterfaceNames());
                    char[][] cArr11 = cArr4 == null ? null : new char[][]{cArr4};
                    int modifiers = classFileReader3.getModifiers();
                    int kind = TypeDeclaration.kind(modifiers);
                    if (kind != 1) {
                        try {
                            if (kind == 2) {
                                bArr = byteContents;
                                z10 = true;
                                i12 = 2;
                                cArr6 = cArr;
                                z11 = false;
                                cArr7 = replace;
                                i11 = modifiers;
                                c10 = '.';
                                addInterfaceDeclaration(i11, cArr6, cArr3, cArr11, replace2, cArr5, false);
                            } else if (kind != 3) {
                                if (kind != 4) {
                                    bArr = byteContents;
                                    z10 = true;
                                    i12 = 2;
                                    cArr6 = cArr;
                                    z11 = false;
                                } else {
                                    z10 = true;
                                    i12 = 2;
                                    cArr6 = cArr;
                                    z11 = false;
                                    addAnnotationTypeDeclaration(modifiers, cArr, cArr3, cArr11, false);
                                    bArr = byteContents;
                                }
                                cArr7 = replace;
                                i11 = modifiers;
                                str7 = ". This .class file doesn't follow the class file format specification. Please report this issue against the .class file vendor";
                                c10 = '.';
                                c11 = '/';
                            } else {
                                z10 = true;
                                i12 = 2;
                                cArr6 = cArr;
                                z11 = false;
                                cArr7 = replace;
                                bArr = byteContents;
                                i11 = modifiers;
                                c10 = '.';
                                addEnumDeclaration(modifiers, cArr6, cArr3, cArr11, replace('/', '.', classFileReader3.getSuperclassName()), replace2, false);
                            }
                            str7 = ". This .class file doesn't follow the class file format specification. Please report this issue against the .class file vendor";
                            c11 = '/';
                        } catch (ClassFormatException e10) {
                            e = e10;
                            str4 = JavaCore.PLUGIN_ID;
                            str5 = "The Java indexing could not index ";
                            str6 = ". This .class file doesn't follow the class file format specification. Please report this issue against the .class file vendor";
                            i10 = i12;
                            this.document.removeAllIndexEntries();
                            org.eclipse.jdt.internal.core.util.Util.log((IStatus) new Status(i10, str4, str5 + this.document.getPath() + str6, e));
                            return;
                        }
                    } else {
                        bArr = byteContents;
                        z10 = true;
                        cArr6 = cArr;
                        z11 = false;
                        cArr7 = replace;
                        i11 = modifiers;
                        c10 = '.';
                        i12 = 2;
                        char[][] cArr12 = cArr11;
                        str7 = ". This .class file doesn't follow the class file format specification. Please report this issue against the .class file vendor";
                        c11 = '/';
                        try {
                            try {
                                addClassDeclaration(i11, cArr6, cArr3, cArr12, replace('/', '.', classFileReader3.getSuperclassName()), replace2, cArr5, false);
                            } catch (RuntimeException e11) {
                                e = e11;
                                str = str9;
                                str2 = str8;
                                str3 = str7;
                                this.document.removeAllIndexEntries();
                                org.eclipse.jdt.internal.core.util.Util.log((IStatus) new Status(2, str, str2 + this.document.getPath() + str3, e));
                                return;
                            }
                        } catch (ClassFormatException e12) {
                            e = e12;
                            str = str9;
                            str2 = str8;
                            str3 = str7;
                            str4 = str;
                            str5 = str2;
                            str6 = str3;
                            i10 = 2;
                            this.document.removeAllIndexEntries();
                            org.eclipse.jdt.internal.core.util.Util.log((IStatus) new Status(i10, str4, str5 + this.document.getPath() + str6, e));
                            return;
                        }
                    }
                    IBinaryAnnotation[] annotations2 = classFileReader3.getAnnotations();
                    if (annotations2 != null) {
                        try {
                            int length2 = annotations2.length;
                            for (?? r62 = z11; r62 < length2; r62++) {
                                addBinaryAnnotation(annotations2[r62]);
                            }
                        } catch (ClassFormatException e13) {
                            e = e13;
                            str4 = str9;
                            str5 = str8;
                            str6 = str7;
                            i10 = i12;
                            this.document.removeAllIndexEntries();
                            org.eclipse.jdt.internal.core.util.Util.log((IStatus) new Status(i10, str4, str5 + this.document.getPath() + str6, e));
                            return;
                        }
                    }
                    long tagBits2 = classFileReader3.getTagBits() & TagBits.AllStandardAnnotationsMask;
                    if (tagBits2 != 0) {
                        addBinaryStandardAnnotations(tagBits2);
                    }
                    int extraFlags = ExtraFlags.getExtraFlags(classFileReader3);
                    MethodInfo[] methodInfoArr2 = (MethodInfo[]) classFileReader3.getMethods();
                    if (methodInfoArr2 != null) {
                        int length3 = methodInfoArr2.length;
                        boolean z13 = z10;
                        ?? r63 = z11;
                        while (r63 < length3) {
                            MethodInfo methodInfo = methodInfoArr2[r63];
                            boolean isConstructor = methodInfo.isConstructor();
                            char[] methodDescriptor = methodInfo.getMethodDescriptor();
                            char[][] decodeParameterTypes = decodeParameterTypes(methodDescriptor, (isConstructor && isNestedType) ? z10 : z11);
                            char[] decodeReturnType = decodeReturnType(methodDescriptor);
                            char[][] replace3 = replace(c11, c10, methodInfo.getExceptionTypeNames());
                            if (isConstructor) {
                                try {
                                    char[] genericSignature2 = methodInfo.getGenericSignature();
                                    if (genericSignature2 == null) {
                                        if (classFileReader3.isNestedType()) {
                                            i14 = i11;
                                            if ((i14 & 8) == 0) {
                                                genericSignature2 = removeFirstSyntheticParameter(methodDescriptor);
                                            }
                                        } else {
                                            i14 = i11;
                                        }
                                        cArr8 = methodDescriptor;
                                        i11 = i14;
                                        i15 = r63;
                                        i16 = length3;
                                        methodInfoArr = methodInfoArr2;
                                        i17 = extraFlags;
                                        classFileReader2 = classFileReader3;
                                        cArr9 = cArr3;
                                        addConstructorDeclaration(cArr3, decodeParameterTypes != null ? z11 : decodeParameterTypes.length, cArr8, decodeParameterTypes, methodInfo.getArgumentNames(), methodInfo.getModifiers(), cArr6, i11, replace3, i17);
                                        str = str9;
                                        str2 = str8;
                                        str3 = str7;
                                        z13 = z11;
                                    } else {
                                        i14 = i11;
                                    }
                                    cArr8 = genericSignature2;
                                    i11 = i14;
                                    i15 = r63;
                                    i16 = length3;
                                    methodInfoArr = methodInfoArr2;
                                    i17 = extraFlags;
                                    classFileReader2 = classFileReader3;
                                    cArr9 = cArr3;
                                    addConstructorDeclaration(cArr3, decodeParameterTypes != null ? z11 : decodeParameterTypes.length, cArr8, decodeParameterTypes, methodInfo.getArgumentNames(), methodInfo.getModifiers(), cArr6, i11, replace3, i17);
                                    str = str9;
                                    str2 = str8;
                                    str3 = str7;
                                    z13 = z11;
                                } catch (ClassFormatException e14) {
                                    e = e14;
                                    str4 = str9;
                                    str5 = str8;
                                    str6 = str7;
                                    i10 = 2;
                                    this.document.removeAllIndexEntries();
                                    org.eclipse.jdt.internal.core.util.Util.log((IStatus) new Status(i10, str4, str5 + this.document.getPath() + str6, e));
                                    return;
                                }
                            } else {
                                i15 = r63;
                                i16 = length3;
                                methodInfoArr = methodInfoArr2;
                                i17 = extraFlags;
                                classFileReader2 = classFileReader3;
                                cArr9 = cArr3;
                                if (!methodInfo.isClinit()) {
                                    char[] selector = methodInfo.getSelector();
                                    addMethodDeclaration(selector, decodeParameterTypes, decodeReturnType, replace3);
                                    char[] genericSignature3 = methodInfo.getGenericSignature();
                                    char[] cArr13 = genericSignature3 == null ? methodDescriptor : genericSignature3;
                                    if (cArr9.length > 0) {
                                        str = str9;
                                        str2 = str8;
                                        str3 = str7;
                                        cArr10 = cArr9;
                                        c13 = c11;
                                        addMethodDeclaration(cArr9, null, selector, decodeParameterTypes == null ? z11 : decodeParameterTypes.length, cArr13, decodeParameterTypes, methodInfo.getArgumentNames(), decodeReturnType, methodInfo.getModifiers(), cArr6, i11, replace3, i17);
                                        annotations = methodInfo.getAnnotations();
                                        if (annotations != null) {
                                            try {
                                                int length4 = annotations.length;
                                                for (?? r64 = z11; r64 < length4; r64++) {
                                                    addBinaryAnnotation(annotations[r64]);
                                                }
                                            } catch (RuntimeException e15) {
                                                e = e15;
                                                this.document.removeAllIndexEntries();
                                                org.eclipse.jdt.internal.core.util.Util.log((IStatus) new Status(2, str, str2 + this.document.getPath() + str3, e));
                                                return;
                                            } catch (ClassFormatException e16) {
                                                e = e16;
                                                str4 = str;
                                                str5 = str2;
                                                str6 = str3;
                                                i10 = 2;
                                                this.document.removeAllIndexEntries();
                                                org.eclipse.jdt.internal.core.util.Util.log((IStatus) new Status(i10, str4, str5 + this.document.getPath() + str6, e));
                                                return;
                                            }
                                        }
                                        tagBits = methodInfo.getTagBits() & TagBits.AllStandardAnnotationsMask;
                                        if (tagBits == 0) {
                                            addBinaryStandardAnnotations(tagBits);
                                        }
                                        c11 = c13;
                                        cArr3 = cArr10;
                                        length3 = i16;
                                        methodInfoArr2 = methodInfoArr;
                                        extraFlags = i17;
                                        classFileReader3 = classFileReader2;
                                        str9 = str;
                                        str8 = str2;
                                        str7 = str3;
                                        c10 = '.';
                                        i12 = 2;
                                        r63 = i15 + 1;
                                    }
                                }
                                str = str9;
                                str2 = str8;
                                str3 = str7;
                            }
                            cArr10 = cArr9;
                            c13 = c11;
                            annotations = methodInfo.getAnnotations();
                            if (annotations != null) {
                            }
                            tagBits = methodInfo.getTagBits() & TagBits.AllStandardAnnotationsMask;
                            if (tagBits == 0) {
                            }
                            c11 = c13;
                            cArr3 = cArr10;
                            length3 = i16;
                            methodInfoArr2 = methodInfoArr;
                            extraFlags = i17;
                            classFileReader3 = classFileReader2;
                            str9 = str;
                            str8 = str2;
                            str7 = str3;
                            c10 = '.';
                            i12 = 2;
                            r63 = i15 + 1;
                        }
                        i13 = extraFlags;
                        classFileReader = classFileReader3;
                        str = str9;
                        str2 = str8;
                        c12 = c11;
                        str3 = str7;
                        z12 = z13;
                    } else {
                        i13 = extraFlags;
                        classFileReader = classFileReader3;
                        str = JavaCore.PLUGIN_ID;
                        str2 = "The Java indexing could not index ";
                        c12 = c11;
                        str3 = str7;
                        z12 = z10;
                    }
                    if (z12) {
                        addDefaultConstructorDeclaration(cArr7, cArr6, i11, i13);
                    }
                    FieldInfo[] fieldInfoArr = (FieldInfo[]) classFileReader.getFields();
                    if (fieldInfoArr != null) {
                        int length5 = fieldInfoArr.length;
                        for (?? r65 = z11; r65 < length5; r65++) {
                            FieldInfo fieldInfo = fieldInfoArr[r65];
                            addFieldDeclaration(decodeFieldType(replace(c12, '.', fieldInfo.getTypeName())), fieldInfo.getName());
                            IBinaryAnnotation[] annotations3 = fieldInfo.getAnnotations();
                            if (annotations3 != null) {
                                int length6 = annotations3.length;
                                for (?? r82 = z11; r82 < length6; r82++) {
                                    addBinaryAnnotation(annotations3[r82]);
                                }
                            }
                            long tagBits3 = fieldInfo.getTagBits() & TagBits.AllStandardAnnotationsMask;
                            if (tagBits3 != 0) {
                                addBinaryStandardAnnotations(tagBits3);
                            }
                        }
                    }
                    extractReferenceFromConstantPool(bArr, classFileReader);
                } catch (ClassFormatException e17) {
                    e = e17;
                    str = JavaCore.PLUGIN_ID;
                    str2 = "The Java indexing could not index ";
                    str3 = ". This .class file doesn't follow the class file format specification. Please report this issue against the .class file vendor";
                }
            } catch (ClassFormatException e18) {
                e = e18;
                str4 = JavaCore.PLUGIN_ID;
                str5 = "The Java indexing could not index ";
                str6 = ". This .class file doesn't follow the class file format specification. Please report this issue against the .class file vendor";
            }
        } catch (RuntimeException e19) {
            e = e19;
            str = JavaCore.PLUGIN_ID;
            str2 = "The Java indexing could not index ";
            str3 = ". This .class file doesn't follow the class file format specification. Please report this issue against the .class file vendor";
        }
    }

    private char[] replace(char c10, char c11, char[] cArr) {
        if (cArr == null) {
            return null;
        }
        int length = cArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (cArr[i10] == c10) {
                cArr[i10] = c11;
            }
        }
        return cArr;
    }

    private char[] convertToArrayType(char[] cArr, int i10) {
        int length = cArr.length;
        char[] cArr2 = new char[(i10 * 2) + length];
        System.arraycopy(cArr, 0, cArr2, 0, length);
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = (i11 * 2) + length;
            cArr2[i12] = '[';
            cArr2[i12 + 1] = JavaElement.JEM_TYPE_PARAMETER;
        }
        return cArr2;
    }
}
