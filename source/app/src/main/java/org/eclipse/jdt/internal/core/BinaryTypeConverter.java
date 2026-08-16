package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.parser.TypeConverter;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.core.util.HashSetOfCharArrayArray;
import org.eclipse.jdt.internal.core.util.Util;

public class BinaryTypeConverter extends TypeConverter {
    private CompilationResult compilationResult;
    private HashSetOfCharArrayArray typeNames;

    public BinaryTypeConverter(ProblemReporter problemReporter, CompilationResult compilationResult, HashSetOfCharArrayArray hashSetOfCharArrayArray) {
        super(problemReporter, '$');
        this.compilationResult = compilationResult;
        this.typeNames = hashSetOfCharArrayArray;
    }

    private FieldDeclaration convert(IField iField, IType iType) throws JavaModelException {
        TypeReference createTypeReference = createTypeReference(iField.getTypeSignature());
        if (createTypeReference == null) {
            return null;
        }
        FieldDeclaration fieldDeclaration = new FieldDeclaration();
        fieldDeclaration.name = iField.getElementName().toCharArray();
        fieldDeclaration.type = createTypeReference;
        fieldDeclaration.modifiers = iField.getFlags();
        return fieldDeclaration;
    }

    private TypeReference createTypeReference(String str) {
        TypeReference createTypeReference = createTypeReference(str, 0, 0);
        HashSetOfCharArrayArray hashSetOfCharArrayArray = this.typeNames;
        if (hashSetOfCharArrayArray != null && (createTypeReference instanceof QualifiedTypeReference)) {
            hashSetOfCharArrayArray.add(((QualifiedTypeReference) createTypeReference).tokens);
        }
        return createTypeReference;
    }

    private static char[][] stringArrayToCharArray(String[] strArr) {
        if (strArr == null) {
            return null;
        }
        int length = strArr.length;
        if (length == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        char[][] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr[i10] = strArr[i10].toCharArray();
        }
        return cArr;
    }

    public ImportReference[] buildImports(ClassFileReader classFileReader) {
        char[] utf8At;
        int[] constantPoolOffsets = classFileReader.getConstantPoolOffsets();
        int length = constantPoolOffsets.length;
        for (int i10 = 0; i10 < length; i10++) {
            int u1At = classFileReader.u1At(constantPoolOffsets[i10]);
            if (u1At == 7) {
                int i11 = constantPoolOffsets[classFileReader.u2At(constantPoolOffsets[i10] + 1)];
                utf8At = classFileReader.utf8At(i11 + 3, classFileReader.u2At(i11 + 1));
            } else if (u1At == 10 || u1At == 11) {
                int i12 = constantPoolOffsets[classFileReader.u2At(constantPoolOffsets[classFileReader.u2At(constantPoolOffsets[i10] + 3)] + 3)];
                utf8At = classFileReader.utf8At(i12 + 3, classFileReader.u2At(i12 + 1));
            } else {
                utf8At = null;
            }
            if (utf8At == null || (utf8At.length > 0 && utf8At[0] == '[')) {
                break;
            }
            this.typeNames.add(CharOperation.splitOn('/', utf8At));
        }
        ImportReference[] importReferenceArr = new ImportReference[this.typeNames.size()];
        int i13 = 0;
        for (char[][] cArr : this.typeNames.set) {
            if (cArr != null) {
                importReferenceArr[i13] = new ImportReference(cArr, new long[cArr.length], false, 0);
                i13++;
            }
        }
        return importReferenceArr;
    }

    public TypeDeclaration buildTypeDeclaration(IType iType, CompilationUnitDeclaration compilationUnitDeclaration) throws JavaModelException {
        char[][] charArrays = Util.toCharArrays(((PackageFragment) iType.getPackageFragment()).names);
        if (charArrays.length > 0) {
            compilationUnitDeclaration.currentPackage = new ImportReference(charArrays, new long[1], false, 0);
        }
        TypeDeclaration convert = convert(iType, null, null);
        IType declaringType = iType.getDeclaringType();
        TypeDeclaration typeDeclaration = convert;
        while (true) {
            IType iType2 = declaringType;
            IType iType3 = iType;
            iType = iType2;
            if (iType == null) {
                compilationUnitDeclaration.types = new TypeDeclaration[]{typeDeclaration};
                return convert;
            }
            typeDeclaration = convert(iType, iType3, typeDeclaration);
            declaringType = iType.getDeclaringType();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private AbstractMethodDeclaration convert(IMethod iMethod, IType iType) throws JavaModelException {
        org.eclipse.jdt.internal.compiler.ast.TypeParameter[] typeParameterArr;
        MethodDeclaration methodDeclaration;
        ITypeParameter[] typeParameters;
        if (!this.has1_5Compliance || (typeParameters = iMethod.getTypeParameters()) == null || typeParameters.length <= 0) {
            typeParameterArr = null;
        } else {
            int length = typeParameters.length;
            typeParameterArr = new org.eclipse.jdt.internal.compiler.ast.TypeParameter[length];
            for (int i10 = 0; i10 < length; i10++) {
                ITypeParameter iTypeParameter = typeParameters[i10];
                typeParameterArr[i10] = createTypeParameter(iTypeParameter.getElementName().toCharArray(), stringArrayToCharArray(iTypeParameter.getBounds()), 0, 0);
            }
        }
        if (iMethod.isConstructor()) {
            ConstructorDeclaration constructorDeclaration = new ConstructorDeclaration(this.compilationResult);
            constructorDeclaration.bits &= -129;
            constructorDeclaration.typeParameters = typeParameterArr;
            methodDeclaration = constructorDeclaration;
        } else {
            MethodDeclaration annotationMethodDeclaration = iType.isAnnotation() ? new AnnotationMethodDeclaration(this.compilationResult) : new MethodDeclaration(this.compilationResult);
            TypeReference createTypeReference = createTypeReference(iMethod.getReturnType());
            if (createTypeReference == null) {
                return null;
            }
            annotationMethodDeclaration.returnType = createTypeReference;
            annotationMethodDeclaration.typeParameters = typeParameterArr;
            methodDeclaration = annotationMethodDeclaration;
        }
        methodDeclaration.selector = iMethod.getElementName().toCharArray();
        int flags = iMethod.getFlags();
        boolean isVarargs = Flags.isVarargs(flags);
        methodDeclaration.modifiers = flags & (-129);
        String[] parameterTypes = iMethod.getParameterTypes();
        String[] parameterNames = iMethod.getParameterNames();
        int length2 = parameterTypes == null ? 0 : parameterTypes.length;
        int i11 = (iMethod.isConstructor() && iType.isMember() && !Flags.isStatic(iType.getFlags())) ? 1 : 0;
        int i12 = length2 - i11;
        methodDeclaration.arguments = new Argument[i12];
        for (int i13 = 0; i13 < i12; i13++) {
            TypeReference createTypeReference2 = createTypeReference(parameterTypes[i11 + i13]);
            if (createTypeReference2 == null) {
                return null;
            }
            if (isVarargs && i13 == i12 - 1) {
                createTypeReference2.bits |= 16384;
            }
            methodDeclaration.arguments[i13] = new Argument(parameterNames[i13].toCharArray(), 0L, createTypeReference2, 0);
        }
        String[] exceptionTypes = iMethod.getExceptionTypes();
        int length3 = exceptionTypes == null ? 0 : exceptionTypes.length;
        if (length3 > 0) {
            methodDeclaration.thrownExceptions = new TypeReference[length3];
            for (int i14 = 0; i14 < length3; i14++) {
                TypeReference createTypeReference3 = createTypeReference(exceptionTypes[i14]);
                if (createTypeReference3 == null) {
                    return null;
                }
                methodDeclaration.thrownExceptions[i14] = createTypeReference3;
            }
        }
        return methodDeclaration;
    }

    private TypeDeclaration convert(IType iType, IType iType2, TypeDeclaration typeDeclaration) throws JavaModelException {
        int i10;
        ITypeParameter[] typeParameters;
        TypeReference createTypeReference;
        TypeDeclaration typeDeclaration2 = new TypeDeclaration(this.compilationResult);
        if (iType.getDeclaringType() != null) {
            typeDeclaration2.bits |= 1024;
        }
        typeDeclaration2.name = iType.getElementName().toCharArray();
        typeDeclaration2.modifiers = iType.getFlags();
        if (iType.getSuperclassName() != null && (createTypeReference = createTypeReference(iType.getSuperclassTypeSignature())) != null) {
            typeDeclaration2.superclass = createTypeReference;
            createTypeReference.bits |= 16;
        }
        String[] superInterfaceTypeSignatures = iType.getSuperInterfaceTypeSignatures();
        int length = superInterfaceTypeSignatures == null ? 0 : superInterfaceTypeSignatures.length;
        typeDeclaration2.superInterfaces = new TypeReference[length];
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            TypeReference createTypeReference2 = createTypeReference(superInterfaceTypeSignatures[i12]);
            if (createTypeReference2 != null) {
                typeDeclaration2.superInterfaces[i11] = createTypeReference2;
                i11++;
                createTypeReference2.bits |= 16;
            }
        }
        if (i11 != length) {
            FieldDeclaration[] fieldDeclarationArr = typeDeclaration2.fields;
            TypeReference[] typeReferenceArr = new TypeReference[length];
            typeDeclaration2.superInterfaces = typeReferenceArr;
            System.arraycopy(fieldDeclarationArr, 0, typeReferenceArr, 0, length);
        }
        if (this.has1_5Compliance && (typeParameters = iType.getTypeParameters()) != null && typeParameters.length > 0) {
            int length2 = typeParameters.length;
            org.eclipse.jdt.internal.compiler.ast.TypeParameter[] typeParameterArr = new org.eclipse.jdt.internal.compiler.ast.TypeParameter[length2];
            for (int i13 = 0; i13 < length2; i13++) {
                ITypeParameter iTypeParameter = typeParameters[i13];
                typeParameterArr[i13] = createTypeParameter(iTypeParameter.getElementName().toCharArray(), stringArrayToCharArray(iTypeParameter.getBounds()), 0, 0);
            }
            typeDeclaration2.typeParameters = typeParameterArr;
        }
        IType[] types = iType.getTypes();
        int length3 = types == null ? 0 : types.length;
        typeDeclaration2.memberTypes = new TypeDeclaration[length3];
        for (int i14 = 0; i14 < length3; i14++) {
            if (iType2 != null && iType2.getFullyQualifiedName().equals(types[i14].getFullyQualifiedName())) {
                typeDeclaration2.memberTypes[i14] = typeDeclaration;
            } else {
                typeDeclaration2.memberTypes[i14] = convert(types[i14], null, null);
            }
            typeDeclaration2.memberTypes[i14].enclosingType = typeDeclaration2;
        }
        IField[] fields = iType.getFields();
        int length4 = fields == null ? 0 : fields.length;
        typeDeclaration2.fields = new FieldDeclaration[length4];
        int i15 = 0;
        for (int i16 = 0; i16 < length4; i16++) {
            FieldDeclaration convert = convert(fields[i16], iType);
            if (convert != null) {
                typeDeclaration2.fields[i15] = convert;
                i15++;
            }
        }
        if (i15 != length4) {
            FieldDeclaration[] fieldDeclarationArr2 = typeDeclaration2.fields;
            FieldDeclaration[] fieldDeclarationArr3 = new FieldDeclaration[i15];
            typeDeclaration2.fields = fieldDeclarationArr3;
            System.arraycopy(fieldDeclarationArr2, 0, fieldDeclarationArr3, 0, i15);
        }
        IMethod[] methods = iType.getMethods();
        int length5 = methods == null ? 0 : methods.length;
        int i17 = 0;
        while (true) {
            if (i17 >= length5) {
                i10 = 1;
                break;
            }
            if (methods[i17].isConstructor()) {
                i10 = 0;
                break;
            }
            i17++;
        }
        boolean isInterface = iType.isInterface();
        int i18 = isInterface ? 0 : i10;
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = new AbstractMethodDeclaration[length5 + i18];
        typeDeclaration2.methods = abstractMethodDeclarationArr;
        if (i18 != 0) {
            abstractMethodDeclarationArr[0] = typeDeclaration2.createDefaultConstructor(false, false);
        }
        int i19 = 0;
        boolean z10 = false;
        for (int i20 = 0; i20 < length5; i20++) {
            AbstractMethodDeclaration convert2 = convert(methods[i20], iType);
            if (convert2 != null) {
                boolean isAbstract = convert2.isAbstract();
                if (isAbstract || isInterface) {
                    convert2.modifiers |= 16777216;
                }
                if (isAbstract) {
                    z10 = true;
                }
                typeDeclaration2.methods[i19 + i18] = convert2;
                i19++;
            }
        }
        if (i19 != length5) {
            AbstractMethodDeclaration[] abstractMethodDeclarationArr2 = typeDeclaration2.methods;
            int i21 = i19 + i18;
            AbstractMethodDeclaration[] abstractMethodDeclarationArr3 = new AbstractMethodDeclaration[i21];
            typeDeclaration2.methods = abstractMethodDeclarationArr3;
            System.arraycopy(abstractMethodDeclarationArr2, 0, abstractMethodDeclarationArr3, 0, i21);
        }
        if (z10) {
            typeDeclaration2.bits |= 2048;
        }
        return typeDeclaration2;
    }
}
