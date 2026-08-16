package com.github.javaparser.printer.lexicalpreservation;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.type.PrimitiveType;
import com.github.javaparser.printer.concretesyntaxmodel.CsmElement;
import com.github.javaparser.printer.concretesyntaxmodel.CsmToken;
import com.github.javaparser.printer.lexicalpreservation.LexicalDifferenceCalculator;
import org.eclipse.jdt.internal.core.JavaElement;

public class Removed implements DifferenceElement {
    private final CsmElement element;

    public Removed(CsmElement element) {
        this.element = element;
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        return this.element.equals(((Removed) o10).element);
    }

    public Node getChild() {
        if (isChild()) {
            return ((LexicalDifferenceCalculator.CsmChild) this.element).getChild();
        }
        throw new IllegalStateException("Removed is not a " + LexicalDifferenceCalculator.CsmChild.class.getSimpleName());
    }

    @Override
    public CsmElement getElement() {
        return this.element;
    }

    public int getTokenType() {
        if (isToken()) {
            return ((CsmToken) this.element).getTokenType();
        }
        throw new IllegalStateException("Removed is not a " + CsmToken.class.getSimpleName());
    }

    public int hashCode() {
        return this.element.hashCode();
    }

    @Override
    public boolean isAdded() {
        return false;
    }

    @Override
    public boolean isKept() {
        return false;
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
        return true;
    }

    public boolean isToken() {
        return this.element instanceof CsmToken;
    }

    public boolean isWhiteSpace() {
        if (isToken()) {
            return ((CsmToken) this.element).isWhiteSpace();
        }
        return false;
    }

    public boolean isWhiteSpaceNotEol() {
        if (isToken()) {
            return ((CsmToken) this.element).isWhiteSpaceNotEol();
        }
        return false;
    }

    public String toString() {
        return "Removed{" + ((Object) this.element) + JavaElement.JEM_ANNOTATION;
    }
}
