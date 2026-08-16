package com.github.javaparser.javadoc.description;

import com.github.javaparser.javadoc.description.JavadocDescription;
import com.github.javaparser.javadoc.description.JavadocDescriptionElement;
import com.github.javaparser.utils.Pair;
import java.util.LinkedList;
import java.util.List;
import java.util.function.Consumer;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavaElement;

public class JavadocDescription {
    private List<JavadocDescriptionElement> elements;

    public JavadocDescription() {
        this.elements = new LinkedList();
    }

    private static Pair<Integer, Integer> indexOfNextInlineTag(String text, int start) {
        int indexOf;
        int indexOf2 = text.indexOf("{@", start);
        if (indexOf2 == -1 || (indexOf = text.indexOf(VectorFormat.DEFAULT_SUFFIX, indexOf2)) == -1) {
            return null;
        }
        return new Pair<>(Integer.valueOf(indexOf2), Integer.valueOf(indexOf));
    }

    public static void lambda$toText$0(final StringBuilder sb2, JavadocDescriptionElement e10) {
        sb2.append(e10.toText());
    }

    public static JavadocDescription parseText(String text) {
        JavadocDescription javadocDescription = new JavadocDescription();
        int i10 = 0;
        while (true) {
            Pair<Integer, Integer> indexOfNextInlineTag = indexOfNextInlineTag(text, i10);
            if (indexOfNextInlineTag == null) {
                break;
            }
            if (indexOfNextInlineTag.f59826a.intValue() != i10) {
                javadocDescription.addElement(new JavadocSnippet(text.substring(i10, indexOfNextInlineTag.f59826a.intValue())));
            }
            javadocDescription.addElement(JavadocInlineTag.fromText(text.substring(indexOfNextInlineTag.f59826a.intValue(), indexOfNextInlineTag.f59827b.intValue() + 1)));
            i10 = indexOfNextInlineTag.f59827b.intValue() + 1;
        }
        if (i10 < text.length()) {
            javadocDescription.addElement(new JavadocSnippet(text.substring(i10)));
        }
        return javadocDescription;
    }

    public boolean addElement(JavadocDescriptionElement element) {
        return this.elements.add(element);
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        return this.elements.equals(((JavadocDescription) o10).elements);
    }

    public List<JavadocDescriptionElement> getElements() {
        return this.elements;
    }

    public int hashCode() {
        return this.elements.hashCode();
    }

    public boolean isEmpty() {
        return toText().isEmpty();
    }

    public String toString() {
        return "JavadocDescription{elements=" + ((Object) this.elements) + JavaElement.JEM_ANNOTATION;
    }

    public String toText() {
        final StringBuilder sb2 = new StringBuilder();
        this.elements.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                JavadocDescription.lambda$toText$0(StringBuilder.this, (JavadocDescriptionElement) obj);
            }
        });
        return sb2.toString();
    }

    public JavadocDescription(List<JavadocDescriptionElement> elements) {
        this();
        this.elements.addAll(elements);
    }
}
