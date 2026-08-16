package org.eclipse.jdt.internal.core;

import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class CreateMethodOperation extends CreateTypeMemberOperation {
    protected String[] parameterTypes;

    public CreateMethodOperation(IType iType, String str, boolean z10) {
        super(iType, str, z10);
    }

    private String getASTNodeName() {
        return ((MethodDeclaration) this.createdNode).getName().getIdentifier();
    }

    public String[] convertASTMethodTypesToSignatures() {
        ASTNode aSTNode;
        if (this.parameterTypes == null && (aSTNode = this.createdNode) != null) {
            MethodDeclaration methodDeclaration = (MethodDeclaration) aSTNode;
            List parameters = methodDeclaration.parameters();
            int size = parameters.size();
            this.parameterTypes = new String[size];
            Iterator it = parameters.iterator();
            for (int i10 = 0; i10 < size; i10++) {
                SingleVariableDeclaration singleVariableDeclaration = (SingleVariableDeclaration) it.next();
                String signature = Util.getSignature(singleVariableDeclaration.getType());
                int extraDimensions = singleVariableDeclaration.getExtraDimensions();
                if (methodDeclaration.isVarargs() && i10 == size - 1) {
                    extraDimensions++;
                }
                this.parameterTypes[i10] = Signature.createArraySignature(signature, extraDimensions);
            }
        }
        return this.parameterTypes;
    }

    @Override
    public ASTNode generateElementAST(ASTRewrite aSTRewrite, ICompilationUnit iCompilationUnit) throws JavaModelException {
        ASTNode generateElementAST = super.generateElementAST(aSTRewrite, iCompilationUnit);
        if (generateElementAST.getNodeType() == 31) {
            return generateElementAST;
        }
        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_CONTENTS));
    }

    @Override
    public IJavaElement generateResultHandle() {
        String[] convertASTMethodTypesToSignatures = convertASTMethodTypesToSignatures();
        return getType().getMethod(getASTNodeName(), convertASTMethodTypesToSignatures);
    }

    @Override
    public String getMainTaskName() {
        return Messages.operation_createMethodProgress;
    }

    @Override
    public SimpleName rename(ASTNode aSTNode, SimpleName simpleName) {
        MethodDeclaration methodDeclaration = (MethodDeclaration) aSTNode;
        SimpleName name = methodDeclaration.getName();
        methodDeclaration.setName(simpleName);
        return name;
    }

    @Override
    public IJavaModelStatus verifyNameCollision() {
        if (this.createdNode != null) {
            IType type = getType();
            String elementName = ((MethodDeclaration) this.createdNode).isConstructor() ? type.getElementName() : getASTNodeName();
            if (type.getMethod(elementName, convertASTMethodTypesToSignatures()).exists()) {
                return new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, elementName));
            }
        }
        return JavaModelStatus.VERIFIED_OK;
    }
}
