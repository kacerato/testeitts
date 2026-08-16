package com.github.javaparser.printer.concretesyntaxmodel;

import com.github.javaparser.GeneratedJavaParserConstants;
import com.github.javaparser.TokenTypes;
import com.github.javaparser.ast.Node;
import com.github.javaparser.printer.SourcePrinter;
import com.github.javaparser.printer.lexicalpreservation.TextElement;
import com.github.javaparser.printer.lexicalpreservation.TokenTextElement;
import com.github.javaparser.utils.LineSeparator;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class CsmToken implements CsmElement {
    private String content;
    private final int tokenType;

    public CsmToken(int tokenType) {
        this.tokenType = tokenType;
        String str = GeneratedJavaParserConstants.tokenImage[tokenType];
        this.content = str;
        if (str.startsWith(JavadocConstants.ANCHOR_PREFIX_END)) {
            String str2 = this.content;
            this.content = str2.substring(1, str2.length() - 1);
        }
        if (TokenTypes.isEndOfLineToken(tokenType)) {
            this.content = LineSeparator.lookupEscaped(this.content).get().asRawString();
        } else if (TokenTypes.isWhitespaceButNotEndOfLine(tokenType)) {
            this.content = " ";
        }
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        CsmToken csmToken = (CsmToken) o10;
        if (this.tokenType != csmToken.tokenType) {
            return false;
        }
        String str = this.content;
        String str2 = csmToken.content;
        return str == null ? str2 == null : str.equals(str2);
    }

    public String getContent() {
        return this.content;
    }

    public int getTokenType() {
        return this.tokenType;
    }

    public int hashCode() {
        int i10 = this.tokenType * 31;
        String str = this.content;
        return i10 + (str != null ? str.hashCode() : 0);
    }

    @Override
    public boolean isCorrespondingElement(TextElement textElement) {
        if (textElement instanceof TokenTextElement) {
            TokenTextElement tokenTextElement = (TokenTextElement) textElement;
            if (tokenTextElement.getTokenKind() == getTokenType() && tokenTextElement.getText().equals(getContent())) {
                return true;
            }
        }
        return false;
    }

    public boolean isNewLine() {
        return TokenTypes.isEndOfLineToken(this.tokenType);
    }

    public boolean isWhiteSpace() {
        return TokenTypes.isWhitespace(this.tokenType);
    }

    public boolean isWhiteSpaceNotEol() {
        return isWhiteSpace() && !isNewLine();
    }

    @Override
    public void prettyPrint(Node node, SourcePrinter printer) {
        if (TokenTypes.isEndOfLineToken(this.tokenType)) {
            printer.println();
        } else {
            printer.print(getContent());
        }
    }

    public String toString() {
        return String.format("%s(property:%s)", getClass().getSimpleName(), this.content);
    }

    public CsmToken(int tokenType, String content) {
        this.tokenType = tokenType;
        this.content = content;
    }
}
