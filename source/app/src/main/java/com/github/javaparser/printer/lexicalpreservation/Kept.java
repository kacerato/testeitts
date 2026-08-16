package com.github.javaparser.printer.lexicalpreservation;

import com.github.javaparser.TokenTypes;
import com.github.javaparser.ast.type.PrimitiveType;
import com.github.javaparser.printer.concretesyntaxmodel.CsmElement;
import com.github.javaparser.printer.concretesyntaxmodel.CsmIndent;
import com.github.javaparser.printer.concretesyntaxmodel.CsmToken;
import com.github.javaparser.printer.concretesyntaxmodel.CsmUnindent;
import com.github.javaparser.printer.lexicalpreservation.LexicalDifferenceCalculator;
import org.eclipse.jdt.internal.core.JavaElement;

public class Kept implements DifferenceElement {
    private final CsmElement element;

    public Kept(CsmElement element) {
        this.element = element;
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        return this.element.equals(((Kept) o10).element);
    }

    @Override
    public CsmElement getElement() {
        return this.element;
    }

    public int getTokenType() {
        if (isToken()) {
            return ((CsmToken) this.element).getTokenType();
        }
        throw new IllegalStateException("Kept is not a " + CsmToken.class.getSimpleName());
    }

    public int hashCode() {
        return this.element.hashCode();
    }

    @Override
    public boolean isAdded() {
        return false;
    }

    public boolean isIndent() {
        return this.element instanceof CsmIndent;
    }

    @Override
    public boolean isKept() {
        return true;
    }

    public boolean isNewLine() {
        if (isToken()) {
            return ((CsmToken) this.element).isNewLine();
        }
        return false;
    }

    public boolean isPrimitiveType() {
        if (isChild()) {
            return ((LexicalDifferenceCalculator.CsmChild) this.element).getChild() instanceof PrimitiveType;
        }
        return false;
    }

    @Override
    public boolean isRemoved() {
        return false;
    }

    public boolean isToken() {
        return this.element instanceof CsmToken;
    }

    public boolean isUnindent() {
        return this.element instanceof CsmUnindent;
    }

    public boolean isWhiteSpace() {
        if (isToken()) {
            return ((CsmToken) this.element).isWhiteSpace();
        }
        return false;
    }

    public boolean isWhiteSpaceOrComment() {
        if (isToken()) {
            return TokenTypes.isWhitespaceOrComment(((CsmToken) this.element).getTokenType());
        }
        return false;
    }

    public String toString() {
        return "Kept{" + ((Object) this.element) + JavaElement.JEM_ANNOTATION;
    }
}
