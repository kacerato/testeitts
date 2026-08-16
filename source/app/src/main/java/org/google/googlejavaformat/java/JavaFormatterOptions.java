package org.google.googlejavaformat.java;

import I2.j;
import org.google.googlejavaformat.java.javadoc.JavadocOptions;

@j
public class JavaFormatterOptions implements JavadocOptions {
    static final int DEFAULT_MAX_LINE_LENGTH = 10000;
    private final Style style;

    public static class Builder {
        private Style style;

        public JavaFormatterOptions build() {
            return new JavaFormatterOptions(this.style);
        }

        public Builder style(Style style) {
            this.style = style;
            return this;
        }

        private Builder() {
            this.style = Style.GOOGLE;
        }
    }

    public enum Style {
        GOOGLE(1),
        AOSP(2);

        private final int indentationMultiplier;

        Style(int indentationMultiplier) {
            this.indentationMultiplier = indentationMultiplier;
        }

        public int indentationMultiplier() {
            return this.indentationMultiplier;
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    public static JavaFormatterOptions defaultOptions() {
        return builder().build();
    }

    public int indentationMultiplier() {
        return this.style.indentationMultiplier();
    }

    @Override
    public int maxLineLength() {
        return 10000;
    }

    private JavaFormatterOptions(Style style) {
        this.style = style;
    }
}
