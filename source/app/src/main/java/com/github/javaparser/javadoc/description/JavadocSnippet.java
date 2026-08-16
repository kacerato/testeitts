package com.github.javaparser.javadoc.description;

import org.eclipse.jdt.internal.core.JavaElement;

public class JavadocSnippet implements JavadocDescriptionElement {
    private String text;

    public JavadocSnippet(String text) {
        text.getClass();
        this.text = text;
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        return this.text.equals(((JavadocSnippet) o10).text);
    }

    public int hashCode() {
        return this.text.hashCode();
    }

    public String toString() {
        return "JavadocSnippet{text='" + this.text + JavaElement.JEM_MODULAR_CLASSFILE + JavaElement.JEM_ANNOTATION;
    }

    @Override
    public String toText() {
        return this.text;
    }
}
