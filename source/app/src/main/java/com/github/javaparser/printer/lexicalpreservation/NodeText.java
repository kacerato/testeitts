package com.github.javaparser.printer.lexicalpreservation;

import com.github.javaparser.ast.Node;
import java.util.LinkedList;
import java.util.List;
import java.util.function.Consumer;
import org.eclipse.jdt.internal.core.JavaElement;

public class NodeText {
    public static final int NOT_FOUND = -1;
    private final List<TextElement> elements;

    public NodeText(List<TextElement> elements) {
        this.elements = elements;
    }

    public static void lambda$expand$0(final StringBuffer sb2, TextElement e10) {
        sb2.append(e10.expand());
    }

    public void addChild(Node child) {
        addElement(new ChildTextElement(child));
    }

    public void addElement(TextElement nodeTextElement) {
        this.elements.add(nodeTextElement);
    }

    public void addToken(int tokenKind, String text) {
        this.elements.add(new TokenTextElement(tokenKind, text));
    }

    public String expand() {
        final StringBuffer stringBuffer = new StringBuffer();
        this.elements.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                NodeText.lambda$expand$0(StringBuffer.this, (TextElement) obj);
            }
        });
        return stringBuffer.toString();
    }

    public int findChild(Node child) {
        return findChild(child, 0);
    }

    public int findElement(TextElementMatcher matcher) {
        return findElement(matcher, 0);
    }

    public List<TextElement> getElements() {
        return this.elements;
    }

    public TextElement getTextElement(int index) {
        return this.elements.get(index);
    }

    public int numberOfElements() {
        return this.elements.size();
    }

    public void remove(TextElementMatcher matcher, boolean potentiallyFollowingWhitespace) {
        for (TextElement textElement : this.elements) {
            if (matcher.match(textElement)) {
                this.elements.remove(textElement);
                if (potentiallyFollowingWhitespace) {
                    if (this.elements.size() <= 0) {
                        throw new UnsupportedOperationException("There is no element to remove!");
                    }
                    if (this.elements.get(0).isWhiteSpace()) {
                        this.elements.remove(0);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        throw new IllegalArgumentException();
    }

    public void removeElement(int index) {
        this.elements.remove(index);
    }

    public void replace(TextElementMatcher position, TextElement newElement) {
        int findElement = findElement(position, 0);
        this.elements.remove(findElement);
        this.elements.add(findElement, newElement);
    }

    public String toString() {
        return "NodeText{" + ((Object) this.elements) + JavaElement.JEM_ANNOTATION;
    }

    public int tryToFindChild(Node child) {
        return tryToFindChild(child, 0);
    }

    public int tryToFindElement(TextElementMatcher matcher, int from) {
        while (from < this.elements.size()) {
            if (matcher.match(this.elements.get(from))) {
                return from;
            }
            from++;
        }
        return -1;
    }

    public void addChild(int index, Node child) {
        addElement(index, new ChildTextElement(child));
    }

    public void addElement(int index, TextElement nodeTextElement) {
        this.elements.add(index, nodeTextElement);
    }

    public void addToken(int index, int tokenKind, String text) {
        this.elements.add(index, new TokenTextElement(tokenKind, text));
    }

    public int findChild(Node child, int from) {
        return findElement(TextElementMatchers.byNode(child), from);
    }

    public int findElement(TextElementMatcher matcher, int from) {
        int tryToFindElement = tryToFindElement(matcher, from);
        if (tryToFindElement != -1) {
            return tryToFindElement;
        }
        throw new IllegalArgumentException(String.format("I could not find child '%s' from position %d. Elements: %s", matcher, Integer.valueOf(from), this.elements));
    }

    public int tryToFindChild(Node child, int from) {
        return tryToFindElement(TextElementMatchers.byNode(child), from);
    }

    public NodeText() {
        this(new LinkedList());
    }
}
