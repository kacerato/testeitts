package org.eclipse.jdt.internal.codeassist;

import java.util.Map;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnAnnotationOfType;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnArgumentName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnFieldName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnFieldType;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnImportReference;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnKeyword;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnKeyword2;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMethodName;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMethodReturnType;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnMethodTypeParameter;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnPackageReference;
import org.eclipse.jdt.internal.compiler.SourceElementNotifier;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToInt;

public class CompletionElementNotifier extends SourceElementNotifier {
    private ASTNode assistNode;

    public CompletionElementNotifier(CompletionUnitStructureRequestor completionUnitStructureRequestor, boolean z10, ASTNode aSTNode) {
        super(completionUnitStructureRequestor, z10);
        this.assistNode = aSTNode;
    }

    public char[][][] getArguments(Argument[] argumentArr) {
        int length = argumentArr.length;
        char[][] cArr = new char[length];
        char[][] cArr2 = new char[length];
        int i10 = 0;
        for (Argument argument : argumentArr) {
            if (!(argument instanceof CompletionOnArgumentName) || argument.name.length != 0) {
                cArr[i10] = CharOperation.concatWith(argument.type.getParameterizedTypeName(), '.');
                cArr2[i10] = argument.name;
                i10++;
            }
        }
        if (i10 < length) {
            char[][] cArr3 = new char[i10];
            System.arraycopy(cArr, 0, cArr3, 0, i10);
            char[][] cArr4 = new char[i10];
            System.arraycopy(cArr2, 0, cArr4, 0, i10);
            cArr = cArr3;
            cArr2 = cArr4;
        }
        return new char[][][]{cArr, cArr2};
    }

    @Override
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
        if (typeReferenceArr == null) {
            return cArr;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            TypeReference typeReference2 = typeReferenceArr[i12];
            if (!(typeReference2 instanceof CompletionOnKeyword) && !CompletionUnitStructureRequestor.hasEmptyName(typeReference2, this.assistNode)) {
                cArr[i11] = CharOperation.concatWith(typeReference2.getParameterizedTypeName(), '.');
                i11++;
            }
        }
        if (i11 == 0) {
            return null;
        }
        if (i11 >= i10) {
            return cArr;
        }
        char[][] cArr2 = new char[i11];
        System.arraycopy(cArr, 0, cArr2, 0, i11);
        return cArr2;
    }

    @Override
    public char[] getSuperclassName(TypeDeclaration typeDeclaration) {
        TypeReference typeReference = typeDeclaration.superclass;
        if ((typeReference instanceof CompletionOnKeyword) || CompletionUnitStructureRequestor.hasEmptyName(typeReference, this.assistNode) || typeReference == null) {
            return null;
        }
        return CharOperation.concatWith(typeReference.getParameterizedTypeName(), '.');
    }

    @Override
    public char[][] getThrownExceptions(AbstractMethodDeclaration abstractMethodDeclaration) {
        TypeReference[] typeReferenceArr = abstractMethodDeclaration.thrownExceptions;
        if (typeReferenceArr == null) {
            return null;
        }
        int length = typeReferenceArr.length;
        char[][] cArr = new char[length];
        int i10 = 0;
        for (TypeReference typeReference : typeReferenceArr) {
            if (!(typeReference instanceof CompletionOnKeyword) && !CompletionUnitStructureRequestor.hasEmptyName(typeReference, this.assistNode)) {
                cArr[i10] = CharOperation.concatWith(typeReference.getParameterizedTypeName(), '.');
                i10++;
            }
        }
        if (i10 == 0) {
            return null;
        }
        if (i10 >= length) {
            return cArr;
        }
        char[][] cArr2 = new char[i10];
        System.arraycopy(cArr, 0, cArr2, 0, i10);
        return cArr2;
    }

    @Override
    public char[][] getTypeParameterBounds(TypeParameter typeParameter) {
        TypeReference typeReference = typeParameter.type;
        TypeReference[] typeReferenceArr = typeParameter.bounds;
        if (typeReference == null) {
            return CharOperation.NO_CHAR_CHAR;
        }
        int i10 = 1;
        if (typeReferenceArr == null) {
            return !CompletionUnitStructureRequestor.hasEmptyName(typeReference, this.assistNode) ? new char[][]{CharOperation.concatWith(typeReference.getParameterizedTypeName(), '.')} : CharOperation.NO_CHAR_CHAR;
        }
        int length = typeReferenceArr.length + 1;
        char[][] cArr = new char[length];
        if (CompletionUnitStructureRequestor.hasEmptyName(typeReference, this.assistNode)) {
            i10 = 0;
        } else {
            cArr[0] = CharOperation.concatWith(typeReference.getParameterizedTypeName(), '.');
        }
        for (TypeReference typeReference2 : typeReferenceArr) {
            if (!CompletionUnitStructureRequestor.hasEmptyName(typeReference2, this.assistNode)) {
                cArr[i10] = CharOperation.concatWith(typeReference2.getParameterizedTypeName(), '.');
                i10++;
            }
        }
        if (i10 == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        if (i10 >= length) {
            return cArr;
        }
        char[][] cArr2 = new char[i10];
        System.arraycopy(cArr, 0, cArr2, 0, i10);
        return cArr2;
    }

    @Override
    public void notifySourceElementRequestor(AbstractMethodDeclaration abstractMethodDeclaration, TypeDeclaration typeDeclaration, ImportReference importReference) {
        if ((abstractMethodDeclaration instanceof CompletionOnMethodReturnType) || (abstractMethodDeclaration instanceof CompletionOnMethodTypeParameter) || (abstractMethodDeclaration instanceof CompletionOnMethodName)) {
            return;
        }
        super.notifySourceElementRequestor(abstractMethodDeclaration, typeDeclaration, importReference);
    }

    @Override
    public void notifySourceElementRequestor(CompilationUnitDeclaration compilationUnitDeclaration, int i10, int i11, boolean z10, HashtableOfObjectToInt hashtableOfObjectToInt, Map map) {
        super.notifySourceElementRequestor(compilationUnitDeclaration, i10, i11, z10, hashtableOfObjectToInt, map);
    }

    @Override
    public void notifySourceElementRequestor(FieldDeclaration fieldDeclaration, TypeDeclaration typeDeclaration) {
        if ((fieldDeclaration instanceof CompletionOnFieldType) || (fieldDeclaration instanceof CompletionOnFieldName)) {
            return;
        }
        super.notifySourceElementRequestor(fieldDeclaration, typeDeclaration);
    }

    @Override
    public void notifySourceElementRequestor(ImportReference importReference, boolean z10) {
        if (importReference instanceof CompletionOnKeyword2) {
            return;
        }
        if ((importReference instanceof CompletionOnImportReference) || (importReference instanceof CompletionOnPackageReference)) {
            if (importReference.tokens[r0.length - 1].length == 0) {
                return;
            }
        }
        super.notifySourceElementRequestor(importReference, z10);
    }

    @Override
    public void notifySourceElementRequestor(TypeDeclaration typeDeclaration, boolean z10, TypeDeclaration typeDeclaration2, ImportReference importReference) {
        if (typeDeclaration instanceof CompletionOnAnnotationOfType) {
            return;
        }
        super.notifySourceElementRequestor(typeDeclaration, z10, typeDeclaration2, importReference);
    }
}
