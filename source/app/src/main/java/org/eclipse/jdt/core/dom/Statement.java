package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.parser.Scanner;

public abstract class Statement extends ASTNode {
    private String optionalLeadingComment;

    public Statement(AST ast) {
        super(ast);
        this.optionalLeadingComment = null;
    }

    public void copyLeadingComment(Statement statement) {
        setLeadingComment(statement.getLeadingComment());
    }

    public String getLeadingComment() {
        return this.optionalLeadingComment;
    }

    @Override
    public int memSize() {
        return ASTNode.stringSize(getLeadingComment()) + 44;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0026. Please report as an issue. */
    public void setLeadingComment(String str) {
        if (str != null) {
            char[] charArray = str.toCharArray();
            Scanner scanner = this.ast.scanner;
            scanner.resetTo(0, charArray.length);
            scanner.setSource(charArray);
            while (true) {
                boolean z10 = false;
                while (true) {
                    try {
                        int nextToken = scanner.getNextToken();
                        if (nextToken != 61) {
                            switch (nextToken) {
                                case 1001:
                                case 1002:
                                case 1003:
                                    if (z10) {
                                        throw new IllegalArgumentException();
                                    }
                                    z10 = true;
                            }
                        } else if (!z10) {
                            throw new IllegalArgumentException();
                        }
                    } catch (InvalidInputException e10) {
                        throw new IllegalArgumentException(e10);
                    }
                }
            }
        }
        checkModifiable();
        this.optionalLeadingComment = str;
    }
}
