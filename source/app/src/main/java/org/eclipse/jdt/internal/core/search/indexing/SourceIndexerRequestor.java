package org.eclipse.jdt.internal.core.search.indexing;

import java.util.ArrayList;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ISourceElementRequestor;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.search.processing.JobManager;

public class SourceIndexerRequestor implements ISourceElementRequestor, IIndexConstants {
    SourceIndexer indexer;
    char[] packageName = CharOperation.NO_CHAR;
    char[][] enclosingTypeNames = new char[5];
    int depth = 0;
    int methodDepth = 0;

    public SourceIndexerRequestor(SourceIndexer sourceIndexer) {
        this.indexer = sourceIndexer;
    }

    private void addDefaultConstructorIfNecessary(ISourceElementRequestor.TypeInfo typeInfo) {
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeInfo.node.methods;
        int length = abstractMethodDeclarationArr == null ? 0 : abstractMethodDeclarationArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            AbstractMethodDeclaration abstractMethodDeclaration = abstractMethodDeclarationArr[i10];
            if (abstractMethodDeclaration.isConstructor() && !abstractMethodDeclaration.isDefaultConstructor()) {
                return;
            }
        }
        SourceIndexer sourceIndexer = this.indexer;
        char[] cArr = typeInfo.name;
        char[] cArr2 = this.packageName;
        if (cArr2 == null) {
            cArr2 = CharOperation.NO_CHAR;
        }
        sourceIndexer.addDefaultConstructorDeclaration(cArr, cArr2, typeInfo.modifiers, getMoreExtraFlags(typeInfo.extraFlags));
    }

    private void enterAnnotationType(ISourceElementRequestor.TypeInfo typeInfo) {
        this.indexer.addAnnotationTypeDeclaration(typeInfo.modifiers, this.packageName, typeInfo.name, this.methodDepth > 0 ? IIndexConstants.ONE_ZERO_CHAR : enclosingTypeNames(), typeInfo.secondary);
        addDefaultConstructorIfNecessary(typeInfo);
        pushTypeName(typeInfo.name);
    }

    private void enterClass(ISourceElementRequestor.TypeInfo typeInfo) {
        char[][] cArr;
        char[] cArr2 = typeInfo.superclass;
        if (cArr2 != null) {
            char[] simpleName = getSimpleName(cArr2);
            typeInfo.superclass = simpleName;
            this.indexer.addConstructorReference(simpleName, 0);
        }
        char[][] cArr3 = typeInfo.superinterfaces;
        if (cArr3 != null) {
            int length = cArr3.length;
            for (int i10 = 0; i10 < length; i10++) {
                char[][] cArr4 = typeInfo.superinterfaces;
                cArr4[i10] = getSimpleName(cArr4[i10]);
            }
        }
        char[][] enclosingTypeNames = this.methodDepth > 0 ? IIndexConstants.ONE_ZERO_CHAR : enclosingTypeNames();
        ISourceElementRequestor.TypeParameterInfo[] typeParameterInfoArr = typeInfo.typeParameters;
        if (typeParameterInfoArr != null) {
            int length2 = typeParameterInfoArr.length;
            char[][] cArr5 = new char[length2];
            for (int i11 = 0; i11 < length2; i11++) {
                ISourceElementRequestor.TypeParameterInfo typeParameterInfo = typeInfo.typeParameters[i11];
                char[] cArr6 = typeParameterInfo.name;
                char[][] cArr7 = typeParameterInfo.bounds;
                if (cArr7 == null) {
                    cArr7 = CharOperation.NO_CHAR_CHAR;
                }
                cArr5[i11] = Signature.createTypeParameterSignature(cArr6, cArr7);
            }
            cArr = cArr5;
        } else {
            cArr = null;
        }
        this.indexer.addClassDeclaration(typeInfo.modifiers, this.packageName, typeInfo.name, enclosingTypeNames, typeInfo.superclass, typeInfo.superinterfaces, cArr, typeInfo.secondary);
        addDefaultConstructorIfNecessary(typeInfo);
        pushTypeName(typeInfo.name);
    }

    private void enterEnum(ISourceElementRequestor.TypeInfo typeInfo) {
        char[][] cArr = typeInfo.superinterfaces;
        if (cArr != null) {
            int length = cArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                char[][] cArr2 = typeInfo.superinterfaces;
                cArr2[i10] = getSimpleName(cArr2[i10]);
            }
        }
        char[][] enclosingTypeNames = this.methodDepth > 0 ? IIndexConstants.ONE_ZERO_CHAR : enclosingTypeNames();
        char[] cArr3 = typeInfo.superclass;
        if (cArr3 == null) {
            cArr3 = CharOperation.concatWith(TypeConstants.JAVA_LANG_ENUM, '.');
        }
        this.indexer.addEnumDeclaration(typeInfo.modifiers, this.packageName, typeInfo.name, enclosingTypeNames, cArr3, typeInfo.superinterfaces, typeInfo.secondary);
        addDefaultConstructorIfNecessary(typeInfo);
        pushTypeName(typeInfo.name);
    }

    private void enterInterface(ISourceElementRequestor.TypeInfo typeInfo) {
        char[][] cArr;
        char[][] cArr2 = typeInfo.superinterfaces;
        if (cArr2 != null) {
            int length = cArr2.length;
            for (int i10 = 0; i10 < length; i10++) {
                char[][] cArr3 = typeInfo.superinterfaces;
                cArr3[i10] = getSimpleName(cArr3[i10]);
            }
        }
        char[][] enclosingTypeNames = this.methodDepth > 0 ? IIndexConstants.ONE_ZERO_CHAR : enclosingTypeNames();
        ISourceElementRequestor.TypeParameterInfo[] typeParameterInfoArr = typeInfo.typeParameters;
        if (typeParameterInfoArr != null) {
            int length2 = typeParameterInfoArr.length;
            char[][] cArr4 = new char[length2];
            for (int i11 = 0; i11 < length2; i11++) {
                ISourceElementRequestor.TypeParameterInfo typeParameterInfo = typeInfo.typeParameters[i11];
                cArr4[i11] = Signature.createTypeParameterSignature(typeParameterInfo.name, typeParameterInfo.bounds);
            }
            cArr = cArr4;
        } else {
            cArr = null;
        }
        this.indexer.addInterfaceDeclaration(typeInfo.modifiers, this.packageName, typeInfo.name, enclosingTypeNames, typeInfo.superinterfaces, cArr, typeInfo.secondary);
        addDefaultConstructorIfNecessary(typeInfo);
        pushTypeName(typeInfo.name);
    }

    private void enterPackageVisibilityInfo(ISourceElementRequestor.PackageExportInfo[] packageExportInfoArr) {
        char[] cArr;
        if (packageExportInfoArr == null) {
            return;
        }
        for (ISourceElementRequestor.PackageExportInfo packageExportInfo : packageExportInfoArr) {
            if (packageExportInfo != null && (cArr = packageExportInfo.pkgName) != null && cArr != CharOperation.NO_CHAR) {
                this.indexer.addModuleExportedPackages(cArr);
                char[][] cArr2 = packageExportInfo.targets;
                if (cArr2 != null && cArr2 != CharOperation.NO_CHAR_CHAR) {
                    for (char[] cArr3 : cArr2) {
                        if (cArr3 != null && cArr3 != CharOperation.NO_CHAR) {
                            this.indexer.addModuleReference(cArr3);
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static char[] getDeclaringQualification(TypeDeclaration typeDeclaration) {
        if (typeDeclaration.name == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        char[] cArr = null;
        int i10 = 0;
        for (TypeDeclaration typeDeclaration2 = typeDeclaration.enclosingType; typeDeclaration2 != null && (cArr = typeDeclaration2.name) != null; typeDeclaration2 = typeDeclaration2.enclosingType) {
            arrayList.add(0, cArr);
            i10 += cArr.length + 1;
        }
        if (cArr == null) {
            return null;
        }
        int size = arrayList.size();
        if (size == 1) {
            return cArr;
        }
        char[] cArr2 = new char[i10];
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int i13 = size - 1;
            if (i11 >= i13) {
                char[] cArr3 = (char[]) arrayList.get(i13);
                System.arraycopy(cArr3, 0, cArr2, i12, cArr3.length);
                return cArr2;
            }
            char[] cArr4 = (char[]) arrayList.get(i11);
            System.arraycopy(cArr4, 0, cArr2, i12, cArr4.length);
            int length = i12 + cArr4.length;
            cArr2[length] = '.';
            i11++;
            i12 = length + 1;
        }
    }

    private int getMoreExtraFlags(int i10) {
        return this.methodDepth > 0 ? i10 | 4 : i10;
    }

    private char[] getSimpleName(char[] cArr) {
        int length = cArr.length;
        int i10 = length - 1;
        int i11 = -1;
        int i12 = 0;
        int i13 = -1;
        while (true) {
            if (i10 < 0) {
                break;
            }
            char c10 = cArr[i10];
            if (c10 != '.') {
                if (c10 == '<') {
                    i12--;
                    if (i12 == 0) {
                        i13 = i10;
                    }
                } else if (c10 == '>') {
                    i12++;
                }
            } else if (i12 == 0) {
                i11 = i10;
                break;
            }
            i10--;
        }
        return i13 < 0 ? i11 < 0 ? cArr : CharOperation.subarray(cArr, i11 + 1, length) : CharOperation.subarray(cArr, i11 + 1, i13);
    }

    @Override
    public void acceptAnnotationTypeReference(char[][] cArr, int i10, int i11) {
        int length = cArr.length;
        int i12 = 0;
        while (true) {
            int i13 = length - 1;
            if (i12 >= i13) {
                acceptAnnotationTypeReference(cArr[i13], 0);
                return;
            } else {
                acceptUnknownReference(cArr[i12], 0);
                i12++;
            }
        }
    }

    @Override
    public void acceptConstructorReference(char[] cArr, int i10, int i11) {
        if (CharOperation.indexOf('<', cArr) > 0) {
            cArr = Signature.toCharArray(Signature.getTypeErasure(Signature.createTypeSignature(cArr, false)).toCharArray());
        }
        this.indexer.addConstructorReference(cArr, i10);
        int lastIndexOf = CharOperation.lastIndexOf('.', cArr);
        if (lastIndexOf != -1) {
            for (char[] cArr2 : CharOperation.splitOn('.', CharOperation.subarray(cArr, 0, lastIndexOf))) {
                this.indexer.addNameReference(cArr2);
            }
        }
    }

    @Override
    public void acceptFieldReference(char[] cArr, int i10) {
        this.indexer.addFieldReference(cArr);
    }

    @Override
    public void acceptImport(int i10, int i11, int i12, int i13, char[][] cArr, boolean z10, int i14) {
    }

    @Override
    public void acceptLineSeparatorPositions(int[] iArr) {
    }

    @Override
    public void acceptMethodReference(char[] cArr, int i10, int i11) {
        this.indexer.addMethodReference(cArr, i10);
    }

    @Override
    public void acceptPackage(ImportReference importReference) {
        this.packageName = CharOperation.concatWith(importReference.getImportName(), '.');
    }

    @Override
    public void acceptProblem(CategorizedProblem categorizedProblem) {
    }

    @Override
    public void acceptTypeReference(char[][] cArr, int i10, int i11) {
        int length = cArr.length;
        int i12 = 0;
        while (true) {
            int i13 = length - 1;
            if (i12 >= i13) {
                acceptTypeReference(cArr[i13], 0);
                return;
            } else {
                acceptUnknownReference(cArr[i12], 0);
                i12++;
            }
        }
    }

    @Override
    public void acceptUnknownReference(char[][] cArr, int i10, int i11) {
        for (char[] cArr2 : cArr) {
            acceptUnknownReference(cArr2, 0);
        }
    }

    public char[][] enclosingTypeNames() {
        int i10 = this.depth;
        if (i10 == 0) {
            return null;
        }
        char[][] cArr = new char[i10];
        System.arraycopy(this.enclosingTypeNames, 0, cArr, 0, i10);
        return cArr;
    }

    @Override
    public void enterCompilationUnit() {
    }

    @Override
    public void enterConstructor(ISourceElementRequestor.MethodInfo methodInfo) {
        char[][] cArr = methodInfo.parameterTypes;
        this.indexer.addConstructorDeclaration(methodInfo.name, cArr == null ? 0 : cArr.length, null, cArr, methodInfo.parameterNames, methodInfo.modifiers, methodInfo.declaringPackageName, methodInfo.declaringTypeModifiers, methodInfo.exceptionTypes, getMoreExtraFlags(methodInfo.extraFlags));
        this.methodDepth++;
    }

    @Override
    public void enterField(ISourceElementRequestor.FieldInfo fieldInfo) {
        this.indexer.addFieldDeclaration(fieldInfo.type, fieldInfo.name);
        this.methodDepth++;
    }

    @Override
    public void enterInitializer(int i10, int i11) {
        this.methodDepth++;
    }

    @Override
    public void enterMethod(ISourceElementRequestor.MethodInfo methodInfo) {
        this.indexer.addMethodDeclaration(methodInfo.name, methodInfo.parameterTypes, methodInfo.returnType, methodInfo.exceptionTypes);
        char[][] cArr = methodInfo.parameterTypes;
        int length = cArr == null ? 0 : cArr.length;
        TypeDeclaration typeDeclaration = methodInfo.enclosingType;
        char[] cArr2 = typeDeclaration != null ? typeDeclaration.name : null;
        if (cArr2 == null || cArr2.length == 0) {
            this.methodDepth++;
        } else {
            this.indexer.addMethodDeclaration(cArr2, getDeclaringQualification(typeDeclaration), methodInfo.name, length, null, methodInfo.parameterTypes, methodInfo.parameterNames, methodInfo.returnType, methodInfo.modifiers, methodInfo.declaringPackageName, methodInfo.declaringTypeModifiers, methodInfo.exceptionTypes, getMoreExtraFlags(methodInfo.extraFlags));
            this.methodDepth++;
        }
    }

    @Override
    public void enterModule(ISourceElementRequestor.ModuleInfo moduleInfo) {
        char[] cArr;
        this.indexer.addModuleDeclaration(moduleInfo.moduleName);
        ISourceElementRequestor.RequiresInfo[] requiresInfoArr = moduleInfo.requires;
        if (requiresInfoArr != null) {
            for (ISourceElementRequestor.RequiresInfo requiresInfo : requiresInfoArr) {
                if (requiresInfo != null && (cArr = requiresInfo.moduleName) != null && cArr != CharOperation.NO_CHAR) {
                    this.indexer.addModuleReference(cArr);
                }
            }
        }
        enterPackageVisibilityInfo(moduleInfo.exports);
        enterPackageVisibilityInfo(moduleInfo.opens);
    }

    @Override
    public void enterType(ISourceElementRequestor.TypeInfo typeInfo) {
        int kind = TypeDeclaration.kind(typeInfo.modifiers);
        if (kind == 1) {
            enterClass(typeInfo);
            return;
        }
        if (kind == 2) {
            enterInterface(typeInfo);
        } else if (kind == 3) {
            enterEnum(typeInfo);
        } else {
            if (kind != 4) {
                return;
            }
            enterAnnotationType(typeInfo);
        }
    }

    @Override
    public void exitCompilationUnit(int i10) {
    }

    @Override
    public void exitConstructor(int i10) {
        this.methodDepth--;
    }

    @Override
    public void exitField(int i10, int i11, int i12) {
        this.methodDepth--;
    }

    @Override
    public void exitInitializer(int i10) {
        this.methodDepth--;
    }

    @Override
    public void exitMethod(int i10, Expression expression) {
        this.methodDepth--;
    }

    @Override
    public void exitType(int i10) {
        popTypeName();
    }

    public void popTypeName() {
        int i10 = this.depth;
        if (i10 > 0) {
            char[][] cArr = this.enclosingTypeNames;
            int i11 = i10 - 1;
            this.depth = i11;
            cArr[i11] = null;
            return;
        }
        if (JobManager.VERBOSE) {
            try {
                this.enclosingTypeNames[-1] = null;
            } catch (ArrayIndexOutOfBoundsException e10) {
                e10.printStackTrace();
            }
        }
    }

    public void pushTypeName(char[] cArr) {
        int i10 = this.depth;
        char[][] cArr2 = this.enclosingTypeNames;
        if (i10 == cArr2.length) {
            char[][] cArr3 = new char[i10 * 2];
            this.enclosingTypeNames = cArr3;
            System.arraycopy(cArr2, 0, cArr3, 0, i10);
        }
        char[][] cArr4 = this.enclosingTypeNames;
        int i11 = this.depth;
        this.depth = i11 + 1;
        cArr4[i11] = cArr;
    }

    @Override
    public void acceptUnknownReference(char[] cArr, int i10) {
        this.indexer.addNameReference(cArr);
    }

    @Override
    public void acceptAnnotationTypeReference(char[] cArr, int i10) {
        this.indexer.addAnnotationTypeReference(cArr);
    }

    @Override
    public void acceptTypeReference(char[] cArr, int i10) {
        this.indexer.addTypeReference(cArr);
    }
}
