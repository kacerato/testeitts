package org.eclipse.jdt.internal.codeassist.select;

import java.util.List;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.codeassist.SelectionEngine;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.parser.JavadocParser;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.Scanner;

public class SelectionJavadocParser extends JavadocParser {
    public boolean inheritDocTagSelected;
    ASTNode selectedNode;
    int selectionEnd;
    int selectionStart;

    public SelectionJavadocParser(SelectionParser selectionParser) {
        super(selectionParser);
        this.shouldReportProblems = false;
        this.reportProblems = false;
        this.kind = 260;
        this.inheritDocTagSelected = false;
    }

    @Override
    public boolean checkDeprecation(int i10) {
        Parser parser = this.sourceParser;
        int i11 = ((SelectionParser) parser).selectionStart;
        this.selectionStart = i11;
        int i12 = ((SelectionParser) parser).selectionEnd;
        this.selectionEnd = i12;
        Scanner scanner = parser.scanner;
        int i13 = scanner.commentStarts[i10];
        this.javadocStart = i13;
        int i14 = scanner.commentStops[i10];
        this.javadocEnd = i14;
        if (i13 > i11 || i12 > i14) {
            this.docComment = null;
            return false;
        }
        if (SelectionEngine.DEBUG) {
            System.out.println("SELECTION in Javadoc:");
        }
        super.checkDeprecation(i10);
        return false;
    }

    @Override
    public boolean commentParse() {
        this.docComment = new SelectionJavadoc(this.javadocStart, this.javadocEnd);
        return super.commentParse();
    }

    @Override
    public Object createArgumentReference(char[] cArr, int i10, boolean z10, Object obj, long[] jArr, long j10) throws InvalidInputException {
        Expression expression = (Expression) super.createArgumentReference(cArr, i10, z10, obj, jArr, j10);
        TypeReference typeReference = (TypeReference) obj;
        int i11 = typeReference.sourceStart;
        int i12 = typeReference.sourceEnd;
        if (i11 <= this.selectionStart && this.selectionEnd <= i12) {
            this.selectedNode = expression;
            this.abort = true;
            if (SelectionEngine.DEBUG) {
                System.out.println("\tselected argument=" + ((Object) this.selectedNode));
            }
        }
        return expression;
    }

    @Override
    public Object createFieldReference(Object obj) throws InvalidInputException {
        long j10 = this.identifierPositionStack[0];
        int i10 = (int) (j10 >>> 32);
        int i11 = (int) j10;
        if (i10 > this.selectionStart || this.selectionEnd > i11) {
            return null;
        }
        this.selectedNode = (ASTNode) super.createFieldReference(obj);
        this.abort = true;
        if (!SelectionEngine.DEBUG) {
            return null;
        }
        System.out.println("\tselected field=" + ((Object) this.selectedNode));
        return null;
    }

    @Override
    public Object createMethodReference(Object obj, List list) throws InvalidInputException {
        long j10 = this.identifierPositionStack[this.identifierLengthStack[0] - 1];
        int i10 = (int) j10;
        if (((int) (j10 >>> 32)) > this.selectionStart || this.selectionEnd > i10) {
            return null;
        }
        this.selectedNode = (ASTNode) super.createMethodReference(obj, list);
        this.abort = true;
        if (!SelectionEngine.DEBUG) {
            return null;
        }
        System.out.println("\tselected method=" + ((Object) this.selectedNode));
        return null;
    }

    @Override
    public Object createTypeReference(int i10) {
        TypeReference typeReference = (TypeReference) super.createTypeReference(i10);
        if (typeReference.sourceStart <= this.selectionStart && this.selectionEnd <= typeReference.sourceEnd) {
            if (typeReference instanceof JavadocQualifiedTypeReference) {
                JavadocQualifiedTypeReference javadocQualifiedTypeReference = (JavadocQualifiedTypeReference) typeReference;
                int length = javadocQualifiedTypeReference.tokens.length - 1;
                for (int i11 = 0; i11 < length; i11++) {
                    long j10 = javadocQualifiedTypeReference.sourcePositions[i11];
                    int i12 = (int) (j10 >>> 32);
                    int i13 = (int) j10;
                    if (i12 <= this.selectionStart && this.selectionEnd <= i13) {
                        int i14 = i11 + 1;
                        char[][] cArr = new char[i14];
                        int i15 = this.identifierPtr - length;
                        System.arraycopy(this.identifierStack, i15, cArr, 0, i14);
                        long[] jArr = new long[i14];
                        System.arraycopy(this.identifierPositionStack, i15, jArr, 0, i14);
                        this.selectedNode = new JavadocQualifiedTypeReference(cArr, jArr, this.tagSourceStart, this.tagSourceEnd);
                        this.abort = true;
                        if (SelectionEngine.DEBUG) {
                            System.out.println("\tselected partial qualified type=" + ((Object) this.selectedNode));
                        }
                        return typeReference;
                    }
                }
            }
            this.selectedNode = typeReference;
            this.abort = true;
            if (SelectionEngine.DEBUG) {
                System.out.println("\tselected type=" + ((Object) this.selectedNode));
            }
        }
        return typeReference;
    }

    @Override
    public void parseInheritDocTag() {
        if (this.tagSourceStart == this.selectionStart && this.tagSourceEnd == this.selectionEnd) {
            this.inheritDocTagSelected = true;
        }
    }

    @Override
    public boolean pushParamName(boolean z10) {
        if (!super.pushParamName(z10)) {
            return false;
        }
        Object[] objArr = this.astStack;
        int i10 = this.astPtr;
        this.astPtr = i10 - 1;
        Expression expression = (Expression) objArr[i10];
        if (expression.sourceStart > this.selectionStart || this.selectionEnd > expression.sourceEnd) {
            return false;
        }
        this.selectedNode = expression;
        this.abort = true;
        if (!SelectionEngine.DEBUG) {
            return false;
        }
        System.out.println("\tselected param=" + ((Object) this.selectedNode));
        return false;
    }

    @Override
    public void updateDocComment() {
        ASTNode aSTNode = this.selectedNode;
        if ((aSTNode instanceof Expression) && ((Expression) aSTNode).isTrulyExpression()) {
            ((SelectionJavadoc) this.docComment).selectedNode = (Expression) this.selectedNode;
        } else if (this.inheritDocTagSelected) {
            ((SelectionJavadoc) this.docComment).inheritDocSelected = true;
        }
    }
}
