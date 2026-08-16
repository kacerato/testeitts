package com.github.javaparser.printer.lexicalpreservation;

import com.github.javaparser.printer.concretesyntaxmodel.CsmElement;
import com.github.javaparser.printer.concretesyntaxmodel.CsmIndent;
import com.github.javaparser.printer.concretesyntaxmodel.CsmToken;
import com.github.javaparser.printer.concretesyntaxmodel.CsmUnindent;
import com.github.javaparser.printer.lexicalpreservation.LexicalDifferenceCalculator;
import org.eclipse.jdt.internal.core.JavaElement;

public class Added implements DifferenceElement {
    private final CsmElement element;

    public Added(CsmElement element) {
        this.element = element;
    }

    private boolean isToken() {
        return this.element instanceof CsmToken;
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        return this.element.equals(((Added) o10).element);
    }

    @Override
    public CsmElement getElement() {
        return this.element;
    }

    public int hashCode() {
        return this.element.hashCode();
    }

    @Override
    public boolean isAdded() {
        return true;
    }

    public boolean isIndent() {
        return this.element instanceof CsmIndent;
    }

    @Override
    public boolean isKept() {
        return false;
    }

    public boolean isNewLine() {
        return isToken() && ((CsmToken) this.element).isNewLine();
    }

    @Override
    public boolean isRemoved() {
        return false;
    }

    public boolean isUnindent() {
        return this.element instanceof CsmUnindent;
    }

    @Override
    public DifferenceElement replaceEolTokens(CsmElement lineSeparator) {
        return isNewLine() ? new Added(lineSeparator) : this;
    }

    public String toString() {
        return "Added{" + ((Object) this.element) + JavaElement.JEM_ANNOTATION;
    }

    public TextElement toTextElement() {
        CsmElement csmElement = this.element;
        if (csmElement instanceof LexicalDifferenceCalculator.CsmChild) {
            return new ChildTextElement(((LexicalDifferenceCalculator.CsmChild) csmElement).getChild());
        }
        if (csmElement instanceof CsmToken) {
            return new TokenTextElement(((CsmToken) csmElement).getTokenType(), ((CsmToken) this.element).getContent());
        }
        throw new UnsupportedOperationException("Unsupported element type: " + this.element.getClass().getSimpleName());
    }
}
