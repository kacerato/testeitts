package com.github.javaparser.printer.lexicalpreservation;

import com.github.javaparser.printer.concretesyntaxmodel.CsmElement;
import com.github.javaparser.printer.concretesyntaxmodel.CsmMix;
import com.github.javaparser.printer.concretesyntaxmodel.CsmToken;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.eclipse.jdt.internal.core.JavaElement;

public class Reshuffled implements DifferenceElement {
    private final CsmMix nextOrder;
    private final CsmMix previousOrder;

    public Reshuffled(CsmMix previousOrder, CsmMix nextOrder) {
        this.previousOrder = previousOrder;
        this.nextOrder = nextOrder;
    }

    private boolean isNewLineToken(CsmElement element) {
        return isToken(element) && ((CsmToken) element).isNewLine();
    }

    private boolean isToken(CsmElement element) {
        return element instanceof CsmToken;
    }

    public CsmElement lambda$replaceTokens$0(final CsmElement lineSeparator, CsmElement element) {
        return isNewLineToken(element) ? lineSeparator : element;
    }

    private List<CsmElement> replaceTokens(List<CsmElement> elements, final CsmElement lineSeparator) {
        return (List) elements.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                CsmElement lambda$replaceTokens$0;
                lambda$replaceTokens$0 = Reshuffled.this.lambda$replaceTokens$0(lineSeparator, (CsmElement) obj);
                return lambda$replaceTokens$0;
            }
        }).collect(Collectors.toList());
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        Reshuffled reshuffled = (Reshuffled) o10;
        if (this.previousOrder.equals(reshuffled.previousOrder)) {
            return this.nextOrder.equals(reshuffled.nextOrder);
        }
        return false;
    }

    public CsmMix getNextOrder() {
        return this.nextOrder;
    }

    public CsmMix getPreviousOrder() {
        return this.previousOrder;
    }

    public int hashCode() {
        return (this.previousOrder.hashCode() * 31) + this.nextOrder.hashCode();
    }

    @Override
    public boolean isAdded() {
        return false;
    }

    @Override
    public boolean isKept() {
        return false;
    }

    @Override
    public boolean isRemoved() {
        return false;
    }

    @Override
    public DifferenceElement replaceEolTokens(CsmElement lineSeparator) {
        return new Reshuffled(new CsmMix(replaceTokens(this.previousOrder.getElements(), lineSeparator)), new CsmMix(replaceTokens(this.nextOrder.getElements(), lineSeparator)));
    }

    public String toString() {
        return "Reshuffled{" + ((Object) this.nextOrder) + ", previous=" + ((Object) this.previousOrder) + JavaElement.JEM_ANNOTATION;
    }

    @Override
    public CsmMix getElement() {
        return this.nextOrder;
    }
}
