package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortType;
import org.eclipse.jdt.internal.compiler.util.Util;

public class CodeSnippetTypeDeclaration extends TypeDeclaration {
    public CodeSnippetTypeDeclaration(CompilationResult compilationResult) {
        super(compilationResult);
    }

    @Override
    public void generateCode(ClassFile classFile) {
        int i10 = this.bits;
        if ((i10 & 8192) != 0) {
            return;
        }
        this.bits = i10 | 8192;
        if (this.ignoreFurtherInvestigation) {
            if (this.binding == null) {
                return;
            }
            CodeSnippetClassFile.createProblemType(this, this.scope.referenceCompilationUnit().compilationResult);
            return;
        }
        try {
            CodeSnippetClassFile codeSnippetClassFile = new CodeSnippetClassFile(this.binding, classFile, false);
            codeSnippetClassFile.addFieldInfos();
            if (this.binding.isMemberType()) {
                codeSnippetClassFile.recordInnerClasses(this.binding);
            } else if (this.binding.isLocalType()) {
                classFile.recordInnerClasses(this.binding);
                codeSnippetClassFile.recordInnerClasses(this.binding);
            }
            for (TypeVariableBinding typeVariableBinding : this.binding.typeVariables()) {
                if ((typeVariableBinding.tagBits & 2048) != 0) {
                    Util.recordNestedType(codeSnippetClassFile, typeVariableBinding);
                }
            }
            TypeDeclaration[] typeDeclarationArr = this.memberTypes;
            if (typeDeclarationArr != null) {
                int length = typeDeclarationArr.length;
                for (int i11 = 0; i11 < length; i11++) {
                    TypeDeclaration typeDeclaration = this.memberTypes[i11];
                    codeSnippetClassFile.recordInnerClasses(typeDeclaration.binding);
                    typeDeclaration.generateCode(this.scope, codeSnippetClassFile);
                }
            }
            codeSnippetClassFile.setForMethodInfos();
            AbstractMethodDeclaration[] abstractMethodDeclarationArr = this.methods;
            if (abstractMethodDeclarationArr != null) {
                int length2 = abstractMethodDeclarationArr.length;
                for (int i12 = 0; i12 < length2; i12++) {
                    this.methods[i12].generateCode(this.scope, codeSnippetClassFile);
                }
            }
            codeSnippetClassFile.addSpecialMethods();
            if (this.ignoreFurtherInvestigation) {
                throw new AbortType(this.scope.referenceCompilationUnit().compilationResult, null);
            }
            codeSnippetClassFile.addAttributes();
            this.scope.referenceCompilationUnit().compilationResult.record(this.binding.constantPoolName(), codeSnippetClassFile);
        } catch (AbortType unused) {
            if (this.binding == null) {
                return;
            }
            CodeSnippetClassFile.createProblemType(this, this.scope.referenceCompilationUnit().compilationResult);
        }
    }
}
