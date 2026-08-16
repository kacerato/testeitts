package com.google.gson.stream;

import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.bind.JsonTreeReader;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public class JsonReader implements Closeable {
    private static final char[] NON_EXECUTE_PREFIX = ")]}'\n".toCharArray();
    private static final long MIN_INCOMPLETE_INTEGER = -922337203685477580L;
    private static final int PEEKED_NONE = 0;
    private static final int PEEKED_BEGIN_OBJECT = 1;
    private static final int PEEKED_END_OBJECT = 2;
    private static final int PEEKED_BEGIN_ARRAY = 3;
    private static final int PEEKED_END_ARRAY = 4;
    private static final int PEEKED_TRUE = 5;
    private static final int PEEKED_FALSE = 6;
    private static final int PEEKED_NULL = 7;
    private static final int PEEKED_SINGLE_QUOTED = 8;
    private static final int PEEKED_DOUBLE_QUOTED = 9;
    private static final int PEEKED_UNQUOTED = 10;
    private static final int PEEKED_BUFFERED = 11;
    private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
    private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
    private static final int PEEKED_UNQUOTED_NAME = 14;
    private static final int PEEKED_LONG = 15;
    private static final int PEEKED_NUMBER = 16;
    private static final int PEEKED_EOF = 17;
    private static final int NUMBER_CHAR_NONE = 0;
    private static final int NUMBER_CHAR_SIGN = 1;
    private static final int NUMBER_CHAR_DIGIT = 2;
    private static final int NUMBER_CHAR_DECIMAL = 3;
    private static final int NUMBER_CHAR_FRACTION_DIGIT = 4;
    private static final int NUMBER_CHAR_EXP_E = 5;
    private static final int NUMBER_CHAR_EXP_SIGN = 6;
    private static final int NUMBER_CHAR_EXP_DIGIT = 7;

    private final Reader f67776in;
    private long peekedLong;
    private int peekedNumberLength;
    private String peekedString;
    private int stackSize;
    private String[] pathNames;
    private int[] pathIndices;
    private boolean lenient = false;
    private final char[] buffer = new char[1024];
    private int pos = 0;
    private int limit = 0;
    private int lineNumber = 0;
    private int lineStart = 0;
    int peeked = 0;
    private int[] stack = new int[32];

    static {
        JsonReaderInternalAccess.INSTANCE = new JsonReaderInternalAccess() {
            @Override
            public void promoteNameToValue(JsonReader reader) throws IOException {
                if (reader instanceof JsonTreeReader) {
                    ((JsonTreeReader) reader).promoteNameToValue();
                    return;
                }
                int p10 = reader.peeked;
                if (p10 == 0) {
                    p10 = reader.doPeek();
                }
                if (p10 == 13) {
                    reader.peeked = 9;
                } else if (p10 == 12) {
                    reader.peeked = 8;
                } else {
                    if (p10 == 14) {
                        reader.peeked = 10;
                        return;
                    }
                    throw new IllegalStateException("Expected a name but was " + ((Object) reader.peek()) + reader.locationString());
                }
            }
        };
    }

    public JsonReader(Reader in2) {
        this.stackSize = 0;
        int[] iArr = this.stack;
        int i10 = this.stackSize;
        this.stackSize = i10 + 1;
        iArr[i10] = 6;
        this.pathNames = new String[32];
        this.pathIndices = new int[32];
        if (in2 == null) {
            throw new NullPointerException("in == null");
        }
        this.f67776in = in2;
    }

    public final void setLenient(boolean lenient) {
        this.lenient = lenient;
    }

    public final boolean isLenient() {
        return this.lenient;
    }

    public void beginArray() throws IOException {
        int p10 = this.peeked;
        if (p10 == 0) {
            p10 = doPeek();
        }
        if (p10 == 3) {
            push(1);
            this.pathIndices[this.stackSize - 1] = 0;
            this.peeked = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + ((Object) peek()) + locationString());
    }

    public void endArray() throws IOException {
        int p10 = this.peeked;
        if (p10 == 0) {
            p10 = doPeek();
        }
        if (p10 == 4) {
            this.stackSize--;
            int[] iArr = this.pathIndices;
            int i10 = this.stackSize - 1;
            iArr[i10] = iArr[i10] + 1;
            this.peeked = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + ((Object) peek()) + locationString());
    }

    public void beginObject() throws IOException {
        int p10 = this.peeked;
        if (p10 == 0) {
            p10 = doPeek();
        }
        if (p10 == 1) {
            push(3);
            this.peeked = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + ((Object) peek()) + locationString());
    }

    public void endObject() throws IOException {
        int p10 = this.peeked;
        if (p10 == 0) {
            p10 = doPeek();
        }
        if (p10 == 2) {
            this.stackSize--;
            this.pathNames[this.stackSize] = null;
            int[] iArr = this.pathIndices;
            int i10 = this.stackSize - 1;
            iArr[i10] = iArr[i10] + 1;
            this.peeked = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + ((Object) peek()) + locationString());
    }

    public boolean hasNext() throws IOException {
        int p10 = this.peeked;
        if (p10 == 0) {
            p10 = doPeek();
        }
        return (p10 == 2 || p10 == 4) ? false : true;
    }

    public JsonToken peek() throws IOException {
        int p10 = this.peeked;
        if (p10 == 0) {
            p10 = doPeek();
        }
        switch (p10) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    int doPeek() throws IOException {
        int peekStack = this.stack[this.stackSize - 1];
        if (peekStack == 1) {
            this.stack[this.stackSize - 1] = 2;
        } else if (peekStack == 2) {
            switch (nextNonWhitespace(true)) {
                case 44:
                    break;
                case 59:
                    checkLenient();
                    break;
                case 93:
                    this.peeked = 4;
                    return 4;
                default:
                    throw syntaxError("Unterminated array");
            }
        } else {
            if (peekStack == 3 || peekStack == 5) {
                this.stack[this.stackSize - 1] = 4;
                if (peekStack == 5) {
                    switch (nextNonWhitespace(true)) {
                        case 44:
                            break;
                        case 59:
                            checkLenient();
                            break;
                        case 125:
                            this.peeked = 2;
                            return 2;
                        default:
                            throw syntaxError("Unterminated object");
                    }
                }
                int c10 = nextNonWhitespace(true);
                switch (c10) {
                    case 34:
                        this.peeked = 13;
                        return 13;
                    case 39:
                        checkLenient();
                        this.peeked = 12;
                        return 12;
                    case 125:
                        if (peekStack != 5) {
                            this.peeked = 2;
                            return 2;
                        }
                        throw syntaxError("Expected name");
                    default:
                        checkLenient();
                        this.pos--;
                        if (isLiteral((char) c10)) {
                            this.peeked = 14;
                            return 14;
                        }
                        throw syntaxError("Expected name");
                }
            }
            if (peekStack == 4) {
                this.stack[this.stackSize - 1] = 5;
                switch (nextNonWhitespace(true)) {
                    case 58:
                        break;
                    case 61:
                        checkLenient();
                        if ((this.pos < this.limit || fillBuffer(1)) && this.buffer[this.pos] == '>') {
                            this.pos++;
                            break;
                        }
                        break;
                    default:
                        throw syntaxError("Expected ':'");
                }
            } else if (peekStack == 6) {
                if (this.lenient) {
                    consumeNonExecutePrefix();
                }
                this.stack[this.stackSize - 1] = 7;
            } else if (peekStack == 7) {
                if (nextNonWhitespace(false) == -1) {
                    this.peeked = 17;
                    return 17;
                }
                checkLenient();
                this.pos--;
            } else if (peekStack == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        switch (nextNonWhitespace(true)) {
            case 34:
                this.peeked = 9;
                return 9;
            case 39:
                checkLenient();
                this.peeked = 8;
                return 8;
            case 44:
            case 59:
                break;
            case 91:
                this.peeked = 3;
                return 3;
            case 93:
                if (peekStack == 1) {
                    this.peeked = 4;
                    return 4;
                }
                break;
            case 123:
                this.peeked = 1;
                return 1;
            default:
                this.pos--;
                int result = peekKeyword();
                if (result != 0) {
                    return result;
                }
                int result2 = peekNumber();
                if (result2 != 0) {
                    return result2;
                }
                if (!isLiteral(this.buffer[this.pos])) {
                    throw syntaxError("Expected value");
                }
                checkLenient();
                this.peeked = 10;
                return 10;
        }
        if (peekStack == 1 || peekStack == 2) {
            checkLenient();
            this.pos--;
            this.peeked = 7;
            return 7;
        }
        throw syntaxError("Unexpected value");
    }

    private int peekKeyword() throws IOException {
        String keyword;
        String keywordUpper;
        int peeking;
        char c10 = this.buffer[this.pos];
        if (c10 == 't' || c10 == 'T') {
            keyword = "true";
            keywordUpper = "TRUE";
            peeking = 5;
        } else if (c10 == 'f' || c10 == 'F') {
            keyword = "false";
            keywordUpper = "FALSE";
            peeking = 6;
        } else if (c10 == 'n' || c10 == 'N') {
            keyword = "null";
            keywordUpper = "NULL";
            peeking = 7;
        } else {
            return 0;
        }
        int length = keyword.length();
        for (int i10 = 1; i10 < length; i10++) {
            if (this.pos + i10 >= this.limit && !fillBuffer(i10 + 1)) {
                return 0;
            }
            char c11 = this.buffer[this.pos + i10];
            if (c11 != keyword.charAt(i10) && c11 != keywordUpper.charAt(i10)) {
                return 0;
            }
        }
        if ((this.pos + length < this.limit || fillBuffer(length + 1)) && isLiteral(this.buffer[this.pos + length])) {
            return 0;
        }
        this.pos += length;
        int i11 = peeking;
        this.peeked = i11;
        return i11;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:41:0x0051. Please report as an issue. */
    private int peekNumber() throws IOException {
        char c10;
        char[] buffer = this.buffer;
        int p10 = this.pos;
        int l10 = this.limit;
        long value = 0;
        boolean negative = false;
        boolean fitsInLong = true;
        int last = 0;
        int i10 = 0;
        while (true) {
            if (p10 + i10 == l10) {
                if (i10 == buffer.length) {
                    return 0;
                }
                if (fillBuffer(i10 + 1)) {
                    p10 = this.pos;
                    l10 = this.limit;
                }
            }
            c10 = buffer[p10 + i10];
            switch (c10) {
                case '+':
                    if (last == 5) {
                        last = 6;
                        i10++;
                    } else {
                        return 0;
                    }
                case '-':
                    if (last == 0) {
                        negative = true;
                        last = 1;
                    } else if (last == 5) {
                        last = 6;
                    } else {
                        return 0;
                    }
                    i10++;
                case '.':
                    if (last == 2) {
                        last = 3;
                        i10++;
                    } else {
                        return 0;
                    }
                case 'E':
                case 'e':
                    if (last == 2 || last == 4) {
                        last = 5;
                        i10++;
                    } else {
                        return 0;
                    }
                    break;
                default:
                    if (c10 >= '0' && c10 <= '9') {
                        if (last == 1 || last == 0) {
                            value = -(c10 - '0');
                            last = 2;
                        } else if (last == 2) {
                            if (value == 0) {
                                return 0;
                            }
                            long newValue = (value * 10) - (c10 - '0');
                            fitsInLong &= value > MIN_INCOMPLETE_INTEGER || (value == MIN_INCOMPLETE_INTEGER && newValue < value);
                            value = newValue;
                        } else if (last == 3) {
                            last = 4;
                        } else if (last == 5 || last == 6) {
                            last = 7;
                        }
                        i10++;
                    }
                    break;
            }
        }
        if (isLiteral(c10)) {
            return 0;
        }
        if (last == 2 && fitsInLong && ((value != Long.MIN_VALUE || negative) && (value != 0 || false == negative))) {
            this.peekedLong = negative ? value : -value;
            this.pos += i10;
            this.peeked = 15;
            return 15;
        }
        if (last == 2 || last == 4 || last == 7) {
            this.peekedNumberLength = i10;
            this.peeked = 16;
            return 16;
        }
        return 0;
    }

    private boolean isLiteral(char c10) throws IOException {
        switch (c10) {
            case '\t':
            case '\n':
            case '\f':
            case '\r':
            case ' ':
            case ',':
            case ':':
            case '[':
            case ']':
            case '{':
            case '}':
                return false;
            case '#':
            case '/':
            case ';':
            case '=':
            case '\\':
                checkLenient();
                return false;
            default:
                return true;
        }
    }

    public String nextName() throws IOException {
        String result;
        int p10 = this.peeked;
        if (p10 == 0) {
            p10 = doPeek();
        }
        if (p10 == 14) {
            result = nextUnquotedValue();
        } else if (p10 == 12) {
            result = nextQuotedValue(JavaElement.JEM_MODULAR_CLASSFILE);
        } else if (p10 == 13) {
            result = nextQuotedValue('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + ((Object) peek()) + locationString());
        }
        this.peeked = 0;
        this.pathNames[this.stackSize - 1] = result;
        return result;
    }

    public String nextString() throws IOException {
        String result;
        int p10 = this.peeked;
        if (p10 == 0) {
            p10 = doPeek();
        }
        if (p10 == 10) {
            result = nextUnquotedValue();
        } else if (p10 == 8) {
            result = nextQuotedValue(JavaElement.JEM_MODULAR_CLASSFILE);
        } else if (p10 == 9) {
            result = nextQuotedValue('\"');
        } else if (p10 == 11) {
            result = this.peekedString;
            this.peekedString = null;
        } else if (p10 == 15) {
            result = Long.toString(this.peekedLong);
        } else if (p10 == 16) {
            result = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            throw new IllegalStateException("Expected a string but was " + ((Object) peek()) + locationString());
        }
        this.peeked = 0;
        int[] iArr = this.pathIndices;
        int i10 = this.stackSize - 1;
        iArr[i10] = iArr[i10] + 1;
        return result;
    }

    public boolean nextBoolean() throws IOException {
        int p10 = this.peeked;
        if (p10 == 0) {
            p10 = doPeek();
        }
        if (p10 == 5) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i10 = this.stackSize - 1;
            iArr[i10] = iArr[i10] + 1;
            return true;
        }
        if (p10 == 6) {
            this.peeked = 0;
            int[] iArr2 = this.pathIndices;
            int i11 = this.stackSize - 1;
            iArr2[i11] = iArr2[i11] + 1;
            return false;
        }
        throw new IllegalStateException("Expected a boolean but was " + ((Object) peek()) + locationString());
    }

    public void nextNull() throws IOException {
        int p10 = this.peeked;
        if (p10 == 0) {
            p10 = doPeek();
        }
        if (p10 == 7) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i10 = this.stackSize - 1;
            iArr[i10] = iArr[i10] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + ((Object) peek()) + locationString());
    }

    public double nextDouble() throws IOException {
        int p10 = this.peeked;
        if (p10 == 0) {
            p10 = doPeek();
        }
        if (p10 == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i10 = this.stackSize - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.peekedLong;
        }
        if (p10 == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (p10 == 8 || p10 == 9) {
            this.peekedString = nextQuotedValue(p10 == 8 ? JavaElement.JEM_MODULAR_CLASSFILE : '\"');
        } else if (p10 == 10) {
            this.peekedString = nextUnquotedValue();
        } else if (p10 != 11) {
            throw new IllegalStateException("Expected a double but was " + ((Object) peek()) + locationString());
        }
        this.peeked = 11;
        double result = Double.parseDouble(this.peekedString);
        if (!this.lenient && (Double.isNaN(result) || Double.isInfinite(result))) {
            throw new MalformedJsonException("JSON forbids NaN and infinities: " + result + locationString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr2 = this.pathIndices;
        int i11 = this.stackSize - 1;
        iArr2[i11] = iArr2[i11] + 1;
        return result;
    }

    public long nextLong() throws IOException {
        int p10 = this.peeked;
        if (p10 == 0) {
            p10 = doPeek();
        }
        if (p10 == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i10 = this.stackSize - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.peekedLong;
        }
        if (p10 == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (p10 == 8 || p10 == 9 || p10 == 10) {
            if (p10 == 10) {
                this.peekedString = nextUnquotedValue();
            } else {
                this.peekedString = nextQuotedValue(p10 == 8 ? JavaElement.JEM_MODULAR_CLASSFILE : '\"');
            }
            try {
                long result = Long.parseLong(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i11 = this.stackSize - 1;
                iArr2[i11] = iArr2[i11] + 1;
                return result;
            } catch (NumberFormatException e10) {
            }
        } else {
            throw new IllegalStateException("Expected a long but was " + ((Object) peek()) + locationString());
        }
        this.peeked = 11;
        double asDouble = Double.parseDouble(this.peekedString);
        long result2 = (long) asDouble;
        if (result2 != asDouble) {
            throw new NumberFormatException("Expected a long but was " + this.peekedString + locationString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr3 = this.pathIndices;
        int i12 = this.stackSize - 1;
        iArr3[i12] = iArr3[i12] + 1;
        return result2;
    }

    private String nextQuotedValue(char quote) throws IOException {
        char[] buffer = this.buffer;
        StringBuilder builder = null;
        do {
            int p10 = this.pos;
            int l10 = this.limit;
            int start = p10;
            while (p10 < l10) {
                int i10 = p10;
                p10++;
                char c10 = buffer[i10];
                if (c10 == quote) {
                    this.pos = p10;
                    int len = (p10 - start) - 1;
                    if (builder == null) {
                        return new String(buffer, start, len);
                    }
                    builder.append(buffer, start, len);
                    return builder.toString();
                }
                if (c10 == '\\') {
                    this.pos = p10;
                    int len2 = (p10 - start) - 1;
                    if (builder == null) {
                        int estimatedLength = (len2 + 1) * 2;
                        builder = new StringBuilder(Math.max(estimatedLength, 16));
                    }
                    builder.append(buffer, start, len2);
                    builder.append(readEscapeCharacter());
                    p10 = this.pos;
                    l10 = this.limit;
                    start = p10;
                } else if (c10 == '\n') {
                    this.lineNumber++;
                    this.lineStart = p10;
                }
            }
            if (builder == null) {
                int estimatedLength2 = (p10 - start) * 2;
                builder = new StringBuilder(Math.max(estimatedLength2, 16));
            }
            builder.append(buffer, start, p10 - start);
            this.pos = p10;
        } while (fillBuffer(1));
        throw syntaxError("Unterminated string");
    }

    private String nextUnquotedValue() throws IOException {
        StringBuilder builder = null;
        int i10 = 0;
        while (true) {
            if (this.pos + i10 < this.limit) {
                switch (this.buffer[this.pos + i10]) {
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                    case ',':
                    case ':':
                    case '[':
                    case ']':
                    case '{':
                    case '}':
                        break;
                    case '#':
                    case '/':
                    case ';':
                    case '=':
                    case '\\':
                        checkLenient();
                        break;
                    default:
                        i10++;
                        break;
                }
            } else if (i10 < this.buffer.length) {
                if (fillBuffer(i10 + 1)) {
                }
            } else {
                if (builder == null) {
                    builder = new StringBuilder(Math.max(i10, 16));
                }
                builder.append(this.buffer, this.pos, i10);
                this.pos += i10;
                i10 = 0;
                if (!fillBuffer(1)) {
                }
            }
        }
        String result = null == builder ? new String(this.buffer, this.pos, i10) : builder.append(this.buffer, this.pos, i10).toString();
        this.pos += i10;
        return result;
    }

    private void skipQuotedValue(char quote) throws IOException {
        char[] buffer = this.buffer;
        do {
            int p10 = this.pos;
            int l10 = this.limit;
            while (p10 < l10) {
                int i10 = p10;
                p10++;
                char c10 = buffer[i10];
                if (c10 == quote) {
                    this.pos = p10;
                    return;
                }
                if (c10 == '\\') {
                    this.pos = p10;
                    readEscapeCharacter();
                    p10 = this.pos;
                    l10 = this.limit;
                } else if (c10 == '\n') {
                    this.lineNumber++;
                    this.lineStart = p10;
                }
            }
            this.pos = p10;
        } while (fillBuffer(1));
        throw syntaxError("Unterminated string");
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x000f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void skipUnquotedValue() throws IOException {
        do {
            int i10 = 0;
            while (this.pos + i10 < this.limit) {
                switch (this.buffer[this.pos + i10]) {
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                    case ',':
                    case ':':
                    case '[':
                    case ']':
                    case '{':
                    case '}':
                        this.pos += i10;
                        return;
                    case '#':
                    case '/':
                    case ';':
                    case '=':
                    case '\\':
                        checkLenient();
                        this.pos += i10;
                        return;
                    default:
                        i10++;
                }
                while (this.pos + i10 < this.limit) {
                }
            }
            this.pos += i10;
        } while (fillBuffer(1));
    }

    public int nextInt() throws IOException {
        int p10 = this.peeked;
        if (p10 == 0) {
            p10 = doPeek();
        }
        if (p10 == 15) {
            int result = (int) this.peekedLong;
            if (this.peekedLong != result) {
                throw new NumberFormatException("Expected an int but was " + this.peekedLong + locationString());
            }
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i10 = this.stackSize - 1;
            iArr[i10] = iArr[i10] + 1;
            return result;
        }
        if (p10 == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (p10 == 8 || p10 == 9 || p10 == 10) {
            if (p10 == 10) {
                this.peekedString = nextUnquotedValue();
            } else {
                this.peekedString = nextQuotedValue(p10 == 8 ? JavaElement.JEM_MODULAR_CLASSFILE : '\"');
            }
            try {
                int result2 = Integer.parseInt(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i11 = this.stackSize - 1;
                iArr2[i11] = iArr2[i11] + 1;
                return result2;
            } catch (NumberFormatException e10) {
            }
        } else {
            throw new IllegalStateException("Expected an int but was " + ((Object) peek()) + locationString());
        }
        this.peeked = 11;
        double asDouble = Double.parseDouble(this.peekedString);
        int result3 = (int) asDouble;
        if (result3 != asDouble) {
            throw new NumberFormatException("Expected an int but was " + this.peekedString + locationString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr3 = this.pathIndices;
        int i12 = this.stackSize - 1;
        iArr3[i12] = iArr3[i12] + 1;
        return result3;
    }

    @Override
    public void close() throws IOException {
        this.peeked = 0;
        this.stack[0] = 8;
        this.stackSize = 1;
        this.f67776in.close();
    }

    public void skipValue() throws IOException {
        int count = 0;
        do {
            int p10 = this.peeked;
            if (p10 == 0) {
                p10 = doPeek();
            }
            if (p10 == 3) {
                push(1);
                count++;
            } else if (p10 == 1) {
                push(3);
                count++;
            } else if (p10 == 4) {
                this.stackSize--;
                count--;
            } else if (p10 == 2) {
                this.stackSize--;
                count--;
            } else if (p10 == 14 || p10 == 10) {
                skipUnquotedValue();
            } else if (p10 == 8 || p10 == 12) {
                skipQuotedValue(JavaElement.JEM_MODULAR_CLASSFILE);
            } else if (p10 == 9 || p10 == 13) {
                skipQuotedValue('\"');
            } else if (p10 == 16) {
                this.pos += this.peekedNumberLength;
            }
            this.peeked = 0;
        } while (count != 0);
        int[] iArr = this.pathIndices;
        int i10 = this.stackSize - 1;
        iArr[i10] = iArr[i10] + 1;
        this.pathNames[this.stackSize - 1] = "null";
    }

    private void push(int newTop) {
        if (this.stackSize == this.stack.length) {
            int newLength = this.stackSize * 2;
            this.stack = Arrays.copyOf(this.stack, newLength);
            this.pathIndices = Arrays.copyOf(this.pathIndices, newLength);
            this.pathNames = (String[]) Arrays.copyOf(this.pathNames, newLength);
        }
        int[] iArr = this.stack;
        int i10 = this.stackSize;
        this.stackSize = i10 + 1;
        iArr[i10] = newTop;
    }

    private boolean fillBuffer(int minimum) throws IOException {
        char[] buffer = this.buffer;
        this.lineStart -= this.pos;
        if (this.limit != this.pos) {
            this.limit -= this.pos;
            System.arraycopy(buffer, this.pos, buffer, 0, this.limit);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            int total = this.f67776in.read(buffer, this.limit, buffer.length - this.limit);
            if (total != -1) {
                this.limit += total;
                if (this.lineNumber == 0 && this.lineStart == 0 && this.limit > 0 && buffer[0] == '\ufeff') {
                    this.pos++;
                    this.lineStart++;
                    minimum++;
                }
            } else {
                return false;
            }
        } while (this.limit < minimum);
        return true;
    }

    private int nextNonWhitespace(boolean throwOnEof) throws IOException {
        char[] buffer = this.buffer;
        int p10 = this.pos;
        int l10 = this.limit;
        while (true) {
            if (p10 == l10) {
                this.pos = p10;
                if (fillBuffer(1)) {
                    p10 = this.pos;
                    l10 = this.limit;
                } else {
                    if (throwOnEof) {
                        throw new EOFException("End of input" + locationString());
                    }
                    return -1;
                }
            }
            int i10 = p10;
            p10++;
            char c10 = buffer[i10];
            if (c10 == '\n') {
                this.lineNumber++;
                this.lineStart = p10;
            } else if (c10 != ' ' && c10 != '\r' && c10 != '\t') {
                if (c10 == '/') {
                    this.pos = p10;
                    if (p10 == l10) {
                        this.pos--;
                        boolean charsLoaded = fillBuffer(2);
                        this.pos++;
                        if (!charsLoaded) {
                            return c10;
                        }
                    }
                    checkLenient();
                    char peek = buffer[this.pos];
                    switch (peek) {
                        case '*':
                            this.pos++;
                            if (!skipTo("*/")) {
                                throw syntaxError("Unterminated comment");
                            }
                            p10 = this.pos + 2;
                            l10 = this.limit;
                            break;
                        case '/':
                            this.pos++;
                            skipToEndOfLine();
                            p10 = this.pos;
                            l10 = this.limit;
                            break;
                        default:
                            return c10;
                    }
                } else if (c10 == '#') {
                    this.pos = p10;
                    checkLenient();
                    skipToEndOfLine();
                    p10 = this.pos;
                    l10 = this.limit;
                } else {
                    this.pos = p10;
                    return c10;
                }
            }
        }
    }

    private void checkLenient() throws IOException {
        if (!this.lenient) {
            throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void skipToEndOfLine() throws IOException {
        char c10;
        do {
            if (this.pos < this.limit || fillBuffer(1)) {
                char[] cArr = this.buffer;
                int i10 = this.pos;
                this.pos = i10 + 1;
                c10 = cArr[i10];
                if (c10 == '\n') {
                    this.lineNumber++;
                    this.lineStart = this.pos;
                    return;
                }
            } else {
                return;
            }
        } while (c10 != '\r');
    }

    private boolean skipTo(String toFind) throws IOException {
        int length = toFind.length();
        while (true) {
            if (this.pos + length <= this.limit || fillBuffer(length)) {
                if (this.buffer[this.pos] == '\n') {
                    this.lineNumber++;
                    this.lineStart = this.pos + 1;
                } else {
                    for (int c10 = 0; c10 < length; c10++) {
                        if (this.buffer[this.pos + c10] != toFind.charAt(c10)) {
                            break;
                        }
                    }
                    return true;
                }
                this.pos++;
            } else {
                return false;
            }
        }
    }

    public String toString() {
        return getClass().getSimpleName() + locationString();
    }

    String locationString() {
        int line = this.lineNumber + 1;
        int column = (this.pos - this.lineStart) + 1;
        return " at line " + line + " column " + column + " path " + getPath();
    }

    public String getPath() {
        StringBuilder result = new StringBuilder().append('$');
        int size = this.stackSize;
        for (int i10 = 0; i10 < size; i10++) {
            switch (this.stack[i10]) {
                case 1:
                case 2:
                    result.append('[').append(this.pathIndices[i10]).append(JavaElement.JEM_TYPE_PARAMETER);
                    break;
                case 3:
                case 4:
                case 5:
                    result.append('.');
                    if (this.pathNames[i10] != null) {
                        result.append(this.pathNames[i10]);
                        break;
                    } else {
                        break;
                    }
            }
        }
        return result.toString();
    }

    private char readEscapeCharacter() throws IOException {
        char c10;
        int i10;
        if (this.pos == this.limit && !fillBuffer(1)) {
            throw syntaxError("Unterminated escape sequence");
        }
        char[] cArr = this.buffer;
        int i11 = this.pos;
        this.pos = i11 + 1;
        char escaped = cArr[i11];
        switch (escaped) {
            case '\n':
                this.lineNumber++;
                this.lineStart = this.pos;
                break;
            case '\"':
            case '\'':
            case '/':
            case '\\':
                break;
            case 'b':
                return '\b';
            case 'f':
                return '\f';
            case 'n':
                return '\n';
            case 'r':
                return CharUtils.CR;
            case 't':
                return '\t';
            case 'u':
                if (this.pos + 4 > this.limit && !fillBuffer(4)) {
                    throw syntaxError("Unterminated escape sequence");
                }
                char result = 0;
                int i12 = this.pos;
                int end = i12 + 4;
                while (i12 < end) {
                    char c11 = this.buffer[i12];
                    char result2 = (char) (result << 4);
                    if (c11 >= '0' && c11 <= '9') {
                        c10 = result2;
                        i10 = c11 - '0';
                    } else if (c11 >= 'a' && c11 <= 'f') {
                        c10 = result2;
                        i10 = (c11 - 'a') + 10;
                    } else if (c11 >= 'A' && c11 <= 'F') {
                        c10 = result2;
                        i10 = (c11 - IIndexConstants.ANNOTATION_TYPE_SUFFIX) + 10;
                    } else {
                        throw new NumberFormatException("\\u" + new String(this.buffer, this.pos, 4));
                    }
                    result = (char) (c10 + i10);
                    i12++;
                }
                this.pos += 4;
                return result;
            default:
                throw syntaxError("Invalid escape sequence");
        }
        return escaped;
    }

    private IOException syntaxError(String message) throws IOException {
        throw new MalformedJsonException(message + locationString());
    }

    private void consumeNonExecutePrefix() throws IOException {
        nextNonWhitespace(true);
        this.pos--;
        if (this.pos + NON_EXECUTE_PREFIX.length > this.limit && !fillBuffer(NON_EXECUTE_PREFIX.length)) {
            return;
        }
        for (int i10 = 0; i10 < NON_EXECUTE_PREFIX.length; i10++) {
            if (this.buffer[this.pos + i10] != NON_EXECUTE_PREFIX[i10]) {
                return;
            }
        }
        this.pos += NON_EXECUTE_PREFIX.length;
    }
}
