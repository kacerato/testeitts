package com.github.javaparser.javadoc;

import com.github.javaparser.ast.comments.JavadocComment;
import com.github.javaparser.javadoc.Javadoc;
import com.github.javaparser.javadoc.JavadocBlockTag;
import com.github.javaparser.javadoc.description.JavadocDescription;
import com.github.javaparser.utils.LineSeparator;
import java.util.LinkedList;
import java.util.List;
import java.util.function.Consumer;
import org.eclipse.jdt.internal.core.JavaElement;

public class Javadoc {
    private List<JavadocBlockTag> blockTags = new LinkedList();
    private JavadocDescription description;

    public Javadoc(JavadocDescription description) {
        this.description = description;
    }

    public static void lambda$toText$0(final StringBuilder sb2, JavadocBlockTag bt) {
        sb2.append(bt.toText());
        sb2.append((Object) LineSeparator.SYSTEM);
    }

    public Javadoc addBlockTag(JavadocBlockTag blockTag) {
        this.blockTags.add(blockTag);
        return this;
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        Javadoc javadoc = (Javadoc) o10;
        return this.description.equals(javadoc.description) && this.blockTags.equals(javadoc.blockTags);
    }

    public List<JavadocBlockTag> getBlockTags() {
        return this.blockTags;
    }

    public JavadocDescription getDescription() {
        return this.description;
    }

    public int hashCode() {
        return (this.description.hashCode() * 31) + this.blockTags.hashCode();
    }

    public JavadocComment toComment() {
        return toComment("");
    }

    public String toString() {
        return "Javadoc{description=" + ((Object) this.description) + ", blockTags=" + ((Object) this.blockTags) + JavaElement.JEM_ANNOTATION;
    }

    public String toText() {
        final StringBuilder sb2 = new StringBuilder();
        if (!this.description.isEmpty()) {
            sb2.append(this.description.toText());
            sb2.append((Object) LineSeparator.SYSTEM);
        }
        if (!this.blockTags.isEmpty()) {
            sb2.append((Object) LineSeparator.SYSTEM);
        }
        this.blockTags.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Javadoc.lambda$toText$0(StringBuilder.this, (JavadocBlockTag) obj);
            }
        });
        return sb2.toString();
    }

    public Javadoc addBlockTag(String tagName, String content) {
        return addBlockTag(new JavadocBlockTag(tagName, content));
    }

    public JavadocComment toComment(String indentation) {
        for (char c10 : indentation.toCharArray()) {
            if (!Character.isWhitespace(c10)) {
                throw new IllegalArgumentException("The indentation string should be composed only by whitespace characters");
            }
        }
        StringBuilder sb2 = new StringBuilder();
        LineSeparator lineSeparator = LineSeparator.SYSTEM;
        sb2.append((Object) lineSeparator);
        String text = toText();
        if (!text.isEmpty()) {
            for (String str : text.split(lineSeparator.asRawString())) {
                sb2.append(indentation);
                sb2.append(" * ");
                sb2.append(str);
                sb2.append((Object) LineSeparator.SYSTEM);
            }
        }
        sb2.append(indentation);
        sb2.append(" ");
        return new JavadocComment(sb2.toString());
    }

    public Javadoc addBlockTag(String tagName, String parameter, String content) {
        return addBlockTag(tagName, parameter + " " + content);
    }

    public Javadoc addBlockTag(String tagName) {
        return addBlockTag(tagName, "");
    }
}
