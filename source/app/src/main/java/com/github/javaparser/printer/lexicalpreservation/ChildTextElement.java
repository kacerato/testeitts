package com.github.javaparser.printer.lexicalpreservation;

import com.github.javaparser.Range;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.comments.Comment;
import java.util.Optional;
import java.util.function.Consumer;
import org.eclipse.jdt.internal.core.JavaElement;

public class ChildTextElement extends TextElement {
    private final Node child;

    public ChildTextElement(Node child) {
        this.child = child;
    }

    @Override
    public void accept(final LexicalPreservingVisitor visitor) {
        getNodeTextForWrappedNode().getElements().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((TextElement) obj).accept(LexicalPreservingVisitor.this);
            }
        });
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        return this.child.equals(((ChildTextElement) o10).child);
    }

    @Override
    public String expand() {
        return LexicalPreservingPrinter.print(this.child);
    }

    public Node getChild() {
        return this.child;
    }

    public NodeText getNodeTextForWrappedNode() {
        return LexicalPreservingPrinter.getOrCreateNodeText(this.child);
    }

    @Override
    public Optional<Range> getRange() {
        return this.child.getRange();
    }

    public int hashCode() {
        return this.child.hashCode();
    }

    @Override
    public boolean isChildOfClass(Class<? extends Node> nodeClass) {
        return nodeClass.isInstance(this.child);
    }

    @Override
    public boolean isComment() {
        return this.child instanceof Comment;
    }

    @Override
    public boolean isIdentifier() {
        return false;
    }

    @Override
    public boolean isKeyword() {
        return false;
    }

    @Override
    public boolean isLiteral() {
        return false;
    }

    @Override
    public boolean isNewline() {
        return false;
    }

    @Override
    public boolean isNode(Node node) {
        return node == this.child;
    }

    @Override
    public boolean isPrimitive() {
        return false;
    }

    @Override
    public boolean isSeparator() {
        return false;
    }

    @Override
    public boolean isSpaceOrTab() {
        return false;
    }

    @Override
    public boolean isToken(int tokenKind) {
        return false;
    }

    @Override
    public boolean isWhiteSpace() {
        return false;
    }

    public String toString() {
        return "ChildTextElement{" + ((Object) this.child) + JavaElement.JEM_ANNOTATION;
    }
}
