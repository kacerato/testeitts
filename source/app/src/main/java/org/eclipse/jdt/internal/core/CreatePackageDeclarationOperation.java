package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.internal.core.util.Messages;

public class CreatePackageDeclarationOperation extends CreateElementInCUOperation {
    protected String name;

    public CreatePackageDeclarationOperation(String str, ICompilationUnit iCompilationUnit) {
        super(iCompilationUnit);
        this.name = str;
    }

    @Override
    public ASTNode generateElementAST(ASTRewrite aSTRewrite, ICompilationUnit iCompilationUnit) throws JavaModelException {
        IJavaElement[] children = getCompilationUnit().getChildren();
        for (int i10 = 0; i10 < children.length; i10++) {
            if (children[i10].getElementType() == 11 && this.name.equals(children[i10].getElementName())) {
                this.creationOccurred = false;
                return null;
            }
        }
        AST ast = this.cuAST.getAST();
        org.eclipse.jdt.core.dom.PackageDeclaration newPackageDeclaration = ast.newPackageDeclaration();
        newPackageDeclaration.setName(ast.newName(this.name));
        return newPackageDeclaration;
    }

    @Override
    public IJavaElement generateResultHandle() {
        return getCompilationUnit().getPackageDeclaration(this.name);
    }

    @Override
    public StructuralPropertyDescriptor getChildPropertyDescriptor(ASTNode aSTNode) {
        return org.eclipse.jdt.core.dom.CompilationUnit.PACKAGE_PROPERTY;
    }

    @Override
    public String getMainTaskName() {
        return Messages.operation_createPackageProgress;
    }

    @Override
    public void initializeDefaultPosition() {
        try {
            ICompilationUnit compilationUnit = getCompilationUnit();
            IImportDeclaration[] imports = compilationUnit.getImports();
            if (imports.length > 0) {
                createBefore(imports[0]);
                return;
            }
            IType[] types = compilationUnit.getTypes();
            if (types.length > 0) {
                createBefore(types[0]);
            }
        } catch (JavaModelException unused) {
        }
    }

    @Override
    public IJavaModelStatus verify() {
        IJavaModelStatus verify = super.verify();
        if (!verify.isOK()) {
            return verify;
        }
        IJavaProject javaProject = getParentElement().getJavaProject();
        return JavaConventions.validatePackageName(this.name, javaProject.getOption("org.eclipse.jdt.core.compiler.source", true), javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true)).getSeverity() == 4 ? new JavaModelStatus(IJavaModelStatusConstants.INVALID_NAME, this.name) : JavaModelStatus.VERIFIED_OK;
    }
}
