package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.internal.core.util.Messages;

public class CreateImportOperation extends CreateElementInCUOperation {
    protected int flags;
    protected String importName;

    public CreateImportOperation(String str, ICompilationUnit iCompilationUnit, int i10) {
        super(iCompilationUnit);
        this.importName = str;
        this.flags = i10;
    }

    @Override
    public ASTNode generateElementAST(ASTRewrite aSTRewrite, ICompilationUnit iCompilationUnit) throws JavaModelException {
        boolean endsWith = this.importName.endsWith(".*");
        String str = this.importName;
        if (endsWith) {
            str = str.substring(0, str.length() - 2);
        }
        for (org.eclipse.jdt.core.dom.ImportDeclaration importDeclaration : this.cuAST.imports()) {
            if (str.equals(importDeclaration.getName().getFullyQualifiedName()) && endsWith == importDeclaration.isOnDemand() && Flags.isStatic(this.flags) == importDeclaration.isStatic()) {
                this.creationOccurred = false;
                return null;
            }
        }
        AST ast = this.cuAST.getAST();
        org.eclipse.jdt.core.dom.ImportDeclaration newImportDeclaration = ast.newImportDeclaration();
        newImportDeclaration.setStatic(Flags.isStatic(this.flags));
        char[][] splitOn = CharOperation.splitOn('.', str.toCharArray(), 0, str.length());
        int length = splitOn.length;
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            strArr[i10] = String.valueOf(splitOn[i10]);
        }
        newImportDeclaration.setName(ast.newName(strArr));
        if (endsWith) {
            newImportDeclaration.setOnDemand(true);
        }
        return newImportDeclaration;
    }

    @Override
    public IJavaElement generateResultHandle() {
        return getCompilationUnit().getImport(this.importName);
    }

    @Override
    public StructuralPropertyDescriptor getChildPropertyDescriptor(ASTNode aSTNode) {
        return org.eclipse.jdt.core.dom.CompilationUnit.IMPORTS_PROPERTY;
    }

    @Override
    public String getMainTaskName() {
        return Messages.operation_createImportsProgress;
    }

    @Override
    public void initializeDefaultPosition() {
        try {
            ICompilationUnit compilationUnit = getCompilationUnit();
            IImportDeclaration[] imports = compilationUnit.getImports();
            if (imports.length > 0) {
                createAfter(imports[imports.length - 1]);
                return;
            }
            IType[] types = compilationUnit.getTypes();
            if (types.length > 0) {
                createBefore(types[0]);
                return;
            }
            IJavaElement[] children = compilationUnit.getChildren();
            for (int i10 = 0; i10 < children.length; i10++) {
                if (children[i10].getElementType() == 11) {
                    createAfter(children[i10]);
                    return;
                }
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
        return JavaConventions.validateImportDeclaration(this.importName, javaProject.getOption("org.eclipse.jdt.core.compiler.source", true), javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true)).getSeverity() == 4 ? new JavaModelStatus(IJavaModelStatusConstants.INVALID_NAME, this.importName) : JavaModelStatus.VERIFIED_OK;
    }
}
