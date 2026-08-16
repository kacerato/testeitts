package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.internal.core.util.Messages;

public class CreateInitializerOperation extends CreateTypeMemberOperation {
    protected int numberOfInitializers;

    public CreateInitializerOperation(IType iType, String str) {
        super(iType, str, false);
        this.numberOfInitializers = 1;
    }

    @Override
    public ASTNode generateElementAST(ASTRewrite aSTRewrite, ICompilationUnit iCompilationUnit) throws JavaModelException {
        ASTNode generateElementAST = super.generateElementAST(aSTRewrite, iCompilationUnit);
        if (generateElementAST.getNodeType() == 28) {
            return generateElementAST;
        }
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_CONTENTS));
    }

    @Override
    public IJavaElement generateResultHandle() {
        try {
            getType().getCompilationUnit().close();
            if (this.anchorElement == null) {
                return getType().getInitializer(this.numberOfInitializers);
            }
            int i10 = 0;
            for (IJavaElement iJavaElement : getType().getChildren()) {
                if (iJavaElement.equals(this.anchorElement)) {
                    if (iJavaElement.getElementType() == 10 && this.insertionPolicy == 2) {
                        i10++;
                    }
                    return getType().getInitializer(i10);
                }
                if (iJavaElement.getElementType() == 10) {
                    i10++;
                }
            }
            return null;
        } catch (JavaModelException unused) {
            return null;
        }
    }

    @Override
    public String getMainTaskName() {
        return Messages.operation_createInitializerProgress;
    }

    @Override
    public void initializeDefaultPosition() {
        IType type = getType();
        try {
            IInitializer[] initializers = type.getInitializers();
            if (initializers == null || initializers.length <= 0) {
                IJavaElement[] children = type.getChildren();
                if (children != null && children.length > 0) {
                    createBefore(children[0]);
                }
            } else {
                this.numberOfInitializers = initializers.length;
                createAfter(initializers[initializers.length - 1]);
            }
        } catch (JavaModelException unused) {
        }
    }

    @Override
    public SimpleName rename(ASTNode aSTNode, SimpleName simpleName) {
        return null;
    }
}
