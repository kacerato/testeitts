package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.Javadoc;
import org.eclipse.jdt.internal.compiler.ast.JavadocAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocFieldReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocMessageSend;
import org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.Scope;

public class SelectionJavadoc extends Javadoc {
    boolean inheritDocSelected;
    Expression selectedNode;

    public SelectionJavadoc(int i10, int i11) {
        super(i10, i11);
        this.inheritDocSelected = false;
    }

    private void internalResolve(Scope scope) {
        Binding binding;
        MethodBinding methodBinding;
        Expression expression = this.selectedNode;
        if (expression == null) {
            if (this.inheritDocSelected) {
                ReferenceContext referenceContext = scope.referenceContext();
                if (referenceContext instanceof MethodDeclaration) {
                    throw new SelectionNodeFound(((MethodDeclaration) referenceContext).binding);
                }
                return;
            }
            return;
        }
        int i10 = scope.kind;
        if (i10 == 2) {
            expression.resolveType((MethodScope) scope);
        } else if (i10 == 3) {
            expression.resolveType((ClassScope) scope);
        }
        Expression expression2 = this.selectedNode;
        if (expression2 instanceof JavadocFieldReference) {
            JavadocFieldReference javadocFieldReference = (JavadocFieldReference) expression2;
            binding = javadocFieldReference.binding;
            if (binding == null && (methodBinding = javadocFieldReference.methodBinding) != null) {
                binding = methodBinding;
            }
        } else if (expression2 instanceof JavadocMessageSend) {
            binding = ((JavadocMessageSend) expression2).binding;
        } else if (expression2 instanceof JavadocAllocationExpression) {
            binding = ((JavadocAllocationExpression) expression2).binding;
        } else if (expression2 instanceof JavadocSingleNameReference) {
            binding = ((JavadocSingleNameReference) expression2).binding;
        } else if (expression2 instanceof JavadocSingleTypeReference) {
            JavadocSingleTypeReference javadocSingleTypeReference = (JavadocSingleTypeReference) expression2;
            if (javadocSingleTypeReference.packageBinding == null) {
                binding = javadocSingleTypeReference.resolvedType;
            }
            binding = null;
        } else if (expression2 instanceof JavadocQualifiedTypeReference) {
            JavadocQualifiedTypeReference javadocQualifiedTypeReference = (JavadocQualifiedTypeReference) expression2;
            if (javadocQualifiedTypeReference.packageBinding == null) {
                binding = javadocQualifiedTypeReference.resolvedType;
            }
            binding = null;
        } else {
            binding = expression2.resolvedType;
        }
        throw new SelectionNodeFound(binding);
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        super.print(i10, stringBuffer);
        Expression expression = this.selectedNode;
        if (expression != null) {
            String str = "<SelectOnMethod:";
            if (expression instanceof JavadocFieldReference) {
                if (((JavadocFieldReference) expression).methodBinding == null) {
                    str = "<SelectOnField:";
                }
            } else if (!(expression instanceof JavadocMessageSend)) {
                if (expression instanceof JavadocAllocationExpression) {
                    str = "<SelectOnConstructor:";
                } else if (expression instanceof JavadocSingleNameReference) {
                    str = "<SelectOnLocalVariable:";
                } else {
                    str = "<SelectOnType:";
                    if (!(expression instanceof JavadocSingleTypeReference) ? !(!(expression instanceof JavadocQualifiedTypeReference) || ((JavadocQualifiedTypeReference) expression).packageBinding == null) : ((JavadocSingleTypeReference) expression).packageBinding != null) {
                        str = null;
                    }
                }
            }
            int length = stringBuffer.length();
            stringBuffer.replace(length - 5, length - 3, String.valueOf(str) + ((Object) this.selectedNode) + '>');
        }
        return stringBuffer;
    }

    @Override
    public void resolve(ClassScope classScope) {
        internalResolve(classScope);
    }

    @Override
    public void resolve(MethodScope methodScope) {
        internalResolve(methodScope);
    }
}
