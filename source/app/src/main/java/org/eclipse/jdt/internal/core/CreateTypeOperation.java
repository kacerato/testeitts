package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.AbstractTypeDeclaration;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.internal.core.util.Messages;

public class CreateTypeOperation extends CreateTypeMemberOperation {
    public CreateTypeOperation(IJavaElement iJavaElement, String str, boolean z10) {
        super(iJavaElement, str, z10);
    }

    private String getASTNodeName() {
        return ((AbstractTypeDeclaration) this.createdNode).getName().getIdentifier();
    }

    @Override
    public ASTNode generateElementAST(ASTRewrite aSTRewrite, ICompilationUnit iCompilationUnit) throws JavaModelException {
        ASTNode generateElementAST = super.generateElementAST(aSTRewrite, iCompilationUnit);
        if (generateElementAST instanceof AbstractTypeDeclaration) {
            return generateElementAST;
        }
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_CONTENTS));
    }

    @Override
    public IJavaElement generateResultHandle() {
        IJavaElement parentElement = getParentElement();
        int elementType = parentElement.getElementType();
        if (elementType == 5) {
            return ((ICompilationUnit) parentElement).getType(getASTNodeName());
        }
        if (elementType != 7) {
            return null;
        }
        return ((IType) parentElement).getType(getASTNodeName());
    }

    @Override
    public String getMainTaskName() {
        return Messages.operation_createTypeProgress;
    }

    @Override
    public IType getType() {
        IJavaElement parentElement = getParentElement();
        if (parentElement.getElementType() == 7) {
            return (IType) parentElement;
        }
        return null;
    }

    @Override
    public SimpleName rename(ASTNode aSTNode, SimpleName simpleName) {
        AbstractTypeDeclaration abstractTypeDeclaration = (AbstractTypeDeclaration) aSTNode;
        SimpleName name = abstractTypeDeclaration.getName();
        abstractTypeDeclaration.setName(simpleName);
        return name;
    }

    @Override
    public IJavaModelStatus verify() {
        IJavaModelStatus verify = super.verify();
        if (!verify.isOK()) {
            return verify;
        }
        try {
            IJavaElement parentElement = getParentElement();
            IJavaElement iJavaElement = this.anchorElement;
            return (iJavaElement != null && iJavaElement.getElementType() == 8 && parentElement.getElementType() == 7 && ((IType) parentElement).isEnum()) ? new JavaModelStatus(IJavaModelStatusConstants.INVALID_SIBLING, this.anchorElement) : JavaModelStatus.VERIFIED_OK;
        } catch (JavaModelException e10) {
            return e10.getJavaModelStatus();
        }
    }

    @Override
    public IJavaModelStatus verifyNameCollision() {
        IJavaElement parentElement = getParentElement();
        int elementType = parentElement.getElementType();
        if (elementType == 5) {
            String aSTNodeName = getASTNodeName();
            if (((ICompilationUnit) parentElement).getType(aSTNodeName).exists()) {
                return new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, aSTNodeName));
            }
        } else if (elementType == 7) {
            String aSTNodeName2 = getASTNodeName();
            if (((IType) parentElement).getType(aSTNodeName2).exists()) {
                return new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, aSTNodeName2));
            }
        }
        return JavaModelStatus.VERIFIED_OK;
    }
}
