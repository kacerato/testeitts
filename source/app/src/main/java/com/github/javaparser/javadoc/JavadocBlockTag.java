package com.github.javaparser.javadoc;

import com.github.javaparser.javadoc.JavadocBlockTag;
import com.github.javaparser.javadoc.description.JavadocDescription;
import com.github.javaparser.utils.Utils;
import java.util.Optional;
import java.util.function.Consumer;
import org.eclipse.jdt.internal.core.JavaElement;

public class JavadocBlockTag {
    private JavadocDescription content;
    private Optional<String> name;
    private String tagName;
    private Type type;

    public enum Type {
        AUTHOR,
        DEPRECATED,
        EXCEPTION,
        PARAM,
        RETURN,
        SEE,
        SERIAL,
        SERIAL_DATA,
        SERIAL_FIELD,
        SINCE,
        THROWS,
        VERSION,
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

        public boolean hasName() {
            return this == PARAM || this == EXCEPTION || this == THROWS;
        }
    }

    public JavadocBlockTag(Type type, String content) {
        this.name = Optional.empty();
        this.type = type;
        this.tagName = type.keyword;
        if (type.hasName()) {
            Optional<String> of2 = Optional.of(Utils.nextWord(content));
            this.name = of2;
            content = content.substring(of2.get().length()).trim();
        }
        this.content = JavadocDescription.parseText(content);
    }

    public static JavadocBlockTag createParamBlockTag(String paramName, String content) {
        return new JavadocBlockTag(Type.PARAM, paramName + " " + content);
    }

    public static void lambda$toText$0(final StringBuilder sb2, String s10) {
        sb2.append(" ");
        sb2.append(s10);
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        JavadocBlockTag javadocBlockTag = (JavadocBlockTag) o10;
        if (this.type == javadocBlockTag.type && this.content.equals(javadocBlockTag.content)) {
            return this.name.equals(javadocBlockTag.name);
        }
        return false;
    }

    public JavadocDescription getContent() {
        return this.content;
    }

    public Optional<String> getName() {
        return this.name;
    }

    public String getTagName() {
        return this.tagName;
    }

    public Type getType() {
        return this.type;
    }

    public int hashCode() {
        return (((this.type.hashCode() * 31) + this.content.hashCode()) * 31) + this.name.hashCode();
    }

    public String toString() {
        return "JavadocBlockTag{type=" + ((Object) this.type) + ", content='" + ((Object) this.content) + JavaElement.JEM_MODULAR_CLASSFILE + ", name=" + ((Object) this.name) + JavaElement.JEM_ANNOTATION;
    }

    public String toText() {
        final StringBuilder sb2 = new StringBuilder();
        sb2.append("@");
        sb2.append(this.tagName);
        this.name.ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                JavadocBlockTag.lambda$toText$0(StringBuilder.this, (String) obj);
            }
        });
        if (!this.content.isEmpty()) {
            sb2.append(" ");
            sb2.append(this.content.toText());
        }
        return sb2.toString();
    }

    public JavadocBlockTag(String tagName, String content) {
        this(Type.fromName(tagName), content);
        this.tagName = tagName;
    }
}
