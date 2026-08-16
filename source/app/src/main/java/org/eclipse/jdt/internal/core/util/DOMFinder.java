package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.ILocalVariable;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration;
import org.eclipse.jdt.core.dom.AnonymousClassDeclaration;
import org.eclipse.jdt.core.dom.ClassInstanceCreation;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.EnumConstantDeclaration;
import org.eclipse.jdt.core.dom.EnumDeclaration;
import org.eclipse.jdt.core.dom.IBinding;
import org.eclipse.jdt.core.dom.ImportDeclaration;
import org.eclipse.jdt.core.dom.Initializer;
import org.eclipse.jdt.core.dom.MarkerAnnotation;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.ModuleDeclaration;
import org.eclipse.jdt.core.dom.NormalAnnotation;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.core.dom.ParameterizedType;
import org.eclipse.jdt.core.dom.SingleMemberAnnotation;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.TypeParameter;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.internal.core.LambdaExpression;
import org.eclipse.jdt.internal.core.LambdaMethod;
import org.eclipse.jdt.internal.core.SourceRefElement;

public class DOMFinder extends ASTVisitor {
    private CompilationUnit ast;
    private SourceRefElement element;
    private boolean resolveBinding;
    public ASTNode foundNode = null;
    public IBinding foundBinding = null;
    private int rangeStart = -1;
    private int rangeLength = 0;

    public DOMFinder(CompilationUnit compilationUnit, SourceRefElement sourceRefElement, boolean z10) {
        this.ast = compilationUnit;
        this.element = sourceRefElement;
        this.resolveBinding = z10;
    }

    public boolean found(ASTNode aSTNode, ASTNode aSTNode2) {
        if (aSTNode2.getStartPosition() != this.rangeStart || aSTNode2.getLength() != this.rangeLength) {
            return false;
        }
        this.foundNode = aSTNode;
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ASTNode search() throws JavaModelException {
        SourceRefElement sourceRefElement = this.element;
        ISourceRange nameRange = (!(sourceRefElement instanceof IMember) || (sourceRefElement instanceof IInitializer) || (sourceRefElement instanceof LambdaMethod) || (sourceRefElement instanceof LambdaExpression)) ? ((sourceRefElement instanceof ITypeParameter) || (sourceRefElement instanceof ILocalVariable)) ? sourceRefElement.getNameRange() : sourceRefElement.getSourceRange() : ((IMember) sourceRefElement).getNameRange();
        this.rangeStart = nameRange.getOffset();
        this.rangeLength = nameRange.getLength();
        this.ast.accept(this);
        return this.foundNode;
    }

    @Override
    public boolean visit(AnnotationTypeDeclaration annotationTypeDeclaration) {
        if (!found(annotationTypeDeclaration, annotationTypeDeclaration.getName()) || !this.resolveBinding) {
            return true;
        }
        this.foundBinding = annotationTypeDeclaration.resolveBinding();
        return true;
    }

    @Override
    public boolean visit(AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration) {
        if (!found(annotationTypeMemberDeclaration, annotationTypeMemberDeclaration.getName()) || !this.resolveBinding) {
            return true;
        }
        this.foundBinding = annotationTypeMemberDeclaration.resolveBinding();
        return true;
    }

    @Override
    public boolean visit(AnonymousClassDeclaration anonymousClassDeclaration) {
        ASTNode type;
        ASTNode parent = anonymousClassDeclaration.getParent();
        int nodeType = parent.getNodeType();
        if (nodeType == 14) {
            type = ((ClassInstanceCreation) parent).getType();
            if (type.getNodeType() == 74) {
                type = ((ParameterizedType) type).getType();
            }
        } else {
            if (nodeType != 72) {
                return true;
            }
            type = ((EnumConstantDeclaration) parent).getName();
        }
        if (found(anonymousClassDeclaration, type) && this.resolveBinding) {
            this.foundBinding = anonymousClassDeclaration.resolveBinding();
        }
        return true;
    }

    @Override
    public boolean visit(EnumConstantDeclaration enumConstantDeclaration) {
        if (!found(enumConstantDeclaration, enumConstantDeclaration.getName()) || !this.resolveBinding) {
            return true;
        }
        this.foundBinding = enumConstantDeclaration.resolveVariable();
        return true;
    }

    @Override
    public boolean visit(EnumDeclaration enumDeclaration) {
        if (!found(enumDeclaration, enumDeclaration.getName()) || !this.resolveBinding) {
            return true;
        }
        this.foundBinding = enumDeclaration.resolveBinding();
        return true;
    }

    @Override
    public boolean visit(ImportDeclaration importDeclaration) {
        if (!found(importDeclaration, importDeclaration) || !this.resolveBinding) {
            return true;
        }
        this.foundBinding = importDeclaration.resolveBinding();
        return true;
    }

    @Override
    public boolean visit(Initializer initializer) {
        found(initializer, initializer);
        return true;
    }

    @Override
    public boolean visit(MarkerAnnotation markerAnnotation) {
        if (!found(markerAnnotation, markerAnnotation) || !this.resolveBinding) {
            return true;
        }
        this.foundBinding = markerAnnotation.resolveAnnotationBinding();
        return true;
    }

    @Override
    public boolean visit(MethodDeclaration methodDeclaration) {
        if (!found(methodDeclaration, methodDeclaration.getName()) || !this.resolveBinding) {
            return true;
        }
        this.foundBinding = methodDeclaration.resolveBinding();
        return true;
    }

    @Override
    public boolean visit(ModuleDeclaration moduleDeclaration) {
        if (!found(moduleDeclaration, moduleDeclaration.getName()) || !this.resolveBinding) {
            return true;
        }
        this.foundBinding = moduleDeclaration.resolveBinding();
        return true;
    }

    @Override
    public boolean visit(NormalAnnotation normalAnnotation) {
        if (!found(normalAnnotation, normalAnnotation) || !this.resolveBinding) {
            return true;
        }
        this.foundBinding = normalAnnotation.resolveAnnotationBinding();
        return true;
    }

    @Override
    public boolean visit(PackageDeclaration packageDeclaration) {
        if (!found(packageDeclaration, packageDeclaration) || !this.resolveBinding) {
            return true;
        }
        this.foundBinding = packageDeclaration.resolveBinding();
        return true;
    }

    @Override
    public boolean visit(SingleMemberAnnotation singleMemberAnnotation) {
        if (!found(singleMemberAnnotation, singleMemberAnnotation) || !this.resolveBinding) {
            return true;
        }
        this.foundBinding = singleMemberAnnotation.resolveAnnotationBinding();
        return true;
    }

    @Override
    public boolean visit(TypeDeclaration typeDeclaration) {
        if (!found(typeDeclaration, typeDeclaration.getName()) || !this.resolveBinding) {
            return true;
        }
        this.foundBinding = typeDeclaration.resolveBinding();
        return true;
    }

    @Override
    public boolean visit(TypeParameter typeParameter) {
        if (!found(typeParameter, typeParameter.getName()) || !this.resolveBinding) {
            return true;
        }
        this.foundBinding = typeParameter.resolveBinding();
        return true;
    }

    @Override
    public boolean visit(VariableDeclarationFragment variableDeclarationFragment) {
        if (!found(variableDeclarationFragment, variableDeclarationFragment.getName()) || !this.resolveBinding) {
            return true;
        }
        this.foundBinding = variableDeclarationFragment.resolveBinding();
        return true;
    }

    @Override
    public boolean visit(SingleVariableDeclaration singleVariableDeclaration) {
        if (!found(singleVariableDeclaration, singleVariableDeclaration.getName()) || !this.resolveBinding) {
            return true;
        }
        this.foundBinding = singleVariableDeclaration.resolveBinding();
        return true;
    }

    @Override
    public boolean visit(org.eclipse.jdt.core.dom.LambdaExpression lambdaExpression) {
        if (!found(lambdaExpression, lambdaExpression) || !this.resolveBinding) {
            return true;
        }
        this.foundBinding = lambdaExpression.resolveMethodBinding();
        return true;
    }
}
