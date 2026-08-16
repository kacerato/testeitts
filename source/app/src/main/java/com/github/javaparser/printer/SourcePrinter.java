package com.github.javaparser.printer;

import com.github.javaparser.Position;
import com.github.javaparser.printer.configuration.DefaultConfigurationOption;
import com.github.javaparser.printer.configuration.DefaultPrinterConfiguration;
import com.github.javaparser.printer.configuration.Indentation;
import com.github.javaparser.printer.configuration.PrettyPrinterConfiguration;
import com.github.javaparser.printer.configuration.PrinterConfiguration;
import com.github.javaparser.utils.Utils;
import java.util.Deque;
import java.util.LinkedList;

public class SourcePrinter {
    private final StringBuilder buf;
    private Position cursor;
    private String endOfLineCharacter;
    private Indentation indentation;
    private boolean indented;
    private final Deque<String> indents;
    private String lastPrintedIndent;
    private final Deque<String> reindentedIndents;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$github$javaparser$printer$configuration$Indentation$IndentType;

        static {
            int[] iArr = new int[Indentation.IndentType.values().length];
            $SwitchMap$com$github$javaparser$printer$configuration$Indentation$IndentType = iArr;
            try {
                iArr[Indentation.IndentType.SPACES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$github$javaparser$printer$configuration$Indentation$IndentType[Indentation.IndentType.TABS_WITH_SPACE_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$github$javaparser$printer$configuration$Indentation$IndentType[Indentation.IndentType.TABS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public SourcePrinter() {
        this(new DefaultPrinterConfiguration());
    }

    private void append(String arg) {
        this.buf.append(arg);
        Position position = this.cursor;
        this.cursor = position.withColumn(position.column + arg.length());
    }

    private String calculateIndentWithAlignTo(int column) {
        int i10;
        if (column < this.lastPrintedIndent.length()) {
            throw new IllegalStateException("Attempt to indent less than the previous indent.");
        }
        StringBuilder sb2 = new StringBuilder(this.lastPrintedIndent);
        int i11 = AnonymousClass1.$SwitchMap$com$github$javaparser$printer$configuration$Indentation$IndentType[this.indentation.getType().ordinal()];
        if (i11 == 1 || i11 == 2) {
            while (sb2.length() < column) {
                sb2.append((Object) Indentation.IndentType.SPACES.getCar());
            }
        } else {
            if (i11 != 3) {
                throw new AssertionError((Object) "Unhandled indent type");
            }
            Indentation.IndentType type = this.indentation.getType();
            int length = sb2.length();
            while (true) {
                if (type.getWidth() + length > column) {
                    break;
                }
                sb2.insert(0, (Object) type.getCar());
                length += type.getWidth();
            }
            while (length < column) {
                sb2.append((Object) Indentation.IndentType.SPACES.getCar());
                length++;
            }
            StringBuilder sb3 = new StringBuilder();
            for (i10 = 0; i10 < type.getWidth(); i10++) {
                sb3.append((Object) Indentation.IndentType.SPACES.getCar());
            }
            String sb4 = sb3.toString();
            if (sb2.length() >= type.getWidth() && sb2.substring(sb2.length() - type.getWidth()).equals(sb4)) {
                int indexOf = sb2.indexOf(sb4);
                sb2.replace(indexOf, type.getWidth() + indexOf, type.getCar().toString());
            }
        }
        return sb2.toString();
    }

    public void duplicateIndent() {
        Deque<String> deque = this.indents;
        deque.push(deque.peek());
    }

    public Position getCursor() {
        return this.cursor;
    }

    @Deprecated
    public String getSource() {
        return toString();
    }

    public SourcePrinter indent() {
        String peek = this.indents.peek();
        int i10 = AnonymousClass1.$SwitchMap$com$github$javaparser$printer$configuration$Indentation$IndentType[this.indentation.getType().ordinal()];
        if (i10 == 1 || i10 == 2) {
            this.indents.push(peek + this.indentation.getIndent());
        } else {
            if (i10 != 3) {
                throw new AssertionError((Object) "Unhandled indent type");
            }
            this.indents.push(this.indentation.getIndent() + peek);
        }
        return this;
    }

    public SourcePrinter indentWithAlignTo(int column) {
        this.indents.push(calculateIndentWithAlignTo(column));
        return this;
    }

    public String normalizeEolInTextBlock(String content) {
        return Utils.normalizeEolInTextBlock(content, this.endOfLineCharacter);
    }

    public SourcePrinter print(final String arg) {
        if (!this.indented) {
            String peek = this.indents.peek();
            this.lastPrintedIndent = peek;
            append(peek);
            this.indented = true;
        }
        append(arg);
        return this;
    }

    public SourcePrinter println(final String arg) {
        print(arg);
        println();
        return this;
    }

    public void reindentToPreviousLevel() {
        if (this.reindentedIndents.isEmpty()) {
            throw new IllegalStateException("Reindent calls are not well-balanced.");
        }
        this.indents.pop();
        this.indents.push(this.reindentedIndents.pop());
    }

    public void reindentWithAlignToCursor() {
        String calculateIndentWithAlignTo = calculateIndentWithAlignTo(this.cursor.column);
        this.reindentedIndents.push(this.indents.pop());
        this.indents.push(calculateIndentWithAlignTo);
    }

    public String toString() {
        return this.buf.toString();
    }

    public SourcePrinter unindent() {
        if (this.indents.isEmpty()) {
            throw new IllegalStateException("Indent/unindent calls are not well-balanced.");
        }
        this.indents.pop();
        return this;
    }

    public SourcePrinter(final PrettyPrinterConfiguration configuration) {
        this(configuration.getIndentation(), configuration.getEndOfLineCharacter());
    }

    public SourcePrinter(final PrinterConfiguration configuration) {
        this((Indentation) configuration.get(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.INDENTATION)).get().asValue(), configuration.get(new DefaultConfigurationOption(DefaultPrinterConfiguration.ConfigOption.END_OF_LINE_CHARACTER)).get().asString());
    }

    public SourcePrinter println() {
        this.buf.append(this.endOfLineCharacter);
        this.cursor = new Position(this.cursor.line + 1, 0);
        this.indented = false;
        return this;
    }

    public SourcePrinter(Indentation indentation, String eol) {
        LinkedList linkedList = new LinkedList();
        this.indents = linkedList;
        this.reindentedIndents = new LinkedList();
        this.lastPrintedIndent = "";
        this.buf = new StringBuilder();
        this.cursor = new Position(1, 0);
        this.indented = false;
        this.indentation = indentation;
        this.endOfLineCharacter = eol;
        linkedList.push("");
    }
}
