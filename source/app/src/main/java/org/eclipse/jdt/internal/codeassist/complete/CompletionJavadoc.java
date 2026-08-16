package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.Javadoc;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;

public class CompletionJavadoc extends Javadoc {
    Expression completionNode;

    public CompletionJavadoc(int i10, int i11) {
        super(i10, i11);
    }

    private void internalResolve(Scope scope) {
        Binding binding;
        Expression expression = this.completionNode;
        if (expression != null) {
            if (expression instanceof CompletionOnJavadocTag) {
                ((CompletionOnJavadocTag) expression).filterPossibleTags(scope);
            } else {
                if (!(expression instanceof CompletionOnJavadocParamNameReference) ? !(expression instanceof CompletionOnJavadocTypeParamReference) || ((CompletionOnJavadocTypeParamReference) expression).token != null : ((CompletionOnJavadocParamNameReference) expression).token != null) {
                    int i10 = scope.kind;
                    if (i10 == 2) {
                        expression.resolveType((MethodScope) scope);
                    } else if (i10 == 3) {
                        expression.resolveType((ClassScope) scope);
                    }
                }
                Expression expression2 = this.completionNode;
                if (expression2 instanceof CompletionOnJavadocParamNameReference) {
                    CompletionOnJavadocParamNameReference completionOnJavadocParamNameReference = (CompletionOnJavadocParamNameReference) expression2;
                    if (scope.kind == 2) {
                        completionOnJavadocParamNameReference.missingParams = missingParamTags(completionOnJavadocParamNameReference.binding, (MethodScope) scope);
                    }
                    char[] cArr = completionOnJavadocParamNameReference.token;
                    if (cArr == null || cArr.length == 0) {
                        completionOnJavadocParamNameReference.missingTypeParams = missingTypeParameterTags(completionOnJavadocParamNameReference.binding, scope);
                    }
                } else if (expression2 instanceof CompletionOnJavadocTypeParamReference) {
                    CompletionOnJavadocTypeParamReference completionOnJavadocTypeParamReference = (CompletionOnJavadocTypeParamReference) expression2;
                    completionOnJavadocTypeParamReference.missingParams = missingTypeParameterTags(completionOnJavadocTypeParamReference.resolvedType, scope);
                }
            }
            Expression expression3 = this.completionNode;
            if (expression3 instanceof CompletionOnJavadocQualifiedTypeReference) {
                CompletionOnJavadocQualifiedTypeReference completionOnJavadocQualifiedTypeReference = (CompletionOnJavadocQualifiedTypeReference) expression3;
                binding = completionOnJavadocQualifiedTypeReference.packageBinding;
                if (binding == null) {
                    binding = completionOnJavadocQualifiedTypeReference.resolvedType;
                }
            } else if (expression3 instanceof CompletionOnJavadocMessageSend) {
                CompletionOnJavadocMessageSend completionOnJavadocMessageSend = (CompletionOnJavadocMessageSend) expression3;
                if (!completionOnJavadocMessageSend.receiver.isThis()) {
                    binding = completionOnJavadocMessageSend.receiver.resolvedType;
                }
                binding = null;
            } else {
                if (expression3 instanceof CompletionOnJavadocAllocationExpression) {
                    binding = ((CompletionOnJavadocAllocationExpression) expression3).type.resolvedType;
                }
                binding = null;
            }
            throw new CompletionNodeFound(this.completionNode, binding, scope);
        }
    }

    private char[][] missingParamTags(Binding binding, MethodScope methodScope) {
        AbstractMethodDeclaration referenceMethod = methodScope.referenceMethod();
        JavadocSingleNameReference[] javadocSingleNameReferenceArr = this.paramReferences;
        int length = javadocSingleNameReferenceArr == null ? 0 : javadocSingleNameReferenceArr.length;
        if (referenceMethod == null) {
            return null;
        }
        Argument[] argumentArr = referenceMethod.arguments;
        int length2 = argumentArr == null ? 0 : argumentArr.length;
        if (length2 == 0) {
            return null;
        }
        if (length == 0) {
            char[][] cArr = new char[length2];
            for (int i10 = 0; i10 < length2; i10++) {
                cArr[i10] = referenceMethod.arguments[i10].name;
            }
            return cArr;
        }
        char[][] cArr2 = new char[length2];
        int i11 = 0;
        for (int i12 = 0; i12 < length2; i12++) {
            Argument argument = referenceMethod.arguments[i12];
            boolean z10 = false;
            int i13 = 0;
            for (int i14 = 0; i14 < length && !z10; i14++) {
                JavadocSingleNameReference javadocSingleNameReference = this.paramReferences[i14];
                LocalVariableBinding localVariableBinding = argument.binding;
                Binding binding2 = javadocSingleNameReference.binding;
                if (localVariableBinding == binding2) {
                    z10 = true;
                    if (binding2 == binding && (i13 = i13 + 1) <= 1) {
                        z10 = false;
                    }
                }
            }
            if (!z10) {
                cArr2[i11] = argument.name;
                i11++;
            }
        }
        if (i11 <= 0) {
            return null;
        }
        if (i11 == length2) {
            return cArr2;
        }
        char[][] cArr3 = new char[i11];
        System.arraycopy(cArr2, 0, cArr3, 0, i11);
        return cArr3;
    }

    private char[][] missingTypeParameterTags(Binding binding, Scope scope) {
        TypeParameter[] typeParameters;
        TypeVariableBinding[] typeVariableBindingArr;
        JavadocSingleTypeReference[] javadocSingleTypeReferenceArr = this.paramTypeParameters;
        int length = javadocSingleTypeReferenceArr == null ? 0 : javadocSingleTypeReferenceArr.length;
        int i10 = scope.kind;
        if (i10 == 2) {
            AbstractMethodDeclaration referenceMethod = ((MethodScope) scope).referenceMethod();
            if (referenceMethod == null) {
                return null;
            }
            typeParameters = referenceMethod.typeParameters();
            typeVariableBindingArr = referenceMethod.binding.typeVariables;
        } else if (i10 != 3) {
            typeVariableBindingArr = null;
            typeParameters = null;
        } else {
            TypeDeclaration typeDeclaration = ((ClassScope) scope).referenceContext;
            typeParameters = typeDeclaration.typeParameters;
            typeVariableBindingArr = typeDeclaration.binding.typeVariables;
        }
        if (typeVariableBindingArr != null && typeVariableBindingArr.length != 0 && typeParameters != null) {
            int length2 = typeParameters.length;
            if (length == 0) {
                char[][] cArr = new char[length2];
                for (int i11 = 0; i11 < length2; i11++) {
                    cArr[i11] = typeParameters[i11].name;
                }
                return cArr;
            }
            char[][] cArr2 = new char[length2];
            int i12 = 0;
            for (TypeParameter typeParameter : typeParameters) {
                boolean z10 = false;
                int i13 = 0;
                for (int i14 = 0; i14 < length && !z10; i14++) {
                    if (TypeBinding.equalsEquals(typeParameter.binding, this.paramTypeParameters[i14].resolvedType)) {
                        z10 = typeParameter.binding != binding || (i13 = i13 + 1) > 1;
                    }
                }
                if (!z10) {
                    cArr2[i12] = typeParameter.name;
                    i12++;
                }
            }
            if (i12 > 0) {
                if (i12 == length2) {
                    return cArr2;
                }
                char[][] cArr3 = new char[i12];
                System.arraycopy(cArr2, 0, cArr3, 0, i12);
                return cArr3;
            }
        }
        return null;
    }

    public Expression getCompletionNode() {
        return this.completionNode;
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        boolean z10;
        Expression expression;
        Expression expression2;
        Expression expression3;
        Expression expression4;
        ASTNode.printIndent(i10, stringBuffer).append("/**\n");
        JavadocSingleNameReference[] javadocSingleNameReferenceArr = this.paramReferences;
        if (javadocSingleNameReferenceArr != null) {
            int length = javadocSingleNameReferenceArr.length;
            z10 = false;
            for (int i11 = 0; i11 < length; i11++) {
                ASTNode.printIndent(i10, stringBuffer).append(" * @param ");
                this.paramReferences[i11].print(i10, stringBuffer).append('\n');
                if (!z10 && (expression4 = this.completionNode) != null) {
                    z10 = expression4 == this.paramReferences[i11];
                }
            }
        } else {
            z10 = false;
        }
        JavadocSingleTypeReference[] javadocSingleTypeReferenceArr = this.paramTypeParameters;
        if (javadocSingleTypeReferenceArr != null) {
            int length2 = javadocSingleTypeReferenceArr.length;
            for (int i12 = 0; i12 < length2; i12++) {
                ASTNode.printIndent(i10, stringBuffer).append(" * @param <");
                this.paramTypeParameters[i12].print(i10, stringBuffer).append(">\n");
                if (!z10 && (expression3 = this.completionNode) != null) {
                    z10 = expression3 == this.paramTypeParameters[i12];
                }
            }
        }
        if (this.returnStatement != null) {
            ASTNode.printIndent(i10, stringBuffer).append(" * @");
            this.returnStatement.print(i10, stringBuffer).append('\n');
        }
        TypeReference[] typeReferenceArr = this.exceptionReferences;
        if (typeReferenceArr != null) {
            int length3 = typeReferenceArr.length;
            for (int i13 = 0; i13 < length3; i13++) {
                ASTNode.printIndent(i10, stringBuffer).append(" * @throws ");
                this.exceptionReferences[i13].print(i10, stringBuffer).append('\n');
                if (!z10 && (expression2 = this.completionNode) != null) {
                    z10 = expression2 == this.exceptionReferences[i13];
                }
            }
        }
        Expression[] expressionArr = this.seeReferences;
        if (expressionArr != null) {
            int length4 = expressionArr.length;
            for (int i14 = 0; i14 < length4; i14++) {
                ASTNode.printIndent(i10, stringBuffer).append(" * @see ");
                this.seeReferences[i14].print(i10, stringBuffer).append('\n');
                if (!z10 && (expression = this.completionNode) != null) {
                    z10 = expression == this.seeReferences[i14];
                }
            }
        }
        if (!z10 && this.completionNode != null) {
            ASTNode.printIndent(i10, stringBuffer).append(" * ");
            this.completionNode.print(i10, stringBuffer).append('\n');
        }
        ASTNode.printIndent(i10, stringBuffer).append(" */\n");
        return stringBuffer;
    }

    @Override
    public void resolve(ClassScope classScope) {
        super.resolve(classScope);
        internalResolve(classScope);
    }

    @Override
    public void resolve(CompilationUnitScope compilationUnitScope) {
        internalResolve(compilationUnitScope);
    }

    @Override
    public void resolve(MethodScope methodScope) {
        super.resolve(methodScope);
        internalResolve(methodScope);
    }
}
