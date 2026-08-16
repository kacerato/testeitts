package com.github.javaparser.javadoc.description;

import com.github.javaparser.utils.Utils;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavaElement;

public class JavadocInlineTag implements JavadocDescriptionElement {
    private String content;
    private String tagName;
    private Type type;

    public enum Type {
        CODE,
        DOC_ROOT,
        INHERIT_DOC,
        LINK,
        LINKPLAIN,
        LITERAL,
        VALUE,
        SYSTEM_PROPERTY,
        UNKNOWN;

        private String keyword = Utils.screamingToCamelCase(name());

        Type() {
        }

        public static Type fromName(String tagName) {
            for (Type type : values()) {
                if (type.keyword.equals(tagName)) {
                    return type;
                }
            }
            return UNKNOWN;
        }
    }

    public JavadocInlineTag(String tagName, Type type, String content) {
        this.tagName = tagName;
        this.type = type;
        this.content = content;
    }

    public static JavadocDescriptionElement fromText(String text) {
        if (!text.startsWith("{@")) {
            throw new IllegalArgumentException(String.format("Expected to start with '{@'. Text '%s'", text));
        }
        if (!text.endsWith(VectorFormat.DEFAULT_SUFFIX)) {
            throw new IllegalArgumentException(String.format("Expected to end with '}'. Text '%s'", text));
        }
        String substring = text.substring(2, text.length() - 1);
        String nextWord = Utils.nextWord(substring);
        return new JavadocInlineTag(nextWord, Type.fromName(nextWord), substring.substring(nextWord.length()));
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        JavadocInlineTag javadocInlineTag = (JavadocInlineTag) o10;
        String str = this.tagName;
        if (str == null ? javadocInlineTag.tagName != null : !str.equals(javadocInlineTag.tagName)) {
            return false;
        }
        if (this.type != javadocInlineTag.type) {
            return false;
        }
        String str2 = this.content;
        String str3 = javadocInlineTag.content;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    public String getContent() {
        return this.content;
    }

    public String getName() {
        return this.tagName;
    }

    public Type getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.tagName;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Type type = this.type;
        int hashCode2 = (hashCode + (type != null ? type.hashCode() : 0)) * 31;
        String str2 = this.content;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "JavadocInlineTag{tagName='" + this.tagName + JavaElement.JEM_MODULAR_CLASSFILE + ", type=" + ((Object) this.type) + ", content='" + this.content + JavaElement.JEM_MODULAR_CLASSFILE + JavaElement.JEM_ANNOTATION;
    }

    @Override
    public String toText() {
        return "{@" + this.tagName + this.content + VectorFormat.DEFAULT_SUFFIX;
    }
}
