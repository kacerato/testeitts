package org.eclipse.jdt.internal.core;

import java.util.Iterator;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.internal.core.util.Messages;

public class CreateFieldOperation extends CreateTypeMemberOperation {
    public CreateFieldOperation(IType iType, String str, boolean z10) {
        super(iType, str, z10);
    }

    private String getASTNodeName() {
        String str = this.alteredName;
        return str != null ? str : getFragment(this.createdNode).getName().getIdentifier();
    }

    private VariableDeclarationFragment getFragment(ASTNode aSTNode) {
        Iterator it = ((FieldDeclaration) aSTNode).fragments().iterator();
        IJavaElement iJavaElement = this.anchorElement;
        if (iJavaElement == null) {
            return (VariableDeclarationFragment) it.next();
        }
        String elementName = iJavaElement.getElementName();
        VariableDeclarationFragment variableDeclarationFragment = null;
        while (it.hasNext()) {
            variableDeclarationFragment = (VariableDeclarationFragment) it.next();
            if (variableDeclarationFragment.getName().getIdentifier().equals(elementName)) {
                return variableDeclarationFragment;
            }
        }
        return variableDeclarationFragment;
    }

    @Override
    public ASTNode generateElementAST(ASTRewrite aSTRewrite, ICompilationUnit iCompilationUnit) throws JavaModelException {
        ASTNode generateElementAST = super.generateElementAST(aSTRewrite, iCompilationUnit);
        if (generateElementAST.getNodeType() == 23) {
            return generateElementAST;
        }
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_CONTENTS));
    }

    @Override
    public IJavaElement generateResultHandle() {
        return getType().getField(getASTNodeName());
    }

    @Override
    public String getMainTaskName() {
        return Messages.operation_createFieldProgress;
    }

    @Override
    public void initializeDefaultPosition() {
        IType type = getType();
        try {
            IField[] fields = type.getFields();
            if (fields == null || fields.length <= 0) {
                IJavaElement[] children = type.getChildren();
                if (children != null && children.length > 0) {
                    createBefore(children[0]);
                }
            } else {
                IField iField = fields[fields.length - 1];
                if (!type.isEnum()) {
                    createAfter(iField);
                } else if (!iField.isEnumConstant()) {
                    createAfter(iField);
                }
            }
        } catch (JavaModelException unused) {
        }
    }

    @Override
    public SimpleName rename(ASTNode aSTNode, SimpleName simpleName) {
        VariableDeclarationFragment fragment = getFragment(aSTNode);
        SimpleName name = fragment.getName();
        fragment.setName(simpleName);
        return name;
    }

    @Override
    public IJavaModelStatus verifyNameCollision() {
        if (this.createdNode != null) {
            IType type = getType();
            String aSTNodeName = getASTNodeName();
            if (type.getField(aSTNodeName).exists()) {
                return new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, aSTNodeName));
            }
        }
        return JavaModelStatus.VERIFIED_OK;
    }
}
