package org.eclipse.jdt.internal.compiler;

import java.util.ArrayList;
import java.util.Map;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ISourceElementRequestor;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.ArrayReference;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.ClassLiteralAccess;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.ExportsStatement;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleReference;
import org.eclipse.jdt.internal.compiler.ast.OpensStatement;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToInt;

public class SourceElementNotifier {
    int eofPosition;
    int initialPosition;
    LocalDeclarationVisitor localDeclarationVisitor;
    int nestedTypeIndex;
    Map<ASTNode, char[][]> nodesToCategories;
    boolean reportReferenceInfo;
    ISourceElementRequestor requestor;
    HashtableOfObjectToInt sourceEnds;
    char[][] superTypeNames;
    char[][] typeNames;

    public class LocalDeclarationVisitor extends ASTVisitor {
        public ImportReference currentPackage;
        ArrayList declaringTypes;

        public LocalDeclarationVisitor() {
        }

        public TypeDeclaration peekDeclaringType() {
            int size;
            ArrayList arrayList = this.declaringTypes;
            if (arrayList == null || (size = arrayList.size()) == 0) {
                return null;
            }
            return (TypeDeclaration) this.declaringTypes.get(size - 1);
        }

        public void popDeclaringType() {
            this.declaringTypes.remove(r0.size() - 1);
        }

        public void pushDeclaringType(TypeDeclaration typeDeclaration) {
            if (this.declaringTypes == null) {
                this.declaringTypes = new ArrayList();
            }
            this.declaringTypes.add(typeDeclaration);
        }

        @Override
        public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
            SourceElementNotifier.this.notifySourceElementRequestor(typeDeclaration, true, peekDeclaringType(), this.currentPackage);
            return false;
        }

        @Override
        public boolean visit(TypeDeclaration typeDeclaration, ClassScope classScope) {
            SourceElementNotifier.this.notifySourceElementRequestor(typeDeclaration, true, peekDeclaringType(), this.currentPackage);
            return false;
        }
    }

    public SourceElementNotifier(ISourceElementRequestor iSourceElementRequestor, boolean z10) {
        this.localDeclarationVisitor = null;
        this.requestor = iSourceElementRequestor;
        if (z10) {
            this.localDeclarationVisitor = new LocalDeclarationVisitor();
        }
        this.typeNames = new char[4];
        this.superTypeNames = new char[4];
        this.nestedTypeIndex = 0;
    }

    private void fillModuleInfo(ModuleDeclaration moduleDeclaration, ISourceElementRequestor.ModuleInfo moduleInfo) {
        int i10 = moduleDeclaration.requiresCount;
        if (i10 > 0) {
            ISourceElementRequestor.RequiresInfo[] requiresInfoArr = new ISourceElementRequestor.RequiresInfo[i10];
            for (int i11 = 0; i11 < moduleDeclaration.requiresCount; i11++) {
                ISourceElementRequestor.RequiresInfo requiresInfo = new ISourceElementRequestor.RequiresInfo();
                requiresInfo.moduleName = CharOperation.concatWith(moduleDeclaration.requires[i11].module.tokens, '.');
                requiresInfo.modifiers = moduleDeclaration.requires[i11].modifiers;
                requiresInfoArr[i11] = requiresInfo;
            }
            moduleInfo.requires = requiresInfoArr;
        }
        int i12 = moduleDeclaration.exportsCount;
        if (i12 > 0) {
            ISourceElementRequestor.PackageExportInfo[] packageExportInfoArr = new ISourceElementRequestor.PackageExportInfo[i12];
            for (int i13 = 0; i13 < moduleDeclaration.exportsCount; i13++) {
                ISourceElementRequestor.PackageExportInfo packageExportInfo = new ISourceElementRequestor.PackageExportInfo();
                ExportsStatement exportsStatement = moduleDeclaration.exports[i13];
                packageExportInfo.pkgName = exportsStatement.pkgName;
                ModuleReference[] moduleReferenceArr = exportsStatement.targets;
                if (moduleReferenceArr == null) {
                    packageExportInfo.targets = CharOperation.NO_CHAR_CHAR;
                } else {
                    packageExportInfo.targets = new char[moduleReferenceArr.length];
                    int i14 = 0;
                    while (true) {
                        char[][] cArr = packageExportInfo.targets;
                        if (i14 >= cArr.length) {
                            break;
                        }
                        cArr[i14] = CharOperation.concatWith(exportsStatement.targets[i14].tokens, '.');
                        i14++;
                    }
                }
                packageExportInfoArr[i13] = packageExportInfo;
            }
            moduleInfo.exports = packageExportInfoArr;
        }
        int i15 = moduleDeclaration.servicesCount;
        if (i15 > 0) {
            ISourceElementRequestor.ServicesInfo[] servicesInfoArr = new ISourceElementRequestor.ServicesInfo[i15];
            for (int i16 = 0; i16 < i15; i16++) {
                ISourceElementRequestor.ServicesInfo servicesInfo = new ISourceElementRequestor.ServicesInfo();
                servicesInfo.serviceName = CharOperation.concatWith(moduleDeclaration.services[i16].serviceInterface.getParameterizedTypeName(), '.');
                servicesInfo.implNames = new char[moduleDeclaration.services[i16].implementations.length];
                int i17 = 0;
                while (true) {
                    char[][] cArr2 = servicesInfo.implNames;
                    if (i17 >= cArr2.length) {
                        break;
                    }
                    cArr2[i17] = CharOperation.concatWith(moduleDeclaration.services[i16].implementations[i17].getParameterizedTypeName(), '.');
                    i17++;
                }
                servicesInfoArr[i16] = servicesInfo;
            }
            moduleInfo.services = servicesInfoArr;
        }
        int i18 = moduleDeclaration.usesCount;
        if (i18 > 0) {
            char[][] cArr3 = new char[i18];
            for (int i19 = 0; i19 < i18; i19++) {
                cArr3[i19] = CharOperation.concatWith(moduleDeclaration.uses[i19].serviceInterface.getParameterizedTypeName(), '.');
            }
            moduleInfo.usedServices = cArr3;
        }
        int i20 = moduleDeclaration.opensCount;
        if (i20 > 0) {
            ISourceElementRequestor.PackageExportInfo[] packageExportInfoArr2 = new ISourceElementRequestor.PackageExportInfo[i20];
            for (int i21 = 0; i21 < moduleDeclaration.opensCount; i21++) {
                ISourceElementRequestor.PackageExportInfo packageExportInfo2 = new ISourceElementRequestor.PackageExportInfo();
                OpensStatement opensStatement = moduleDeclaration.opens[i21];
                packageExportInfo2.pkgName = opensStatement.pkgName;
                ModuleReference[] moduleReferenceArr2 = opensStatement.targets;
                if (moduleReferenceArr2 == null) {
                    packageExportInfo2.targets = CharOperation.NO_CHAR_CHAR;
                } else {
                    packageExportInfo2.targets = new char[moduleReferenceArr2.length];
                    int i22 = 0;
                    while (true) {
                        char[][] cArr4 = packageExportInfo2.targets;
                        if (i22 >= cArr4.length) {
                            break;
                        }
                        cArr4[i22] = CharOperation.concatWith(opensStatement.targets[i22].tokens, '.');
                        i22++;
                    }
                }
                packageExportInfoArr2[i21] = packageExportInfo2;
            }
            moduleInfo.opens = packageExportInfoArr2;
        }
    }

    private ISourceElementRequestor.TypeParameterInfo[] getTypeParameterInfos(TypeParameter[] typeParameterArr) {
        if (typeParameterArr == null) {
            return null;
        }
        int length = typeParameterArr.length;
        ISourceElementRequestor.TypeParameterInfo[] typeParameterInfoArr = new ISourceElementRequestor.TypeParameterInfo[length];
        for (int i10 = 0; i10 < length; i10++) {
            TypeParameter typeParameter = typeParameterArr[i10];
            char[][] typeParameterBounds = getTypeParameterBounds(typeParameter);
            ISourceElementRequestor.TypeParameterInfo typeParameterInfo = new ISourceElementRequestor.TypeParameterInfo();
            typeParameterInfo.typeAnnotated = (typeParameter.bits & 1048576) != 0;
            typeParameterInfo.declarationStart = typeParameter.declarationSourceStart;
            typeParameterInfo.declarationEnd = typeParameter.declarationSourceEnd;
            typeParameterInfo.name = typeParameter.name;
            typeParameterInfo.nameSourceStart = typeParameter.sourceStart;
            typeParameterInfo.nameSourceEnd = typeParameter.sourceEnd;
            typeParameterInfo.bounds = typeParameterBounds;
            typeParameterInfoArr[i10] = typeParameterInfo;
        }
        return typeParameterInfoArr;
    }

    private boolean hasDeprecatedAnnotation(Annotation[] annotationArr) {
        if (annotationArr != null) {
            for (Annotation annotation : annotationArr) {
                if (CharOperation.equals(annotation.type.getLastToken(), TypeConstants.JAVA_LANG_DEPRECATED[2])) {
                    return true;
                }
            }
        }
        return false;
    }

    private static void quickSort(ASTNode[] aSTNodeArr, int i10, int i11) {
        ASTNode aSTNode;
        ASTNode aSTNode2 = aSTNodeArr[((i11 - i10) / 2) + i10];
        int i12 = i10;
        int i13 = i11;
        while (true) {
            if (aSTNodeArr[i12].sourceStart >= aSTNode2.sourceStart) {
                while (true) {
                    int i14 = aSTNode2.sourceStart;
                    aSTNode = aSTNodeArr[i13];
                    if (i14 >= aSTNode.sourceStart) {
                        break;
                    } else {
                        i13--;
                    }
                }
                if (i12 <= i13) {
                    ASTNode aSTNode3 = aSTNodeArr[i12];
                    aSTNodeArr[i12] = aSTNode;
                    aSTNodeArr[i13] = aSTNode3;
                    i12++;
                    i13--;
                }
                if (i12 > i13) {
                    break;
                }
            } else {
                i12++;
            }
        }
        if (i10 < i13) {
            quickSort(aSTNodeArr, i10, i13);
        }
        if (i12 < i11) {
            quickSort(aSTNodeArr, i12, i11);
        }
    }

    private void reset() {
        this.typeNames = new char[4];
        this.superTypeNames = new char[4];
        this.nestedTypeIndex = 0;
        this.sourceEnds = null;
    }

    private int sourceEnd(TypeDeclaration typeDeclaration) {
        if ((typeDeclaration.bits & 512) == 0) {
            return typeDeclaration.sourceEnd;
        }
        QualifiedAllocationExpression qualifiedAllocationExpression = typeDeclaration.allocation;
        FieldDeclaration fieldDeclaration = qualifiedAllocationExpression.enumConstant;
        return fieldDeclaration != null ? fieldDeclaration.sourceEnd : qualifiedAllocationExpression.type.sourceEnd;
    }

    private void visitIfNeeded(AbstractMethodDeclaration abstractMethodDeclaration) {
        ExplicitConstructorCall explicitConstructorCall;
        LocalDeclarationVisitor localDeclarationVisitor = this.localDeclarationVisitor;
        if (localDeclarationVisitor == null || (abstractMethodDeclaration.bits & 2) == 0) {
            return;
        }
        if ((abstractMethodDeclaration instanceof ConstructorDeclaration) && (explicitConstructorCall = ((ConstructorDeclaration) abstractMethodDeclaration).constructorCall) != null) {
            explicitConstructorCall.traverse(localDeclarationVisitor, abstractMethodDeclaration.scope);
        }
        Statement[] statementArr = abstractMethodDeclaration.statements;
        if (statementArr != null) {
            int length = statementArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                abstractMethodDeclaration.statements[i10].traverse(this.localDeclarationVisitor, abstractMethodDeclaration.scope);
            }
        }
    }

    public Object[][] getArgumentInfos(Argument[] argumentArr) {
        int length = argumentArr.length;
        char[][] cArr = new char[length];
        char[][] cArr2 = new char[length];
        ISourceElementRequestor.ParameterInfo[] parameterInfoArr = new ISourceElementRequestor.ParameterInfo[length];
        for (int i10 = 0; i10 < length; i10++) {
            Argument argument = argumentArr[i10];
            cArr[i10] = CharOperation.concatWith(argument.type.getParameterizedTypeName(), '.');
            char[] cArr3 = argument.name;
            cArr2[i10] = cArr3;
            ISourceElementRequestor.ParameterInfo parameterInfo = new ISourceElementRequestor.ParameterInfo();
            parameterInfo.declarationStart = argument.declarationSourceStart;
            parameterInfo.declarationEnd = argument.declarationSourceEnd;
            parameterInfo.nameSourceStart = argument.sourceStart;
            parameterInfo.nameSourceEnd = argument.sourceEnd;
            parameterInfo.modifiers = argument.modifiers;
            parameterInfo.name = cArr3;
            parameterInfoArr[i10] = parameterInfo;
        }
        return new Object[][]{parameterInfoArr, new char[][][]{cArr, cArr2}};
    }

    public char[][] getInterfaceNames(TypeDeclaration typeDeclaration) {
        char[][] cArr;
        int i10;
        QualifiedAllocationExpression qualifiedAllocationExpression;
        TypeReference typeReference;
        TypeReference[] typeReferenceArr = typeDeclaration.superInterfaces;
        if (typeReferenceArr != null) {
            i10 = typeReferenceArr.length;
            cArr = new char[i10];
        } else if ((typeDeclaration.bits & 512) == 0 || (qualifiedAllocationExpression = typeDeclaration.allocation) == null || (typeReference = qualifiedAllocationExpression.type) == null) {
            cArr = null;
            i10 = 0;
        } else {
            TypeReference[] typeReferenceArr2 = {typeReference};
            cArr = new char[1];
            i10 = 1;
            typeReferenceArr = typeReferenceArr2;
        }
        if (typeReferenceArr != null) {
            for (int i11 = 0; i11 < i10; i11++) {
                cArr[i11] = CharOperation.concatWith(typeReferenceArr[i11].getParameterizedTypeName(), '.');
            }
        }
        return cArr;
    }

    public char[] getSuperclassName(TypeDeclaration typeDeclaration) {
        TypeReference typeReference = typeDeclaration.superclass;
        if (typeReference != null) {
            return CharOperation.concatWith(typeReference.getParameterizedTypeName(), '.');
        }
        return null;
    }

    public char[][] getThrownExceptions(AbstractMethodDeclaration abstractMethodDeclaration) {
        TypeReference[] typeReferenceArr = abstractMethodDeclaration.thrownExceptions;
        if (typeReferenceArr == null) {
            return null;
        }
        int length = typeReferenceArr.length;
        char[][] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr[i10] = CharOperation.concatWith(typeReferenceArr[i10].getParameterizedTypeName(), '.');
        }
        return cArr;
    }

    public char[][] getTypeParameterBounds(TypeParameter typeParameter) {
        TypeReference typeReference = typeParameter.type;
        TypeReference[] typeReferenceArr = typeParameter.bounds;
        if (typeReference == null) {
            return CharOperation.NO_CHAR_CHAR;
        }
        int i10 = 0;
        if (typeReferenceArr == null) {
            return new char[][]{CharOperation.concatWith(typeReference.getParameterizedTypeName(), '.')};
        }
        int length = typeReferenceArr.length;
        char[][] cArr = new char[length + 1];
        cArr[0] = CharOperation.concatWith(typeReference.getParameterizedTypeName(), '.');
        while (i10 < length) {
            int i11 = i10 + 1;
            cArr[i11] = CharOperation.concatWith(typeReferenceArr[i10].getParameterizedTypeName(), '.');
            i10 = i11;
        }
        return cArr;
    }

    public void notifySourceElementRequestor(AbstractMethodDeclaration abstractMethodDeclaration, TypeDeclaration typeDeclaration, ImportReference importReference) {
        boolean z10;
        char[][] cArr;
        ISourceElementRequestor.ParameterInfo[] parameterInfoArr;
        char[][] cArr2;
        Expression expression;
        ExplicitConstructorCall explicitConstructorCall;
        ExplicitConstructorCall explicitConstructorCall2;
        boolean z11 = this.initialPosition <= abstractMethodDeclaration.declarationSourceStart && this.eofPosition >= abstractMethodDeclaration.declarationSourceEnd;
        if (abstractMethodDeclaration.isClinit()) {
            visitIfNeeded(abstractMethodDeclaration);
            return;
        }
        if (abstractMethodDeclaration.isDefaultConstructor()) {
            if (!this.reportReferenceInfo || (explicitConstructorCall2 = ((ConstructorDeclaration) abstractMethodDeclaration).constructorCall) == null) {
                return;
            }
            int i10 = explicitConstructorCall2.accessMode;
            if (i10 == 1 || i10 == 2) {
                ISourceElementRequestor iSourceElementRequestor = this.requestor;
                char[] cArr3 = this.superTypeNames[this.nestedTypeIndex - 1];
                Expression[] expressionArr = explicitConstructorCall2.arguments;
                iSourceElementRequestor.acceptConstructorReference(cArr3, expressionArr != null ? expressionArr.length : 0, explicitConstructorCall2.sourceStart);
                return;
            }
            if (i10 != 3) {
                return;
            }
            ISourceElementRequestor iSourceElementRequestor2 = this.requestor;
            char[] cArr4 = this.typeNames[this.nestedTypeIndex - 1];
            Expression[] expressionArr2 = explicitConstructorCall2.arguments;
            iSourceElementRequestor2.acceptConstructorReference(cArr4, expressionArr2 != null ? expressionArr2.length : 0, explicitConstructorCall2.sourceStart);
            return;
        }
        Argument[] argumentArr = abstractMethodDeclaration.arguments;
        ISourceElementRequestor.MethodInfo methodInfo = new ISourceElementRequestor.MethodInfo();
        methodInfo.typeAnnotated = (abstractMethodDeclaration.bits & 1048576) != 0;
        if (argumentArr != null) {
            Object[][] argumentInfos = getArgumentInfos(argumentArr);
            parameterInfoArr = (ISourceElementRequestor.ParameterInfo[]) argumentInfos[0];
            Object[] objArr = argumentInfos[1];
            cArr2 = (char[][]) objArr[0];
            cArr = (char[][]) objArr[1];
            z10 = argumentArr[argumentArr.length - 1].isVarArgs();
        } else {
            z10 = false;
            cArr = null;
            parameterInfoArr = null;
            cArr2 = null;
        }
        char[][] thrownExceptions = getThrownExceptions(abstractMethodDeclaration);
        if (abstractMethodDeclaration.isConstructor()) {
            int i11 = this.sourceEnds.get(abstractMethodDeclaration);
            if (z11) {
                int i12 = abstractMethodDeclaration.modifiers & 1114111;
                if (z10) {
                    i12 |= 128;
                }
                if (hasDeprecatedAnnotation(abstractMethodDeclaration.annotations)) {
                    i12 |= 1048576;
                }
                methodInfo.isConstructor = true;
                methodInfo.declarationStart = abstractMethodDeclaration.declarationSourceStart;
                methodInfo.modifiers = i12;
                methodInfo.name = abstractMethodDeclaration.selector;
                methodInfo.nameSourceStart = abstractMethodDeclaration.sourceStart;
                methodInfo.nameSourceEnd = i11;
                methodInfo.parameterTypes = cArr2;
                methodInfo.parameterNames = cArr;
                methodInfo.exceptionTypes = thrownExceptions;
                methodInfo.typeParameters = getTypeParameterInfos(abstractMethodDeclaration.typeParameters());
                methodInfo.parameterInfos = parameterInfoArr;
                methodInfo.categories = this.nodesToCategories.get(abstractMethodDeclaration);
                methodInfo.annotations = abstractMethodDeclaration.annotations;
                methodInfo.declaringPackageName = importReference == null ? CharOperation.NO_CHAR : CharOperation.concatWith(importReference.tokens, '.');
                methodInfo.declaringTypeModifiers = typeDeclaration.modifiers;
                methodInfo.extraFlags = ExtraFlags.getExtraFlags(typeDeclaration);
                methodInfo.node = abstractMethodDeclaration;
                this.requestor.enterConstructor(methodInfo);
            }
            if (this.reportReferenceInfo && (explicitConstructorCall = ((ConstructorDeclaration) abstractMethodDeclaration).constructorCall) != null) {
                int i13 = explicitConstructorCall.accessMode;
                if (i13 == 1 || i13 == 2) {
                    ISourceElementRequestor iSourceElementRequestor3 = this.requestor;
                    char[] cArr5 = this.superTypeNames[this.nestedTypeIndex - 1];
                    Expression[] expressionArr3 = explicitConstructorCall.arguments;
                    iSourceElementRequestor3.acceptConstructorReference(cArr5, expressionArr3 == null ? 0 : expressionArr3.length, explicitConstructorCall.sourceStart);
                } else if (i13 == 3) {
                    ISourceElementRequestor iSourceElementRequestor4 = this.requestor;
                    char[] cArr6 = this.typeNames[this.nestedTypeIndex - 1];
                    Expression[] expressionArr4 = explicitConstructorCall.arguments;
                    iSourceElementRequestor4.acceptConstructorReference(cArr6, expressionArr4 == null ? 0 : expressionArr4.length, explicitConstructorCall.sourceStart);
                }
            }
            visitIfNeeded(abstractMethodDeclaration);
            if (z11) {
                this.requestor.exitConstructor(abstractMethodDeclaration.declarationSourceEnd);
                return;
            }
            return;
        }
        int i14 = this.sourceEnds.get(abstractMethodDeclaration);
        if (z11) {
            int i15 = abstractMethodDeclaration.modifiers & 1310719;
            if (z10) {
                i15 |= 128;
            }
            if (hasDeprecatedAnnotation(abstractMethodDeclaration.annotations)) {
                i15 |= 1048576;
            }
            TypeReference typeReference = abstractMethodDeclaration instanceof MethodDeclaration ? ((MethodDeclaration) abstractMethodDeclaration).returnType : null;
            methodInfo.isAnnotation = abstractMethodDeclaration instanceof AnnotationMethodDeclaration;
            methodInfo.declarationStart = abstractMethodDeclaration.declarationSourceStart;
            methodInfo.modifiers = i15;
            methodInfo.returnType = typeReference == null ? null : CharOperation.concatWith(typeReference.getParameterizedTypeName(), '.');
            methodInfo.name = abstractMethodDeclaration.selector;
            methodInfo.nameSourceStart = abstractMethodDeclaration.sourceStart;
            methodInfo.nameSourceEnd = i14;
            methodInfo.parameterTypes = cArr2;
            methodInfo.parameterNames = cArr;
            methodInfo.exceptionTypes = thrownExceptions;
            methodInfo.typeParameters = getTypeParameterInfos(abstractMethodDeclaration.typeParameters());
            methodInfo.parameterInfos = parameterInfoArr;
            methodInfo.categories = this.nodesToCategories.get(abstractMethodDeclaration);
            methodInfo.annotations = abstractMethodDeclaration.annotations;
            methodInfo.node = abstractMethodDeclaration;
            methodInfo.enclosingType = typeDeclaration;
            methodInfo.declaringPackageName = importReference == null ? CharOperation.NO_CHAR : CharOperation.concatWith(importReference.tokens, '.');
            this.requestor.enterMethod(methodInfo);
        }
        visitIfNeeded(abstractMethodDeclaration);
        if (z11) {
            if ((abstractMethodDeclaration instanceof AnnotationMethodDeclaration) && (expression = ((AnnotationMethodDeclaration) abstractMethodDeclaration).defaultValue) != null) {
                this.requestor.exitMethod(abstractMethodDeclaration.declarationSourceEnd, expression);
            } else {
                this.requestor.exitMethod(abstractMethodDeclaration.declarationSourceEnd, null);
            }
        }
    }

    private void visitIfNeeded(FieldDeclaration fieldDeclaration, TypeDeclaration typeDeclaration) {
        LocalDeclarationVisitor localDeclarationVisitor = this.localDeclarationVisitor;
        if (localDeclarationVisitor == null || (fieldDeclaration.bits & 2) == 0 || fieldDeclaration.initialization == null) {
            return;
        }
        try {
            localDeclarationVisitor.pushDeclaringType(typeDeclaration);
            fieldDeclaration.initialization.traverse(this.localDeclarationVisitor, (BlockScope) null);
        } finally {
            this.localDeclarationVisitor.popDeclaringType();
        }
    }

    private void visitIfNeeded(Initializer initializer) {
        Block block;
        LocalDeclarationVisitor localDeclarationVisitor = this.localDeclarationVisitor;
        if (localDeclarationVisitor == null || (initializer.bits & 2) == 0 || (block = initializer.block) == null) {
            return;
        }
        block.traverse(localDeclarationVisitor, null);
    }

    public void notifySourceElementRequestor(CompilationUnitDeclaration compilationUnitDeclaration, int i10, int i11, boolean z10, HashtableOfObjectToInt hashtableOfObjectToInt, Map map) {
        int i12;
        this.initialPosition = i10;
        this.eofPosition = i11;
        this.reportReferenceInfo = z10;
        this.sourceEnds = hashtableOfObjectToInt;
        this.nodesToCategories = map;
        try {
            boolean z11 = i10 <= compilationUnitDeclaration.sourceStart && i11 >= compilationUnitDeclaration.sourceEnd;
            if (z11) {
                this.requestor.enterCompilationUnit();
            }
            ImportReference importReference = compilationUnitDeclaration.currentPackage;
            LocalDeclarationVisitor localDeclarationVisitor = this.localDeclarationVisitor;
            if (localDeclarationVisitor != null) {
                localDeclarationVisitor.currentPackage = importReference;
            }
            ImportReference[] importReferenceArr = compilationUnitDeclaration.imports;
            TypeDeclaration[] typeDeclarationArr = compilationUnitDeclaration.types;
            int length = (importReference == null ? 0 : 1) + (importReferenceArr == null ? 0 : importReferenceArr.length) + (typeDeclarationArr == null ? 0 : typeDeclarationArr.length) + (compilationUnitDeclaration.moduleDeclaration == null ? 0 : 1);
            ASTNode[] aSTNodeArr = new ASTNode[length];
            if (importReference != null) {
                aSTNodeArr[0] = importReference;
                i12 = 1;
            } else {
                i12 = 0;
            }
            if (importReferenceArr != null) {
                int length2 = importReferenceArr.length;
                int i13 = 0;
                while (i13 < length2) {
                    aSTNodeArr[i12] = importReferenceArr[i13];
                    i13++;
                    i12++;
                }
            }
            if (typeDeclarationArr != null) {
                int length3 = typeDeclarationArr.length;
                int i14 = 0;
                while (i14 < length3) {
                    aSTNodeArr[i12] = typeDeclarationArr[i14];
                    i14++;
                    i12++;
                }
            }
            ModuleDeclaration moduleDeclaration = compilationUnitDeclaration.moduleDeclaration;
            if (moduleDeclaration != null) {
                aSTNodeArr[i12] = moduleDeclaration;
            }
            if (length > 0) {
                quickSort(aSTNodeArr, 0, length - 1);
                for (int i15 = 0; i15 < length; i15++) {
                    ASTNode aSTNode = aSTNodeArr[i15];
                    if (aSTNode instanceof ImportReference) {
                        ImportReference importReference2 = (ImportReference) aSTNode;
                        if (aSTNode == compilationUnitDeclaration.currentPackage) {
                            notifySourceElementRequestor(importReference2, true);
                        } else {
                            notifySourceElementRequestor(importReference2, false);
                        }
                    } else if (aSTNode instanceof TypeDeclaration) {
                        notifySourceElementRequestor((TypeDeclaration) aSTNode, true, null, importReference);
                    } else if (aSTNode instanceof ModuleDeclaration) {
                        notifySourceElementRequestor(compilationUnitDeclaration.moduleDeclaration);
                    }
                }
            }
            if (z11) {
                this.requestor.exitCompilationUnit(compilationUnitDeclaration.sourceEnd);
            }
            reset();
        } catch (Throwable th2) {
            reset();
            throw th2;
        }
    }

    public void notifySourceElementRequestor(FieldDeclaration fieldDeclaration, TypeDeclaration typeDeclaration) {
        char[] concatWith;
        boolean z10 = this.initialPosition <= fieldDeclaration.declarationSourceStart && this.eofPosition >= fieldDeclaration.declarationSourceEnd;
        int kind = fieldDeclaration.getKind();
        if (kind != 1) {
            if (kind == 2) {
                if (z10) {
                    this.requestor.enterInitializer(fieldDeclaration.declarationSourceStart, fieldDeclaration.modifiers);
                }
                visitIfNeeded((Initializer) fieldDeclaration);
                if (z10) {
                    this.requestor.exitInitializer(fieldDeclaration.declarationSourceEnd);
                    return;
                }
                return;
            }
            if (kind != 3) {
                return;
            }
            if (this.reportReferenceInfo) {
                Expression expression = fieldDeclaration.initialization;
                if (expression instanceof AllocationExpression) {
                    AllocationExpression allocationExpression = (AllocationExpression) expression;
                    ISourceElementRequestor iSourceElementRequestor = this.requestor;
                    char[] cArr = typeDeclaration.name;
                    Expression[] expressionArr = allocationExpression.arguments;
                    iSourceElementRequestor.acceptConstructorReference(cArr, expressionArr == null ? 0 : expressionArr.length, allocationExpression.sourceStart);
                }
            }
        }
        int i10 = this.sourceEnds.get(fieldDeclaration);
        int i11 = -1;
        if (i10 == -1) {
            i10 = fieldDeclaration.declarationSourceEnd;
        }
        if (z10) {
            int i12 = fieldDeclaration.modifiers;
            boolean z11 = (i12 & 1048576) != 0 || hasDeprecatedAnnotation(fieldDeclaration.annotations);
            TypeReference typeReference = fieldDeclaration.type;
            if (typeReference == null) {
                concatWith = typeDeclaration.name;
                i12 |= 16384;
            } else {
                concatWith = CharOperation.concatWith(typeReference.getParameterizedTypeName(), '.');
            }
            ISourceElementRequestor.FieldInfo fieldInfo = new ISourceElementRequestor.FieldInfo();
            fieldInfo.typeAnnotated = (fieldDeclaration.bits & 1048576) != 0;
            fieldInfo.declarationStart = fieldDeclaration.declarationSourceStart;
            fieldInfo.name = fieldDeclaration.name;
            int i13 = 65535 & i12;
            if (z11) {
                i13 |= 1048576;
            }
            fieldInfo.modifiers = i13;
            fieldInfo.type = concatWith;
            fieldInfo.nameSourceStart = fieldDeclaration.sourceStart;
            fieldInfo.nameSourceEnd = fieldDeclaration.sourceEnd;
            fieldInfo.categories = this.nodesToCategories.get(fieldDeclaration);
            fieldInfo.annotations = fieldDeclaration.annotations;
            fieldInfo.node = fieldDeclaration;
            this.requestor.enterField(fieldInfo);
        }
        visitIfNeeded(fieldDeclaration, typeDeclaration);
        if (z10) {
            ISourceElementRequestor iSourceElementRequestor2 = this.requestor;
            Expression expression2 = fieldDeclaration.initialization;
            if (expression2 != null && !(expression2 instanceof ArrayInitializer) && !(expression2 instanceof AllocationExpression) && !(expression2 instanceof ArrayAllocationExpression) && !(expression2 instanceof Assignment) && !(expression2 instanceof ClassLiteralAccess) && !(expression2 instanceof MessageSend) && !(expression2 instanceof ArrayReference) && !(expression2 instanceof ThisReference)) {
                i11 = expression2.sourceStart;
            }
            iSourceElementRequestor2.exitField(i11, i10, fieldDeclaration.declarationSourceEnd);
        }
    }

    public void notifySourceElementRequestor(ImportReference importReference, boolean z10) {
        if (z10) {
            this.requestor.acceptPackage(importReference);
        } else {
            boolean z11 = (importReference.bits & 131072) != 0;
            this.requestor.acceptImport(importReference.declarationSourceStart, importReference.declarationSourceEnd, importReference.sourceStart, z11 ? importReference.trailingStarPosition : importReference.sourceEnd, importReference.tokens, z11, importReference.modifiers);
        }
    }

    public void notifySourceElementRequestor(ModuleDeclaration moduleDeclaration) {
        boolean z10 = this.initialPosition <= moduleDeclaration.declarationSourceStart && this.eofPosition >= moduleDeclaration.declarationSourceEnd;
        ISourceElementRequestor.ModuleInfo moduleInfo = new ISourceElementRequestor.ModuleInfo();
        if (z10) {
            int i10 = moduleDeclaration.modifiers;
            boolean z11 = (i10 & 1048576) != 0 || hasDeprecatedAnnotation(moduleDeclaration.annotations);
            moduleInfo.declarationStart = moduleDeclaration.declarationSourceStart;
            int i11 = i10 & 65535;
            if (z11) {
                i11 |= 1048576;
            }
            moduleInfo.modifiers = i11;
            moduleInfo.name = TypeConstants.MODULE_INFO_NAME;
            moduleInfo.nameSourceStart = moduleDeclaration.sourceStart;
            moduleInfo.nameSourceEnd = moduleDeclaration.sourceEnd;
            moduleInfo.moduleName = moduleDeclaration.moduleName;
            moduleInfo.annotations = moduleDeclaration.annotations;
            moduleInfo.node = moduleDeclaration;
            moduleInfo.categories = this.nodesToCategories.get(moduleDeclaration);
            fillModuleInfo(moduleDeclaration, moduleInfo);
            this.requestor.enterModule(moduleInfo);
            this.requestor.exitModule(moduleDeclaration.declarationSourceEnd);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x012d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void notifySourceElementRequestor(TypeDeclaration typeDeclaration, boolean z10, TypeDeclaration typeDeclaration2, ImportReference importReference) {
        AbstractMethodDeclaration[] abstractMethodDeclarationArr;
        TypeDeclaration[] typeDeclarationArr;
        int i10;
        FieldDeclaration fieldDeclaration;
        AbstractMethodDeclaration abstractMethodDeclaration;
        TypeDeclaration typeDeclaration3;
        char[] cArr;
        char[] cArr2;
        int i11;
        char[][] cArr3;
        boolean z11;
        char[] superclassName;
        if (CharOperation.equals(TypeConstants.PACKAGE_INFO_NAME, typeDeclaration.name)) {
            return;
        }
        boolean z12 = this.initialPosition <= typeDeclaration.declarationSourceStart && this.eofPosition >= typeDeclaration.declarationSourceEnd;
        FieldDeclaration[] fieldDeclarationArr = typeDeclaration.fields;
        AbstractMethodDeclaration[] abstractMethodDeclarationArr2 = typeDeclaration.methods;
        TypeDeclaration[] typeDeclarationArr2 = typeDeclaration.memberTypes;
        int length = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
        int length2 = abstractMethodDeclarationArr2 == null ? 0 : abstractMethodDeclarationArr2.length;
        int length3 = typeDeclarationArr2 == null ? 0 : typeDeclarationArr2.length;
        if (z10) {
            char[][] interfaceNames = getInterfaceNames(typeDeclaration);
            int kind = TypeDeclaration.kind(typeDeclaration.modifiers);
            char[] cArr4 = TypeConstants.CharArray_JAVA_LANG_OBJECT;
            ISourceElementRequestor.TypeInfo typeInfo = new ISourceElementRequestor.TypeInfo();
            typeInfo.typeAnnotated = (typeDeclaration.bits & 1048576) != 0;
            if (z12) {
                int i12 = typeDeclaration.modifiers;
                if ((i12 & 1048576) != 0 || hasDeprecatedAnnotation(typeDeclaration.annotations)) {
                    cArr = cArr4;
                    z11 = true;
                } else {
                    cArr = cArr4;
                    z11 = false;
                }
                QualifiedAllocationExpression qualifiedAllocationExpression = typeDeclaration.allocation;
                boolean z13 = (qualifiedAllocationExpression == null || qualifiedAllocationExpression.enumConstant == null) ? false : true;
                if (z13) {
                    superclassName = typeDeclaration2.name;
                    i12 |= 16384;
                } else {
                    superclassName = getSuperclassName(typeDeclaration);
                }
                typeDeclarationArr = typeDeclarationArr2;
                QualifiedAllocationExpression qualifiedAllocationExpression2 = typeDeclaration.allocation;
                if (qualifiedAllocationExpression2 == null) {
                    abstractMethodDeclarationArr = abstractMethodDeclarationArr2;
                    typeInfo.declarationStart = typeDeclaration.declarationSourceStart;
                } else {
                    abstractMethodDeclarationArr = abstractMethodDeclarationArr2;
                    if (z13) {
                        typeInfo.declarationStart = qualifiedAllocationExpression2.enumConstant.sourceStart;
                    } else {
                        typeInfo.declarationStart = qualifiedAllocationExpression2.sourceStart;
                    }
                }
                typeInfo.modifiers = z11 ? (i12 & 65535) | 1048576 : i12 & 65535;
                typeInfo.name = typeDeclaration.name;
                typeInfo.nameSourceStart = z13 ? qualifiedAllocationExpression2.enumConstant.sourceStart : typeDeclaration.sourceStart;
                typeInfo.nameSourceEnd = sourceEnd(typeDeclaration);
                typeInfo.superclass = superclassName;
                typeInfo.superinterfaces = interfaceNames;
                typeInfo.typeParameters = getTypeParameterInfos(typeDeclaration.typeParameters);
                typeInfo.categories = this.nodesToCategories.get(typeDeclaration);
                typeInfo.secondary = typeDeclaration.isSecondary();
                QualifiedAllocationExpression qualifiedAllocationExpression3 = typeDeclaration.allocation;
                typeInfo.anonymousMember = (qualifiedAllocationExpression3 == null || qualifiedAllocationExpression3.enclosingInstance == null) ? false : true;
                typeInfo.annotations = typeDeclaration.annotations;
                typeInfo.extraFlags = ExtraFlags.getExtraFlags(typeDeclaration);
                typeInfo.node = typeDeclaration;
                this.requestor.enterType(typeInfo);
                if (kind != 1) {
                    if (kind != 2) {
                        if (kind == 3) {
                            cArr2 = TypeConstants.CharArray_JAVA_LANG_ENUM;
                        } else if (kind == 4) {
                            cArr2 = TypeConstants.CharArray_JAVA_LANG_ANNOTATION_ANNOTATION;
                        }
                        i11 = this.nestedTypeIndex;
                        cArr3 = this.typeNames;
                        if (i11 == cArr3.length) {
                            char[][] cArr5 = new char[i11 * 2];
                            this.typeNames = cArr5;
                            i10 = 0;
                            System.arraycopy(cArr3, 0, cArr5, 0, i11);
                            char[][] cArr6 = this.superTypeNames;
                            int i13 = this.nestedTypeIndex;
                            char[][] cArr7 = new char[i13 * 2];
                            this.superTypeNames = cArr7;
                            System.arraycopy(cArr6, 0, cArr7, 0, i13);
                        } else {
                            i10 = 0;
                        }
                        char[][] cArr8 = this.typeNames;
                        int i14 = this.nestedTypeIndex;
                        cArr8[i14] = typeDeclaration.name;
                        char[][] cArr9 = this.superTypeNames;
                        this.nestedTypeIndex = i14 + 1;
                        cArr9[i14] = cArr2;
                    }
                } else if (superclassName != null) {
                    cArr2 = superclassName;
                    i11 = this.nestedTypeIndex;
                    cArr3 = this.typeNames;
                    if (i11 == cArr3.length) {
                    }
                    char[][] cArr82 = this.typeNames;
                    int i142 = this.nestedTypeIndex;
                    cArr82[i142] = typeDeclaration.name;
                    char[][] cArr92 = this.superTypeNames;
                    this.nestedTypeIndex = i142 + 1;
                    cArr92[i142] = cArr2;
                }
            } else {
                abstractMethodDeclarationArr = abstractMethodDeclarationArr2;
                typeDeclarationArr = typeDeclarationArr2;
                cArr = cArr4;
            }
            cArr2 = cArr;
            i11 = this.nestedTypeIndex;
            cArr3 = this.typeNames;
            if (i11 == cArr3.length) {
            }
            char[][] cArr822 = this.typeNames;
            int i1422 = this.nestedTypeIndex;
            cArr822[i1422] = typeDeclaration.name;
            char[][] cArr922 = this.superTypeNames;
            this.nestedTypeIndex = i1422 + 1;
            cArr922[i1422] = cArr2;
        } else {
            abstractMethodDeclarationArr = abstractMethodDeclarationArr2;
            typeDeclarationArr = typeDeclarationArr2;
            i10 = 0;
        }
        int i15 = i10;
        int i16 = i15;
        int i17 = i16;
        while (true) {
            if (i15 >= length && i16 >= length3 && i17 >= length2) {
                break;
            }
            int i18 = Integer.MAX_VALUE;
            int i19 = -1;
            if (i15 < length) {
                fieldDeclaration = fieldDeclarationArr[i15];
                int i20 = fieldDeclaration.declarationSourceStart;
                if (i20 < Integer.MAX_VALUE) {
                    i19 = i10;
                    i18 = i20;
                }
            } else {
                fieldDeclaration = null;
            }
            if (i17 < length2) {
                abstractMethodDeclaration = abstractMethodDeclarationArr[i17];
                int i21 = abstractMethodDeclaration.declarationSourceStart;
                if (i21 < i18) {
                    i18 = i21;
                    i19 = 1;
                }
            } else {
                abstractMethodDeclaration = null;
            }
            if (i16 < length3) {
                typeDeclaration3 = typeDeclarationArr[i16];
                if (typeDeclaration3.declarationSourceStart < i18) {
                    i19 = 2;
                }
            } else {
                typeDeclaration3 = null;
            }
            if (i19 == 0) {
                i15++;
                notifySourceElementRequestor(fieldDeclaration, typeDeclaration);
            } else if (i19 == 1) {
                i17++;
                notifySourceElementRequestor(abstractMethodDeclaration, typeDeclaration, importReference);
            } else if (i19 == 2) {
                i16++;
                notifySourceElementRequestor(typeDeclaration3, true, null, importReference);
            }
            i10 = 0;
        }
        if (z10) {
            if (z12) {
                this.requestor.exitType(typeDeclaration.declarationSourceEnd);
            }
            this.nestedTypeIndex--;
        }
    }
}
