package com.google.gson.stream;

import b3.s;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import kotlin.time.C14038j;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public class JsonWriter implements Closeable, Flushable {
    private static final String[] REPLACEMENT_CHARS = new String[128];
    private static final String[] HTML_SAFE_REPLACEMENT_CHARS;
    private final Writer out;
    private int[] stack = new int[32];
    private int stackSize = 0;
    private String indent;
    private String separator;
    private boolean lenient;
    private boolean htmlSafe;
    private String deferredName;
    private boolean serializeNulls;

    static {
        for (int i10 = 0; i10 <= 31; i10++) {
            REPLACEMENT_CHARS[i10] = String.format("\\u%04x", Integer.valueOf(i10));
        }
        REPLACEMENT_CHARS[34] = "\\\"";
        REPLACEMENT_CHARS[92] = "\\\\";
        REPLACEMENT_CHARS[9] = "\\t";
        REPLACEMENT_CHARS[8] = "\\b";
        REPLACEMENT_CHARS[10] = "\\n";
        REPLACEMENT_CHARS[13] = "\\r";
        REPLACEMENT_CHARS[12] = "\\f";
        HTML_SAFE_REPLACEMENT_CHARS = (String[]) REPLACEMENT_CHARS.clone();
        HTML_SAFE_REPLACEMENT_CHARS[60] = "\\u003c";
        HTML_SAFE_REPLACEMENT_CHARS[62] = "\\u003e";
        HTML_SAFE_REPLACEMENT_CHARS[38] = "\\u0026";
        HTML_SAFE_REPLACEMENT_CHARS[61] = "\\u003d";
        HTML_SAFE_REPLACEMENT_CHARS[39] = "\\u0027";
    }

    public JsonWriter(Writer out) {
        push(6);
        this.separator = s.f32937c;
        this.serializeNulls = true;
        if (out == null) {
            throw new NullPointerException("out == null");
        }
        this.out = out;
    }

    public final void setIndent(String indent) {
        if (indent.length() == 0) {
            this.indent = null;
            this.separator = s.f32937c;
        } else {
            this.indent = indent;
            this.separator = ": ";
        }
    }

    public final void setLenient(boolean lenient) {
        this.lenient = lenient;
    }

    public boolean isLenient() {
        return this.lenient;
    }

    public final void setHtmlSafe(boolean htmlSafe) {
        this.htmlSafe = htmlSafe;
    }

    public final boolean isHtmlSafe() {
        return this.htmlSafe;
    }

    public final void setSerializeNulls(boolean serializeNulls) {
        this.serializeNulls = serializeNulls;
    }

    public final boolean getSerializeNulls() {
        return this.serializeNulls;
    }

    public JsonWriter beginArray() throws IOException {
        writeDeferredName();
        return open(1, '[');
    }

    public JsonWriter endArray() throws IOException {
        return close(1, 2, JavaElement.JEM_TYPE_PARAMETER);
    }

    public JsonWriter beginObject() throws IOException {
        writeDeferredName();
        return open(3, JavaElement.JEM_COMPILATIONUNIT);
    }

    public JsonWriter endObject() throws IOException {
        return close(3, 5, JavaElement.JEM_ANNOTATION);
    }

    private JsonWriter open(int empty, char openBracket) throws IOException {
        beforeValue();
        push(empty);
        this.out.write(openBracket);
        return this;
    }

    private JsonWriter close(int empty, int nonempty, char closeBracket) throws IOException {
        int context = peek();
        if (context != nonempty && context != empty) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.deferredName != null) {
            throw new IllegalStateException("Dangling name: " + this.deferredName);
        }
        this.stackSize--;
        if (context == nonempty) {
            newline();
        }
        this.out.write(closeBracket);
        return this;
    }

    private void push(int newTop) {
        if (this.stackSize == this.stack.length) {
            this.stack = Arrays.copyOf(this.stack, this.stackSize * 2);
        }
        int[] iArr = this.stack;
        int i10 = this.stackSize;
        this.stackSize = i10 + 1;
        iArr[i10] = newTop;
    }

    private int peek() {
        if (this.stackSize == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        return this.stack[this.stackSize - 1];
    }

    private void replaceTop(int topOfStack) {
        this.stack[this.stackSize - 1] = topOfStack;
    }

    public JsonWriter name(String name) throws IOException {
        if (name == null) {
            throw new NullPointerException("name == null");
        }
        if (this.deferredName != null) {
            throw new IllegalStateException();
        }
        if (this.stackSize == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.deferredName = name;
        return this;
    }

    private void writeDeferredName() throws IOException {
        if (this.deferredName != null) {
            beforeName();
            string(this.deferredName);
            this.deferredName = null;
        }
    }

    public JsonWriter value(String value) throws IOException {
        if (value == null) {
            return nullValue();
        }
        writeDeferredName();
        beforeValue();
        string(value);
        return this;
    }

    public JsonWriter jsonValue(String value) throws IOException {
        if (value == null) {
            return nullValue();
        }
        writeDeferredName();
        beforeValue();
        this.out.append((CharSequence) value);
        return this;
    }

    public JsonWriter nullValue() throws IOException {
        if (this.deferredName != null) {
            if (this.serializeNulls) {
                writeDeferredName();
            } else {
                this.deferredName = null;
                return this;
            }
        }
        beforeValue();
        this.out.write("null");
        return this;
    }

    public JsonWriter value(boolean value) throws IOException {
        writeDeferredName();
        beforeValue();
        this.out.write(value ? "true" : "false");
        return this;
    }

    public JsonWriter value(Boolean value) throws IOException {
        if (value == null) {
            return nullValue();
        }
        writeDeferredName();
        beforeValue();
        this.out.write(value.booleanValue() ? "true" : "false");
        return this;
    }

    public JsonWriter value(double value) throws IOException {
        writeDeferredName();
        if (!this.lenient && (Double.isNaN(value) || Double.isInfinite(value))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + value);
        }
        beforeValue();
        this.out.append((CharSequence) Double.toString(value));
        return this;
    }

    public JsonWriter value(long value) throws IOException {
        writeDeferredName();
        beforeValue();
        this.out.write(Long.toString(value));
        return this;
    }

    public JsonWriter value(Number value) throws IOException {
        if (value == null) {
            return nullValue();
        }
        writeDeferredName();
        String string = value.toString();
        if (!this.lenient && (string.equals("-Infinity") || string.equals(C14038j.f95883k) || string.equals("NaN"))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + ((Object) value));
        }
        beforeValue();
        this.out.append((CharSequence) string);
        return this;
    }

    public void flush() throws IOException {
        if (this.stackSize == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.out.flush();
    }

    @Override
    public void close() throws IOException {
        this.out.close();
        int size = this.stackSize;
        if (size > 1 || (size == 1 && this.stack[size - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.stackSize = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void string(String value) throws IOException {
        int i10;
        String replacement;
        String[] replacements = this.htmlSafe ? HTML_SAFE_REPLACEMENT_CHARS : REPLACEMENT_CHARS;
        this.out.write(34);
        int last = 0;
        int length = value.length();
        for (0; i10 < length; i10 + 1) {
            char c10 = value.charAt(i10);
            if (c10 < '\u0080') {
                replacement = replacements[c10];
                i10 = replacement == null ? i10 + 1 : 0;
                if (last < i10) {
                    this.out.write(value, last, i10 - last);
                }
                this.out.write(replacement);
                last = i10 + 1;
            } else {
                if (c10 == '\u2028') {
                    replacement = "\\u2028";
                } else if (c10 == '\u2029') {
                    replacement = "\\u2029";
                }
                if (last < i10) {
                }
                this.out.write(replacement);
                last = i10 + 1;
            }
        }
        if (last < length) {
            this.out.write(value, last, length - last);
        }
        this.out.write(34);
    }

    private void newline() throws IOException {
        if (this.indent == null) {
            return;
        }
        this.out.write(10);
        int size = this.stackSize;
        for (int i10 = 1; i10 < size; i10++) {
            this.out.write(this.indent);
        }
    }

    private void beforeName() throws IOException {
        int context = peek();
        if (context == 5) {
            this.out.write(44);
        } else if (context != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        newline();
        replaceTop(4);
    }

    private void beforeValue() throws IOException {
        switch (peek()) {
            case 1:
                replaceTop(2);
                newline();
                return;
            case 2:
                this.out.append(IIndexConstants.PARAMETER_SEPARATOR);
                newline();
                return;
            case 3:
            case 5:
            default:
                throw new IllegalStateException("Nesting problem.");
            case 4:
                this.out.append((CharSequence) this.separator);
                replaceTop(5);
                return;
            case 6:
                break;
            case 7:
                if (!this.lenient) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
                break;
        }
        replaceTop(7);
    }
}
