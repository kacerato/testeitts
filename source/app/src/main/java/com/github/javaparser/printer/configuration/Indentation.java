package com.github.javaparser.printer.configuration;

import w2.C15883c;

public class Indentation {
    private static final int DEFAULT_SIZE = 4;
    private String formattedIndentation;
    private int size;
    private IndentType type;

    public enum IndentType {
        SPACES(Character.valueOf(C15883c.f126249O), 1),
        TABS('\t', 4),
        TABS_WITH_SPACE_ALIGN('\t', 4);

        private Character car;
        private int width;

        IndentType(Character c10, int width) {
            this.car = c10;
            this.width = width;
        }

        public Character getCar() {
            return this.car;
        }

        public int getWidth() {
            return this.width;
        }
    }

    public Indentation(IndentType type, int size) {
        this.formattedIndentation = "";
        this.type = type;
        this.size = size;
        format();
    }

    private void format() {
        StringBuilder sb2 = new StringBuilder();
        char charValue = this.type.car.charValue();
        for (int i10 = 0; i10 < this.size; i10++) {
            sb2.append(charValue);
        }
        this.formattedIndentation = sb2.toString();
    }

    public String getIndent() {
        return this.formattedIndentation;
    }

    public int getSize() {
        return this.size;
    }

    public IndentType getType() {
        return this.type;
    }

    public Indentation setSize(int size) {
        this.size = size;
        format();
        return this;
    }

    public Indentation setType(IndentType type) {
        this.type = type;
        format();
        return this;
    }

    public String toString() {
        return this.type.name() + " size=" + this.size;
    }

    public Indentation(IndentType type) {
        this(type, 4);
    }
}
