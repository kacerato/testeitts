package com.github.javaparser.printer.concretesyntaxmodel;

import com.github.javaparser.TokenTypes;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.printer.SourcePrinter;
import com.github.javaparser.printer.concretesyntaxmodel.CsmConditional;
import com.github.javaparser.printer.lexicalpreservation.TextElement;
import com.github.javaparser.utils.LineSeparator;
import java.util.Arrays;
import java.util.List;

public interface CsmElement {
    static CsmElement attribute(ObservableProperty property) {
        return new CsmAttribute(property);
    }

    static CsmElement block(CsmElement content) {
        return sequence(token(103), indent(), content, unindent(), token(104));
    }

    static CsmElement charToken(ObservableProperty property) {
        return new CsmChar(property);
    }

    static CsmElement child(ObservableProperty property) {
        return new CsmSingleReference(property);
    }

    static CsmElement comma() {
        return new CsmToken(108);
    }

    static CsmElement comment() {
        return new CsmComment();
    }

    static CsmElement conditional(ObservableProperty property, CsmConditional.Condition condition, CsmElement thenElement) {
        return new CsmConditional(property, condition, thenElement);
    }

    static CsmElement indent() {
        return new CsmIndent();
    }

    static CsmElement list(ObservableProperty property) {
        return new CsmList(property);
    }

    static CsmElement newline() {
        return newline(LineSeparator.SYSTEM);
    }

    static CsmElement none() {
        return new CsmNone();
    }

    static CsmElement orphanCommentsBeforeThis() {
        return new CsmNone();
    }

    static CsmElement orphanCommentsEnding() {
        return new CsmOrphanCommentsEnding();
    }

    static CsmElement semicolon() {
        return new CsmToken(107);
    }

    static CsmElement sequence(CsmElement... elements) {
        return new CsmSequence(Arrays.asList(elements));
    }

    static CsmElement space() {
        return new CsmToken(TokenTypes.spaceTokenKind(), " ");
    }

    static CsmElement string(int tokenType, String content) {
        return new CsmToken(tokenType, content);
    }

    static CsmElement stringToken(ObservableProperty property) {
        return new CsmString(property);
    }

    static CsmElement textBlockToken(ObservableProperty property) {
        return new CsmString(property);
    }

    static CsmElement token(int tokenType) {
        return new CsmToken(tokenType);
    }

    static CsmElement unindent() {
        return new CsmUnindent();
    }

    default boolean isCorrespondingElement(TextElement textElement) {
        return false;
    }

    void prettyPrint(Node node, SourcePrinter printer);

    static CsmElement conditional(ObservableProperty property, CsmConditional.Condition condition, CsmElement thenElement, CsmElement elseElement) {
        return new CsmConditional(property, condition, thenElement, elseElement);
    }

    static CsmElement list(ObservableProperty property, CsmElement separator) {
        return new CsmList(property, none(), separator, new CsmNone(), new CsmNone());
    }

    static CsmElement newline(LineSeparator lineSeparator) {
        return new CsmToken(TokenTypes.eolTokenKind(lineSeparator), lineSeparator.asRawString());
    }

    static CsmElement string(int tokenType) {
        return new CsmToken(tokenType);
    }

    static CsmElement conditional(List<ObservableProperty> properties, CsmConditional.Condition condition, CsmElement thenElement, CsmElement elseElement) {
        return new CsmConditional(properties, condition, thenElement, elseElement);
    }

    static CsmElement list(ObservableProperty property, CsmElement separator, CsmElement preceeding, CsmElement following) {
        return new CsmList(property, none(), separator, preceeding, following);
    }

    static CsmElement list(ObservableProperty property, CsmElement separatorPre, CsmElement separatorPost, CsmElement preceeding, CsmElement following) {
        return new CsmList(property, separatorPre, separatorPost, preceeding, following);
    }
}
