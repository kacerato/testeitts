package org.eclipse.jdt.internal.core;

import java.util.List;
import java.util.Map;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.EnumDeclaration;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.rewrite.ASTRewrite;
import org.eclipse.jdt.core.formatter.IndentManipulation;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.core.util.Util;

public abstract class CreateTypeMemberOperation extends CreateElementInCUOperation {
    protected String alteredName;
    protected ASTNode createdNode;
    protected String source;

    public CreateTypeMemberOperation(IJavaElement iJavaElement, String str, boolean z10) {
        super(iJavaElement);
        this.source = str;
        this.force = z10;
    }

    private String removeIndentAndNewLines(String str, ICompilationUnit iCompilationUnit) throws JavaModelException {
        Map<String, String> options = iCompilationUnit.getJavaProject().getOptions(true);
        int tabWidth = IndentManipulation.getTabWidth(options);
        int indentWidth = IndentManipulation.getIndentWidth(options);
        int measureIndentUnits = IndentManipulation.measureIndentUnits(str, tabWidth, indentWidth);
        int length = str.length();
        int i10 = -1;
        while (i10 < length - 1) {
            i10++;
            if (!ScannerHelper.isWhitespace(str.charAt(i10))) {
                break;
            }
        }
        int i11 = i10;
        while (length > 0) {
            length--;
            if (!ScannerHelper.isWhitespace(str.charAt(length))) {
                break;
            }
        }
        return IndentManipulation.changeIndent(str.substring(i11, length + 1), measureIndentUnits, tabWidth, indentWidth, "", iCompilationUnit.findRecommendedLineSeparator());
    }

    @Override
    public ASTNode generateElementAST(ASTRewrite aSTRewrite, ICompilationUnit iCompilationUnit) throws JavaModelException {
        String str;
        if (this.createdNode == null) {
            this.source = removeIndentAndNewLines(this.source, iCompilationUnit);
            ASTParser newParser = ASTParser.newParser(11);
            newParser.setSource(this.source.toCharArray());
            newParser.setProject(getCompilationUnit().getJavaProject());
            newParser.setKind(4);
            ASTNode createAST = newParser.createAST(this.progressMonitor);
            if (createAST.getNodeType() != 55) {
                str = generateSyntaxIncorrectAST();
                if (this.createdNode == null) {
                    throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_CONTENTS));
                }
            } else {
                TypeDeclaration typeDeclaration = (TypeDeclaration) createAST;
                if ((typeDeclaration.getFlags() & 1) != 0) {
                    str = generateSyntaxIncorrectAST();
                    if (this.createdNode == null) {
                        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_CONTENTS));
                    }
                } else {
                    List bodyDeclarations = typeDeclaration.bodyDeclarations();
                    if (bodyDeclarations.size() == 0) {
                        throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_CONTENTS));
                    }
                    this.createdNode = (ASTNode) bodyDeclarations.iterator().next();
                    str = this.source;
                }
            }
            if (this.alteredName != null) {
                SimpleName rename = rename(this.createdNode, this.createdNode.getAST().newSimpleName(this.alteredName));
                int startPosition = rename.getStartPosition();
                int length = rename.getLength() + startPosition;
                StringBuffer stringBuffer = new StringBuffer();
                if (this.source.equals(str)) {
                    stringBuffer.append(str.substring(0, startPosition));
                    stringBuffer.append(this.alteredName);
                    stringBuffer.append(str.substring(length));
                } else {
                    int startPosition2 = this.createdNode.getStartPosition();
                    int length2 = this.createdNode.getLength() + startPosition2;
                    stringBuffer.append(str.substring(startPosition2, startPosition));
                    stringBuffer.append(this.alteredName);
                    stringBuffer.append(str.substring(length, length2));
                }
                this.source = stringBuffer.toString();
            }
        }
        return aSTRewrite == null ? this.createdNode : aSTRewrite.createStringPlaceholder(this.source, this.createdNode.getNodeType());
    }

    public String generateSyntaxIncorrectAST() {
        StringBuffer stringBuffer = new StringBuffer();
        IType type = getType();
        String lineSeparator = Util.getLineSeparator(this.source, type == null ? null : type.getJavaProject());
        stringBuffer.append(String.valueOf(lineSeparator) + " public class A {" + lineSeparator);
        stringBuffer.append(this.source);
        stringBuffer.append(lineSeparator);
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
        ASTParser newParser = ASTParser.newParser(11);
        newParser.setSource(stringBuffer.toString().toCharArray());
        List bodyDeclarations = ((TypeDeclaration) ((org.eclipse.jdt.core.dom.CompilationUnit) newParser.createAST(null)).types().iterator().next()).bodyDeclarations();
        if (bodyDeclarations.size() != 0) {
            this.createdNode = (ASTNode) bodyDeclarations.iterator().next();
        }
        return stringBuffer.toString();
    }

    @Override
    public StructuralPropertyDescriptor getChildPropertyDescriptor(ASTNode aSTNode) {
        int nodeType = aSTNode.getNodeType();
        return nodeType != 15 ? nodeType != 71 ? nodeType != 81 ? TypeDeclaration.BODY_DECLARATIONS_PROPERTY : AnnotationTypeDeclaration.BODY_DECLARATIONS_PROPERTY : EnumDeclaration.BODY_DECLARATIONS_PROPERTY : org.eclipse.jdt.core.dom.CompilationUnit.TYPES_PROPERTY;
    }

    public IType getType() {
        return (IType) getParentElement();
    }

    public abstract SimpleName rename(ASTNode aSTNode, SimpleName simpleName);

    @Override
    public void setAlteredName(String str) {
        this.alteredName = str;
    }

    @Override
    public IJavaModelStatus verify() {
        IJavaModelStatus verify = super.verify();
        if (!verify.isOK()) {
            return verify;
        }
        if (this.source == null) {
            return new JavaModelStatus(IJavaModelStatusConstants.INVALID_CONTENTS);
        }
        if (this.force) {
            return JavaModelStatus.VERIFIED_OK;
        }
        try {
            generateElementAST(null, getCompilationUnit());
            return verifyNameCollision();
        } catch (JavaModelException e10) {
            return e10.getJavaModelStatus();
        }
    }

    public IJavaModelStatus verifyNameCollision() {
        return JavaModelStatus.VERIFIED_OK;
    }
}
