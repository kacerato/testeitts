package org.eclipse.jdt.internal.compiler.parser;

import org.eclipse.jdt.core.IAnnotatable;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ILocalVariable;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.ISourceImport;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.core.CompilationUnitElementInfo;
import org.eclipse.jdt.internal.core.ImportDeclaration;
import org.eclipse.jdt.internal.core.InitializerElementInfo;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.ModuleDescriptionInfo;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.SourceAnnotationMethodInfo;
import org.eclipse.jdt.internal.core.SourceField;
import org.eclipse.jdt.internal.core.SourceFieldElementInfo;
import org.eclipse.jdt.internal.core.SourceMethod;
import org.eclipse.jdt.internal.core.SourceMethodElementInfo;
import org.eclipse.jdt.internal.core.SourceType;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.util.Util;

public class SourceTypeConverter extends TypeConverter {
    public static final int CONSTRUCTOR = 2;
    public static final int FIELD = 1;
    public static final int FIELD_AND_METHOD = 7;
    public static final int FIELD_INITIALIZATION = 16;
    public static final int LOCAL_TYPE = 32;
    public static final int MEMBER_TYPE = 8;
    public static final int METHOD = 4;
    public static final int NONE = 0;
    private ICompilationUnit cu;
    private int flags;
    private Parser parser;
    private char[] source;
    private CompilationUnitDeclaration unit;

    public static class AnonymousMemberFound extends RuntimeException {
        private static final long serialVersionUID = 1;
    }

    private SourceTypeConverter(int i10, ProblemReporter problemReporter) {
        super(problemReporter, '.');
        this.flags = i10;
    }

    public static CompilationUnitDeclaration buildCompilationUnit(ISourceType[] iSourceTypeArr, int i10, ProblemReporter problemReporter, CompilationResult compilationResult) {
        try {
            return new SourceTypeConverter(i10, problemReporter).convert(iSourceTypeArr, compilationResult);
        } catch (JavaModelException unused) {
            return null;
        }
    }

    public static CompilationUnitDeclaration buildModularCompilationUnit(IModule iModule, ProblemReporter problemReporter, CompilationResult compilationResult) {
        try {
            return new SourceTypeConverter(0, problemReporter).convert(iModule, compilationResult);
        } catch (JavaModelException unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private CompilationUnitDeclaration convert(ISourceType[] iSourceTypeArr, CompilationResult compilationResult) throws JavaModelException {
        CompilationUnitDeclaration compilationUnitDeclaration = new CompilationUnitDeclaration(this.problemReporter, compilationResult, 0);
        this.unit = compilationUnitDeclaration;
        if (iSourceTypeArr.length == 0) {
            return compilationUnitDeclaration;
        }
        SourceTypeElementInfo sourceTypeElementInfo = (SourceTypeElementInfo) iSourceTypeArr[0];
        org.eclipse.jdt.core.ICompilationUnit compilationUnit = sourceTypeElementInfo.getHandle().getCompilationUnit();
        ICompilationUnit iCompilationUnit = (ICompilationUnit) compilationUnit;
        this.cu = iCompilationUnit;
        CompilationUnitElementInfo compilationUnitElementInfo = (CompilationUnitElementInfo) ((JavaElement) iCompilationUnit).getElementInfo();
        if (this.has1_5Compliance && (compilationUnitElementInfo.annotationNumber >= CompilationUnitElementInfo.ANNOTATION_THRESHOLD_FOR_DIET_PARSE || (compilationUnitElementInfo.hasFunctionalTypes && (this.flags & 32) != 0))) {
            if ((this.flags & 32) == 0) {
                return new Parser(this.problemReporter, true).dietParse(this.cu, compilationResult);
            }
            return new Parser(this.problemReporter, true).parse(this.cu, compilationResult);
        }
        int nameSourceStart = sourceTypeElementInfo.getNameSourceStart();
        int nameSourceEnd = sourceTypeElementInfo.getNameSourceEnd();
        String[] strArr = ((PackageFragment) compilationUnit.getParent()).names;
        if (strArr.length > 0) {
            this.unit.currentPackage = createImportReference(strArr, nameSourceStart, nameSourceEnd, false, 0);
        }
        IImportDeclaration[] imports = sourceTypeElementInfo.getHandle().getCompilationUnit().getImports();
        int length = imports.length;
        this.unit.imports = new ImportReference[length];
        for (int i10 = 0; i10 < length; i10++) {
            ImportDeclaration importDeclaration = (ImportDeclaration) imports[i10];
            ISourceImport iSourceImport = (ISourceImport) importDeclaration.getElementInfo();
            String nameWithoutStar = importDeclaration.getNameWithoutStar();
            this.unit.imports[i10] = createImportReference(Util.splitOn('.', nameWithoutStar, 0, nameWithoutStar.length()), iSourceImport.getDeclarationSourceStart(), iSourceImport.getDeclarationSourceEnd(), importDeclaration.isOnDemand(), iSourceImport.getModifiers());
        }
        try {
            int length2 = iSourceTypeArr.length;
            TypeDeclaration[] typeDeclarationArr = new TypeDeclaration[length2];
            for (int i11 = 0; i11 < length2; i11++) {
                typeDeclarationArr[i11] = convert((SourceType) ((SourceTypeElementInfo) iSourceTypeArr[i11]).getHandle(), compilationResult);
            }
            CompilationUnitDeclaration compilationUnitDeclaration2 = this.unit;
            compilationUnitDeclaration2.types = typeDeclarationArr;
            return compilationUnitDeclaration2;
        } catch (AnonymousMemberFound unused) {
            return new Parser(this.problemReporter, true).parse(this.cu, compilationResult);
        }
    }

    private Annotation[] convertAnnotations(IAnnotatable iAnnotatable) throws JavaModelException {
        IAnnotation[] annotations = iAnnotatable.getAnnotations();
        int length = annotations.length;
        Annotation[] annotationArr = new Annotation[length];
        if (length <= 0) {
            return annotationArr;
        }
        char[] source = getSource();
        int i10 = 0;
        for (IAnnotation iAnnotation : annotations) {
            ISourceRange sourceRange = iAnnotation.getSourceRange();
            int offset = sourceRange.getOffset();
            char[] subarray = CharOperation.subarray(source, offset, sourceRange.getLength() + offset);
            if (subarray != null) {
                Expression parseMemberValue = parseMemberValue(subarray);
                if (parseMemberValue instanceof Annotation) {
                    annotationArr[i10] = (Annotation) parseMemberValue;
                    i10++;
                }
            }
        }
        if (length == i10) {
            return annotationArr;
        }
        Annotation[] annotationArr2 = new Annotation[i10];
        System.arraycopy(annotationArr, 0, annotationArr2, 0, i10);
        return annotationArr2;
    }

    private char[] getSource() {
        if (this.source == null) {
            this.source = this.cu.getContents();
        }
        return this.source;
    }

    private Expression parseMemberValue(char[] cArr) {
        if (this.parser == null) {
            this.parser = new Parser(this.problemReporter, true);
        }
        return this.parser.parseMemberValue(cArr, 0, cArr.length, this.unit);
    }

    private CompilationUnitDeclaration convert(IModule iModule, CompilationResult compilationResult) throws JavaModelException {
        this.unit = new CompilationUnitDeclaration(this.problemReporter, compilationResult, 0);
        this.cu = (ICompilationUnit) ((ModuleDescriptionInfo) iModule).getHandle().getCompilationUnit();
        return new Parser(this.problemReporter, true).dietParse(this.cu, compilationResult);
    }

    private Initializer convert(InitializerElementInfo initializerElementInfo, CompilationResult compilationResult) throws JavaModelException {
        Block block = new Block(0);
        Initializer initializer = new Initializer(block, 0);
        int declarationSourceStart = initializerElementInfo.getDeclarationSourceStart();
        int declarationSourceEnd = initializerElementInfo.getDeclarationSourceEnd();
        initializer.declarationSourceStart = declarationSourceStart;
        initializer.sourceStart = declarationSourceStart;
        initializer.declarationSourceEnd = declarationSourceEnd;
        initializer.sourceEnd = declarationSourceEnd;
        initializer.modifiers = initializerElementInfo.getModifiers();
        IJavaElement[] children = initializerElementInfo.getChildren();
        int length = children.length;
        if (length > 0) {
            Statement[] statementArr = new Statement[length];
            for (int i10 = 0; i10 < length; i10++) {
                TypeDeclaration convert = convert((SourceType) children[i10], compilationResult);
                if ((convert.bits & 512) != 0) {
                    QualifiedAllocationExpression qualifiedAllocationExpression = new QualifiedAllocationExpression(convert);
                    qualifiedAllocationExpression.type = convert.superclass;
                    convert.superclass = null;
                    convert.superInterfaces = null;
                    convert.allocation = qualifiedAllocationExpression;
                    statementArr[i10] = qualifiedAllocationExpression;
                } else {
                    statementArr[i10] = convert;
                }
            }
            block.statements = statementArr;
        }
        return initializer;
    }

    private FieldDeclaration convert(SourceField sourceField, TypeDeclaration typeDeclaration, CompilationResult compilationResult) throws JavaModelException {
        char[] initializationSource;
        SourceFieldElementInfo sourceFieldElementInfo = (SourceFieldElementInfo) sourceField.getElementInfo();
        FieldDeclaration fieldDeclaration = new FieldDeclaration();
        int nameSourceStart = sourceFieldElementInfo.getNameSourceStart();
        int nameSourceEnd = sourceFieldElementInfo.getNameSourceEnd();
        fieldDeclaration.name = sourceField.getElementName().toCharArray();
        fieldDeclaration.sourceStart = nameSourceStart;
        fieldDeclaration.sourceEnd = nameSourceEnd;
        fieldDeclaration.declarationSourceStart = sourceFieldElementInfo.getDeclarationSourceStart();
        fieldDeclaration.declarationSourceEnd = sourceFieldElementInfo.getDeclarationSourceEnd();
        int modifiers = sourceFieldElementInfo.getModifiers();
        boolean z10 = (modifiers & 16384) != 0;
        if (z10) {
            fieldDeclaration.modifiers = modifiers & (-16385);
        } else {
            fieldDeclaration.modifiers = modifiers;
            fieldDeclaration.type = createTypeReference(sourceFieldElementInfo.getTypeName(), nameSourceStart, nameSourceEnd);
        }
        if (this.has1_5Compliance) {
            fieldDeclaration.annotations = convertAnnotations(sourceField);
        }
        if ((this.flags & 16) != 0 && (initializationSource = sourceFieldElementInfo.getInitializationSource()) != null) {
            if (this.parser == null) {
                this.parser = new Parser(this.problemReporter, true);
            }
            this.parser.parse(fieldDeclaration, typeDeclaration, this.unit, initializationSource);
        }
        if ((this.flags & 32) != 0) {
            IJavaElement[] children = sourceFieldElementInfo.getChildren();
            int length = children.length;
            if (length == 1) {
                fieldDeclaration.initialization = convert(children[0], z10 ? fieldDeclaration : null, compilationResult);
            } else if (length > 1) {
                ArrayInitializer arrayInitializer = new ArrayInitializer();
                fieldDeclaration.initialization = arrayInitializer;
                Expression[] expressionArr = new Expression[length];
                arrayInitializer.expressions = expressionArr;
                for (int i10 = 0; i10 < length; i10++) {
                    expressionArr[i10] = convert(children[i10], z10 ? fieldDeclaration : null, compilationResult);
                }
            }
        }
        return fieldDeclaration;
    }

    private QualifiedAllocationExpression convert(IJavaElement iJavaElement, FieldDeclaration fieldDeclaration, CompilationResult compilationResult) throws JavaModelException {
        TypeDeclaration convert = convert((SourceType) iJavaElement, compilationResult);
        QualifiedAllocationExpression qualifiedAllocationExpression = new QualifiedAllocationExpression(convert);
        qualifiedAllocationExpression.type = convert.superclass;
        convert.superclass = null;
        convert.superInterfaces = null;
        convert.allocation = qualifiedAllocationExpression;
        if (fieldDeclaration != null) {
            convert.modifiers &= -16385;
            qualifiedAllocationExpression.enumConstant = fieldDeclaration;
            qualifiedAllocationExpression.type = null;
        }
        return qualifiedAllocationExpression;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v2, types: [org.eclipse.jdt.internal.compiler.ast.MethodDeclaration] */
    /* JADX WARN: Type inference failed for: r7v3, types: [org.eclipse.jdt.internal.compiler.ast.MethodDeclaration] */
    /* JADX WARN: Type inference failed for: r7v4, types: [org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration] */
    private AbstractMethodDeclaration convert(SourceMethod sourceMethod, SourceMethodElementInfo sourceMethodElementInfo, CompilationResult compilationResult) throws JavaModelException {
        TypeParameter[] typeParameterArr;
        ?? methodDeclaration;
        ConstructorDeclaration constructorDeclaration;
        IJavaElement[] children;
        int length;
        int length2;
        int nameSourceStart = sourceMethodElementInfo.getNameSourceStart();
        int nameSourceEnd = sourceMethodElementInfo.getNameSourceEnd();
        char[][] typeParameterNames = sourceMethodElementInfo.getTypeParameterNames();
        if (typeParameterNames == null || (length2 = typeParameterNames.length) <= 0) {
            typeParameterArr = null;
        } else {
            char[][][] typeParameterBounds = sourceMethodElementInfo.getTypeParameterBounds();
            typeParameterArr = new TypeParameter[length2];
            for (int i10 = 0; i10 < length2; i10++) {
                typeParameterArr[i10] = createTypeParameter(typeParameterNames[i10], typeParameterBounds[i10], nameSourceStart, nameSourceEnd);
            }
        }
        int modifiers = sourceMethodElementInfo.getModifiers();
        if (sourceMethodElementInfo.isConstructor()) {
            ConstructorDeclaration constructorDeclaration2 = new ConstructorDeclaration(compilationResult);
            constructorDeclaration2.bits &= -129;
            constructorDeclaration2.typeParameters = typeParameterArr;
            constructorDeclaration = constructorDeclaration2;
        } else {
            if (sourceMethodElementInfo.isAnnotationMethod()) {
                methodDeclaration = new AnnotationMethodDeclaration(compilationResult);
                SourceAnnotationMethodInfo sourceAnnotationMethodInfo = (SourceAnnotationMethodInfo) sourceMethodElementInfo;
                boolean z10 = (sourceAnnotationMethodInfo.defaultValueStart == -1 && sourceAnnotationMethodInfo.defaultValueEnd == -1) ? false : true;
                if ((this.flags & 16) != 0 && z10) {
                    char[] subarray = CharOperation.subarray(getSource(), sourceAnnotationMethodInfo.defaultValueStart, sourceAnnotationMethodInfo.defaultValueEnd + 1);
                    if (subarray != null) {
                        Expression parseMemberValue = parseMemberValue(subarray);
                        if (parseMemberValue != null) {
                            methodDeclaration.defaultValue = parseMemberValue;
                        }
                    } else {
                        z10 = false;
                    }
                }
                if (z10) {
                    modifiers |= 131072;
                }
            } else {
                methodDeclaration = new MethodDeclaration(compilationResult);
            }
            methodDeclaration.returnType = createTypeReference(sourceMethodElementInfo.getReturnTypeName(), nameSourceStart, nameSourceEnd);
            methodDeclaration.typeParameters = typeParameterArr;
            constructorDeclaration = methodDeclaration;
        }
        constructorDeclaration.selector = sourceMethod.getElementName().toCharArray();
        boolean z11 = (modifiers & 128) != 0;
        constructorDeclaration.modifiers = modifiers & (-129);
        constructorDeclaration.sourceStart = nameSourceStart;
        constructorDeclaration.sourceEnd = nameSourceEnd;
        constructorDeclaration.declarationSourceStart = sourceMethodElementInfo.getDeclarationSourceStart();
        constructorDeclaration.declarationSourceEnd = sourceMethodElementInfo.getDeclarationSourceEnd();
        if (this.has1_5Compliance) {
            constructorDeclaration.annotations = convertAnnotations(sourceMethod);
        }
        String[] parameterTypes = sourceMethod.getParameterTypes();
        char[][] argumentNames = sourceMethodElementInfo.getArgumentNames();
        int length3 = parameterTypes == null ? 0 : parameterTypes.length;
        if (length3 > 0) {
            ILocalVariable[] parameters = sourceMethod.getParameters();
            long j10 = (nameSourceStart << 32) + nameSourceEnd;
            constructorDeclaration.arguments = new Argument[length3];
            for (int i11 = 0; i11 < length3; i11++) {
                TypeReference createTypeReference = createTypeReference(parameterTypes[i11], nameSourceStart, nameSourceEnd);
                if (z11 && i11 == length3 - 1) {
                    createTypeReference.bits |= 16384;
                }
                constructorDeclaration.arguments[i11] = new Argument(argumentNames[i11], j10, createTypeReference, 0);
                if (this.has1_5Compliance) {
                    constructorDeclaration.arguments[i11].annotations = convertAnnotations(parameters[i11]);
                }
            }
        }
        char[][] exceptionTypeNames = sourceMethodElementInfo.getExceptionTypeNames();
        int length4 = exceptionTypeNames == null ? 0 : exceptionTypeNames.length;
        if (length4 > 0) {
            constructorDeclaration.thrownExceptions = new TypeReference[length4];
            for (int i12 = 0; i12 < length4; i12++) {
                constructorDeclaration.thrownExceptions[i12] = createTypeReference(exceptionTypeNames[i12], nameSourceStart, nameSourceEnd);
            }
        }
        if ((this.flags & 32) != 0 && (length = (children = sourceMethodElementInfo.getChildren()).length) != 0) {
            Statement[] statementArr = new Statement[length];
            for (int i13 = 0; i13 < length; i13++) {
                TypeDeclaration convert = convert((SourceType) children[i13], compilationResult);
                if ((convert.bits & 512) != 0) {
                    QualifiedAllocationExpression qualifiedAllocationExpression = new QualifiedAllocationExpression(convert);
                    qualifiedAllocationExpression.type = convert.superclass;
                    convert.superclass = null;
                    convert.superInterfaces = null;
                    convert.allocation = qualifiedAllocationExpression;
                    statementArr[i13] = qualifiedAllocationExpression;
                } else {
                    statementArr[i13] = convert;
                }
            }
            constructorDeclaration.statements = statementArr;
        }
        return constructorDeclaration;
    }

    private TypeDeclaration convert(SourceType sourceType, CompilationResult compilationResult) throws JavaModelException {
        InitializerElementInfo[] initializerElementInfoArr;
        int i10;
        int i11;
        int i12;
        int i13;
        SourceTypeElementInfo sourceTypeElementInfo = (SourceTypeElementInfo) sourceType.getElementInfo();
        if (!sourceTypeElementInfo.isAnonymousMember()) {
            TypeDeclaration typeDeclaration = new TypeDeclaration(compilationResult);
            if (sourceTypeElementInfo.getEnclosingType() != null) {
                typeDeclaration.bits |= 1024;
            } else if (sourceType.isAnonymous()) {
                typeDeclaration.name = CharOperation.NO_CHAR;
                typeDeclaration.bits |= 768;
            } else if (sourceType.isLocal()) {
                typeDeclaration.bits |= 256;
            }
            if ((typeDeclaration.bits & 512) == 0) {
                typeDeclaration.name = sourceTypeElementInfo.getName();
            }
            typeDeclaration.name = sourceTypeElementInfo.getName();
            int nameSourceStart = sourceTypeElementInfo.getNameSourceStart();
            typeDeclaration.sourceStart = nameSourceStart;
            int nameSourceEnd = sourceTypeElementInfo.getNameSourceEnd();
            typeDeclaration.sourceEnd = nameSourceEnd;
            typeDeclaration.modifiers = sourceTypeElementInfo.getModifiers();
            typeDeclaration.declarationSourceStart = sourceTypeElementInfo.getDeclarationSourceStart();
            int declarationSourceEnd = sourceTypeElementInfo.getDeclarationSourceEnd();
            typeDeclaration.declarationSourceEnd = declarationSourceEnd;
            typeDeclaration.bodyEnd = declarationSourceEnd;
            if (this.has1_5Compliance) {
                typeDeclaration.annotations = convertAnnotations(sourceType);
            }
            char[][] typeParameterNames = sourceTypeElementInfo.getTypeParameterNames();
            if (typeParameterNames.length > 0) {
                int length = typeParameterNames.length;
                char[][][] typeParameterBounds = sourceTypeElementInfo.getTypeParameterBounds();
                typeDeclaration.typeParameters = new TypeParameter[length];
                for (int i14 = 0; i14 < length; i14++) {
                    typeDeclaration.typeParameters[i14] = createTypeParameter(typeParameterNames[i14], typeParameterBounds[i14], nameSourceStart, nameSourceEnd);
                }
            }
            if (sourceTypeElementInfo.getSuperclassName() != null) {
                TypeReference createTypeReference = createTypeReference(sourceTypeElementInfo.getSuperclassName(), nameSourceStart, nameSourceEnd, true);
                typeDeclaration.superclass = createTypeReference;
                createTypeReference.bits |= 16;
            }
            char[][] interfaceNames = sourceTypeElementInfo.getInterfaceNames();
            int length2 = interfaceNames == null ? 0 : interfaceNames.length;
            if (length2 > 0) {
                typeDeclaration.superInterfaces = new TypeReference[length2];
                for (int i15 = 0; i15 < length2; i15++) {
                    typeDeclaration.superInterfaces[i15] = createTypeReference(interfaceNames[i15], nameSourceStart, nameSourceEnd, true);
                    typeDeclaration.superInterfaces[i15].bits |= 16;
                }
            }
            if ((this.flags & 8) != 0) {
                SourceType[] memberTypeHandles = sourceTypeElementInfo.getMemberTypeHandles();
                int length3 = memberTypeHandles.length;
                typeDeclaration.memberTypes = new TypeDeclaration[length3];
                for (int i16 = 0; i16 < length3; i16++) {
                    typeDeclaration.memberTypes[i16] = convert(memberTypeHandles[i16], compilationResult);
                    typeDeclaration.memberTypes[i16].enclosingType = typeDeclaration;
                }
            }
            SourceField[] sourceFieldArr = null;
            if ((this.flags & 32) != 0) {
                initializerElementInfoArr = sourceTypeElementInfo.getInitializers();
                i10 = initializerElementInfoArr.length;
            } else {
                initializerElementInfoArr = null;
                i10 = 0;
            }
            if ((this.flags & 1) != 0) {
                sourceFieldArr = sourceTypeElementInfo.getFieldHandles();
                i11 = sourceFieldArr.length;
            } else {
                i11 = 0;
            }
            int i17 = i11 + i10;
            if (i17 > 0) {
                typeDeclaration.fields = new FieldDeclaration[i17];
                for (int i18 = 0; i18 < i10; i18++) {
                    typeDeclaration.fields[i18] = convert(initializerElementInfoArr[i18], compilationResult);
                }
                int i19 = 0;
                while (i10 < i17) {
                    typeDeclaration.fields[i10] = convert(sourceFieldArr[i19], typeDeclaration, compilationResult);
                    i10++;
                    i19++;
                }
            }
            int i20 = this.flags;
            int i21 = (i20 & 2) != 0 ? 1 : 0;
            boolean z10 = (i20 & 4) != 0;
            if (i21 != 0 || z10) {
                SourceMethod[] methodHandles = sourceTypeElementInfo.getMethodHandles();
                int length4 = methodHandles.length;
                int kind = TypeDeclaration.kind(typeDeclaration.modifiers);
                boolean z11 = kind == 2 || kind == 4;
                if (z11) {
                    i12 = z10 ? length4 : 0;
                    i13 = 0;
                } else {
                    i13 = i21;
                    i12 = 0;
                    for (SourceMethod sourceMethod : methodHandles) {
                        if (sourceMethod.isConstructor()) {
                            if (i21 != 0) {
                                i12++;
                                i13 = 0;
                            }
                        } else if (z10) {
                            i12++;
                        }
                    }
                }
                AbstractMethodDeclaration[] abstractMethodDeclarationArr = new AbstractMethodDeclaration[i12 + i13];
                typeDeclaration.methods = abstractMethodDeclarationArr;
                if (i13 != 0) {
                    abstractMethodDeclarationArr[0] = typeDeclaration.createDefaultConstructor(false, false);
                }
                boolean z12 = false;
                int i22 = 0;
                for (SourceMethod sourceMethod2 : methodHandles) {
                    SourceMethodElementInfo sourceMethodElementInfo = (SourceMethodElementInfo) sourceMethod2.getElementInfo();
                    boolean isConstructor = sourceMethodElementInfo.isConstructor();
                    if ((sourceMethodElementInfo.getModifiers() & 1024) != 0) {
                        z12 = true;
                    }
                    if ((isConstructor && i21 != 0) || (!isConstructor && z10)) {
                        AbstractMethodDeclaration convert = convert(sourceMethod2, sourceMethodElementInfo, compilationResult);
                        if (z11 || convert.isAbstract()) {
                            convert.modifiers |= 16777216;
                        }
                        typeDeclaration.methods[i22 + i13] = convert;
                        i22++;
                    }
                }
                if (z12) {
                    typeDeclaration.bits |= 2048;
                }
            }
            return typeDeclaration;
        }
        throw new AnonymousMemberFound();
    }
}
