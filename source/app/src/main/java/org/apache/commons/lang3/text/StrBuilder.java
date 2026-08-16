package org.apache.commons.lang3.text;

import java.io.IOException;
import java.io.Reader;
import java.io.Serializable;
import java.io.Writer;
import java.nio.CharBuffer;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.builder.Builder;

@Deprecated
public class StrBuilder implements CharSequence, Appendable, Serializable, Builder<String> {
    static final int CAPACITY = 32;
    private static final long serialVersionUID = 7628716375283629643L;
    protected char[] buffer;
    private String newLine;
    private String nullText;
    protected int size;

    public class StrBuilderTokenizer extends StrTokenizer {
        public StrBuilderTokenizer() {
        }

        @Override
        public String getContent() {
            String content = super.getContent();
            return content == null ? StrBuilder.this.toString() : content;
        }

        @Override
        public List<String> tokenize(char[] cArr, int i10, int i11) {
            if (cArr != null) {
                return super.tokenize(cArr, i10, i11);
            }
            StrBuilder strBuilder = StrBuilder.this;
            return super.tokenize(strBuilder.buffer, 0, strBuilder.size());
        }
    }

    public class StrBuilderWriter extends Writer {
        public StrBuilderWriter() {
        }

        @Override
        public void close() {
        }

        @Override
        public void flush() {
        }

        @Override
        public void write(int i10) {
            StrBuilder.this.append((char) i10);
        }

        @Override
        public void write(char[] cArr) {
            StrBuilder.this.append(cArr);
        }

        @Override
        public void write(char[] cArr, int i10, int i11) {
            StrBuilder.this.append(cArr, i10, i11);
        }

        @Override
        public void write(String str) {
            StrBuilder.this.append(str);
        }

        @Override
        public void write(String str, int i10, int i11) {
            StrBuilder.this.append(str, i10, i11);
        }
    }

    public StrBuilder() {
        this(32);
    }

    private void deleteImpl(int i10, int i11, int i12) {
        char[] cArr = this.buffer;
        System.arraycopy(cArr, i11, cArr, i10, this.size - i11);
        this.size -= i12;
    }

    private void replaceImpl(int i10, int i11, int i12, String str, int i13) {
        int i14 = (this.size - i12) + i13;
        if (i13 != i12) {
            ensureCapacity(i14);
            char[] cArr = this.buffer;
            System.arraycopy(cArr, i11, cArr, i10 + i13, this.size - i11);
            this.size = i14;
        }
        if (i13 > 0) {
            str.getChars(0, i13, this.buffer, i10);
        }
    }

    public <T> StrBuilder appendAll(T... tArr) {
        if (tArr != null && tArr.length > 0) {
            for (T t10 : tArr) {
                append(t10);
            }
        }
        return this;
    }

    public StrBuilder appendFixedWidthPadLeft(Object obj, int i10, char c10) {
        if (i10 > 0) {
            ensureCapacity(this.size + i10);
            String nullText = obj == null ? getNullText() : obj.toString();
            if (nullText == null) {
                nullText = "";
            }
            int length = nullText.length();
            if (length >= i10) {
                nullText.getChars(length - i10, length, this.buffer, this.size);
            } else {
                int i11 = i10 - length;
                for (int i12 = 0; i12 < i11; i12++) {
                    this.buffer[this.size + i12] = c10;
                }
                nullText.getChars(0, length, this.buffer, this.size + i11);
            }
            this.size += i10;
        }
        return this;
    }

    public StrBuilder appendFixedWidthPadRight(Object obj, int i10, char c10) {
        if (i10 > 0) {
            ensureCapacity(this.size + i10);
            String nullText = obj == null ? getNullText() : obj.toString();
            if (nullText == null) {
                nullText = "";
            }
            int length = nullText.length();
            if (length >= i10) {
                nullText.getChars(0, i10, this.buffer, this.size);
            } else {
                int i11 = i10 - length;
                nullText.getChars(0, length, this.buffer, this.size);
                for (int i12 = 0; i12 < i11; i12++) {
                    this.buffer[this.size + length + i12] = c10;
                }
            }
            this.size += i10;
        }
        return this;
    }

    public StrBuilder appendNewLine() {
        String str = this.newLine;
        if (str != null) {
            return append(str);
        }
        append(System.lineSeparator());
        return this;
    }

    public StrBuilder appendNull() {
        String str = this.nullText;
        return str == null ? this : append(str);
    }

    public StrBuilder appendPadding(int i10, char c10) {
        if (i10 >= 0) {
            ensureCapacity(this.size + i10);
            for (int i11 = 0; i11 < i10; i11++) {
                char[] cArr = this.buffer;
                int i12 = this.size;
                this.size = i12 + 1;
                cArr[i12] = c10;
            }
        }
        return this;
    }

    public StrBuilder appendSeparator(String str) {
        return appendSeparator(str, (String) null);
    }

    public void appendTo(Appendable appendable) throws IOException {
        if (appendable instanceof Writer) {
            ((Writer) appendable).write(this.buffer, 0, this.size);
            return;
        }
        if (appendable instanceof StringBuilder) {
            ((StringBuilder) appendable).append(this.buffer, 0, this.size);
            return;
        }
        if (appendable instanceof StringBuffer) {
            ((StringBuffer) appendable).append(this.buffer, 0, this.size);
        } else if (appendable instanceof CharBuffer) {
            ((CharBuffer) appendable).put(this.buffer, 0, this.size);
        } else {
            appendable.append(this);
        }
    }

    public StrBuilder appendWithSeparators(Object[] objArr, String str) {
        if (objArr != null && objArr.length > 0) {
            String objects = Objects.toString(str, "");
            append(objArr[0]);
            for (int i10 = 1; i10 < objArr.length; i10++) {
                append(objects);
                append(objArr[i10]);
            }
        }
        return this;
    }

    public StrBuilder appendln(Object obj) {
        return append(obj).appendNewLine();
    }

    public Reader asReader() {
        return new StrBuilderReader();
    }

    public StrTokenizer asTokenizer() {
        return new StrBuilderTokenizer();
    }

    public Writer asWriter() {
        return new StrBuilderWriter();
    }

    public int capacity() {
        return this.buffer.length;
    }

    @Override
    public char charAt(int i10) {
        if (i10 < 0 || i10 >= length()) {
            throw new StringIndexOutOfBoundsException(i10);
        }
        return this.buffer[i10];
    }

    public StrBuilder clear() {
        this.size = 0;
        return this;
    }

    public boolean contains(char c10) {
        char[] cArr = this.buffer;
        for (int i10 = 0; i10 < this.size; i10++) {
            if (cArr[i10] == c10) {
                return true;
            }
        }
        return false;
    }

    public StrBuilder delete(int i10, int i11) {
        int validateRange = validateRange(i10, i11);
        int i12 = validateRange - i10;
        if (i12 > 0) {
            deleteImpl(i10, validateRange, i12);
        }
        return this;
    }

    public StrBuilder deleteAll(char c10) {
        int i10 = 0;
        while (i10 < this.size) {
            if (this.buffer[i10] == c10) {
                int i11 = i10;
                do {
                    i11++;
                    if (i11 >= this.size) {
                        break;
                    }
                } while (this.buffer[i11] == c10);
                int i12 = i11 - i10;
                deleteImpl(i10, i11, i12);
                i10 = i11 - i12;
            }
            i10++;
        }
        return this;
    }

    public StrBuilder deleteCharAt(int i10) {
        if (i10 < 0 || i10 >= this.size) {
            throw new StringIndexOutOfBoundsException(i10);
        }
        deleteImpl(i10, i10 + 1, 1);
        return this;
    }

    public StrBuilder deleteFirst(char c10) {
        int i10 = 0;
        while (true) {
            if (i10 >= this.size) {
                break;
            }
            if (this.buffer[i10] == c10) {
                deleteImpl(i10, i10 + 1, 1);
                break;
            }
            i10++;
        }
        return this;
    }

    public boolean endsWith(String str) {
        if (str == null) {
            return false;
        }
        int length = str.length();
        if (length == 0) {
            return true;
        }
        int i10 = this.size;
        if (length > i10) {
            return false;
        }
        int i11 = i10 - length;
        int i12 = 0;
        while (i12 < length) {
            if (this.buffer[i11] != str.charAt(i12)) {
                return false;
            }
            i12++;
            i11++;
        }
        return true;
    }

    public StrBuilder ensureCapacity(int i10) {
        char[] cArr = this.buffer;
        if (i10 > cArr.length) {
            char[] cArr2 = new char[i10 * 2];
            this.buffer = cArr2;
            System.arraycopy(cArr, 0, cArr2, 0, this.size);
        }
        return this;
    }

    public boolean equals(StrBuilder strBuilder) {
        int i10;
        if (this == strBuilder) {
            return true;
        }
        if (strBuilder == null || (i10 = this.size) != strBuilder.size) {
            return false;
        }
        char[] cArr = this.buffer;
        char[] cArr2 = strBuilder.buffer;
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            if (cArr[i11] != cArr2[i11]) {
                return false;
            }
        }
        return true;
    }

    public boolean equalsIgnoreCase(StrBuilder strBuilder) {
        if (this == strBuilder) {
            return true;
        }
        int i10 = this.size;
        if (i10 != strBuilder.size) {
            return false;
        }
        char[] cArr = this.buffer;
        char[] cArr2 = strBuilder.buffer;
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            char c10 = cArr[i11];
            char c11 = cArr2[i11];
            if (c10 != c11 && Character.toUpperCase(c10) != Character.toUpperCase(c11)) {
                return false;
            }
        }
        return true;
    }

    public char[] getChars(char[] cArr) {
        int length = length();
        if (cArr == null || cArr.length < length) {
            cArr = new char[length];
        }
        System.arraycopy(this.buffer, 0, cArr, 0, length);
        return cArr;
    }

    public String getNewLineText() {
        return this.newLine;
    }

    public String getNullText() {
        return this.nullText;
    }

    public int hashCode() {
        char[] cArr = this.buffer;
        int i10 = 0;
        for (int i11 = this.size - 1; i11 >= 0; i11--) {
            i10 = (i10 * 31) + cArr[i11];
        }
        return i10;
    }

    public int indexOf(char c10) {
        return indexOf(c10, 0);
    }

    public StrBuilder insert(int i10, Object obj) {
        if (obj == null) {
            return insert(i10, this.nullText);
        }
        return insert(i10, obj.toString());
    }

    @Override
    public boolean isEmpty() {
        return this.size == 0;
    }

    public int lastIndexOf(char c10) {
        return lastIndexOf(c10, this.size - 1);
    }

    public String leftString(int i10) {
        if (i10 <= 0) {
            return "";
        }
        int i11 = this.size;
        return i10 >= i11 ? new String(this.buffer, 0, i11) : new String(this.buffer, 0, i10);
    }

    @Override
    public int length() {
        return this.size;
    }

    public String midString(int i10, int i11) {
        int i12;
        if (i10 < 0) {
            i10 = 0;
        }
        return (i11 <= 0 || i10 >= (i12 = this.size)) ? "" : i12 <= i10 + i11 ? new String(this.buffer, i10, i12 - i10) : new String(this.buffer, i10, i11);
    }

    public StrBuilder minimizeCapacity() {
        if (this.buffer.length > length()) {
            char[] cArr = this.buffer;
            char[] cArr2 = new char[length()];
            this.buffer = cArr2;
            System.arraycopy(cArr, 0, cArr2, 0, this.size);
        }
        return this;
    }

    public int readFrom(Readable readable) throws IOException {
        int i10 = this.size;
        if (readable instanceof Reader) {
            Reader reader = (Reader) readable;
            ensureCapacity(i10 + 1);
            while (true) {
                char[] cArr = this.buffer;
                int i11 = this.size;
                int read = reader.read(cArr, i11, cArr.length - i11);
                if (read == -1) {
                    break;
                }
                int i12 = this.size + read;
                this.size = i12;
                ensureCapacity(i12 + 1);
            }
        } else if (readable instanceof CharBuffer) {
            CharBuffer charBuffer = (CharBuffer) readable;
            int remaining = charBuffer.remaining();
            ensureCapacity(this.size + remaining);
            charBuffer.get(this.buffer, this.size, remaining);
            this.size += remaining;
        } else {
            while (true) {
                ensureCapacity(this.size + 1);
                char[] cArr2 = this.buffer;
                int i13 = this.size;
                int read2 = readable.read(CharBuffer.wrap(cArr2, i13, cArr2.length - i13));
                if (read2 == -1) {
                    break;
                }
                this.size += read2;
            }
        }
        return this.size - i10;
    }

    public StrBuilder replace(int i10, int i11, String str) {
        int validateRange = validateRange(i10, i11);
        replaceImpl(i10, validateRange, validateRange - i10, str, str == null ? 0 : str.length());
        return this;
    }

    public StrBuilder replaceAll(char c10, char c11) {
        if (c10 != c11) {
            for (int i10 = 0; i10 < this.size; i10++) {
                char[] cArr = this.buffer;
                if (cArr[i10] == c10) {
                    cArr[i10] = c11;
                }
            }
        }
        return this;
    }

    public StrBuilder replaceFirst(char c10, char c11) {
        if (c10 != c11) {
            int i10 = 0;
            while (true) {
                if (i10 >= this.size) {
                    break;
                }
                char[] cArr = this.buffer;
                if (cArr[i10] == c10) {
                    cArr[i10] = c11;
                    break;
                }
                i10++;
            }
        }
        return this;
    }

    public StrBuilder reverse() {
        int i10 = this.size;
        if (i10 == 0) {
            return this;
        }
        int i11 = i10 / 2;
        char[] cArr = this.buffer;
        int i12 = i10 - 1;
        int i13 = 0;
        while (i13 < i11) {
            char c10 = cArr[i13];
            cArr[i13] = cArr[i12];
            cArr[i12] = c10;
            i13++;
            i12--;
        }
        return this;
    }

    public String rightString(int i10) {
        if (i10 <= 0) {
            return "";
        }
        int i11 = this.size;
        return i10 >= i11 ? new String(this.buffer, 0, i11) : new String(this.buffer, i11 - i10, i10);
    }

    public StrBuilder setCharAt(int i10, char c10) {
        if (i10 < 0 || i10 >= length()) {
            throw new StringIndexOutOfBoundsException(i10);
        }
        this.buffer[i10] = c10;
        return this;
    }

    public StrBuilder setLength(int i10) {
        if (i10 < 0) {
            throw new StringIndexOutOfBoundsException(i10);
        }
        int i11 = this.size;
        if (i10 < i11) {
            this.size = i10;
        } else if (i10 > i11) {
            ensureCapacity(i10);
            this.size = i10;
            for (int i12 = this.size; i12 < i10; i12++) {
                this.buffer[i12] = 0;
            }
        }
        return this;
    }

    public StrBuilder setNewLineText(String str) {
        this.newLine = str;
        return this;
    }

    public StrBuilder setNullText(String str) {
        if (str != null && str.isEmpty()) {
            str = null;
        }
        this.nullText = str;
        return this;
    }

    public int size() {
        return this.size;
    }

    public boolean startsWith(String str) {
        if (str == null) {
            return false;
        }
        int length = str.length();
        if (length == 0) {
            return true;
        }
        if (length > this.size) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (this.buffer[i10] != str.charAt(i10)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public CharSequence subSequence(int i10, int i11) {
        if (i10 < 0) {
            throw new StringIndexOutOfBoundsException(i10);
        }
        if (i11 > this.size) {
            throw new StringIndexOutOfBoundsException(i11);
        }
        if (i10 <= i11) {
            return substring(i10, i11);
        }
        throw new StringIndexOutOfBoundsException(i11 - i10);
    }

    public String substring(int i10) {
        return substring(i10, this.size);
    }

    public char[] toCharArray() {
        int i10 = this.size;
        if (i10 == 0) {
            return ArrayUtils.EMPTY_CHAR_ARRAY;
        }
        char[] cArr = new char[i10];
        System.arraycopy(this.buffer, 0, cArr, 0, i10);
        return cArr;
    }

    @Override
    public String toString() {
        return new String(this.buffer, 0, this.size);
    }

    public StringBuffer toStringBuffer() {
        StringBuffer stringBuffer = new StringBuffer(this.size);
        stringBuffer.append(this.buffer, 0, this.size);
        return stringBuffer;
    }

    public StringBuilder toStringBuilder() {
        StringBuilder sb2 = new StringBuilder(this.size);
        sb2.append(this.buffer, 0, this.size);
        return sb2;
    }

    public StrBuilder trim() {
        int i10 = this.size;
        if (i10 == 0) {
            return this;
        }
        char[] cArr = this.buffer;
        int i11 = 0;
        while (i11 < i10 && cArr[i11] <= ' ') {
            i11++;
        }
        while (i11 < i10 && cArr[i10 - 1] <= ' ') {
            i10--;
        }
        int i12 = this.size;
        if (i10 < i12) {
            delete(i10, i12);
        }
        if (i11 > 0) {
            delete(0, i11);
        }
        return this;
    }

    public void validateIndex(int i10) {
        if (i10 < 0 || i10 > this.size) {
            throw new StringIndexOutOfBoundsException(i10);
        }
    }

    public int validateRange(int i10, int i11) {
        if (i10 < 0) {
            throw new StringIndexOutOfBoundsException(i10);
        }
        int i12 = this.size;
        if (i11 > i12) {
            i11 = i12;
        }
        if (i10 <= i11) {
            return i11;
        }
        throw new StringIndexOutOfBoundsException("end < start");
    }

    public class StrBuilderReader extends Reader {
        private int mark;
        private int pos;

        public StrBuilderReader() {
        }

        @Override
        public void close() {
        }

        @Override
        public void mark(int i10) {
            this.mark = this.pos;
        }

        @Override
        public boolean markSupported() {
            return true;
        }

        @Override
        public int read() {
            if (!ready()) {
                return -1;
            }
            StrBuilder strBuilder = StrBuilder.this;
            int i10 = this.pos;
            this.pos = i10 + 1;
            return strBuilder.charAt(i10);
        }

        @Override
        public boolean ready() {
            return this.pos < StrBuilder.this.size();
        }

        @Override
        public void reset() {
            this.pos = this.mark;
        }

        @Override
        public long skip(long j10) {
            if (this.pos + j10 > StrBuilder.this.size()) {
                j10 = StrBuilder.this.size() - this.pos;
            }
            if (j10 < 0) {
                return 0L;
            }
            this.pos = (int) (this.pos + j10);
            return j10;
        }

        @Override
        public int read(char[] cArr, int i10, int i11) {
            int i12;
            if (i10 < 0 || i11 < 0 || i10 > cArr.length || (i12 = i10 + i11) > cArr.length || i12 < 0) {
                throw new IndexOutOfBoundsException();
            }
            if (i11 == 0) {
                return 0;
            }
            if (this.pos >= StrBuilder.this.size()) {
                return -1;
            }
            if (this.pos + i11 > StrBuilder.this.size()) {
                i11 = StrBuilder.this.size() - this.pos;
            }
            StrBuilder strBuilder = StrBuilder.this;
            int i13 = this.pos;
            strBuilder.getChars(i13, i13 + i11, cArr, i10);
            this.pos += i11;
            return i11;
        }
    }

    public StrBuilder(int i10) {
        this.buffer = new char[i10 <= 0 ? 32 : i10];
    }

    public StrBuilder appendSeparator(String str, String str2) {
        if (isEmpty()) {
            str = str2;
        }
        if (str != null) {
            append(str);
        }
        return this;
    }

    public StrBuilder appendln(String str) {
        return append(str).appendNewLine();
    }

    @Override
    public String build() {
        return toString();
    }

    public int indexOf(char c10, int i10) {
        if (i10 < 0) {
            i10 = 0;
        }
        if (i10 >= this.size) {
            return -1;
        }
        char[] cArr = this.buffer;
        while (i10 < this.size) {
            if (cArr[i10] == c10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public int lastIndexOf(char c10, int i10) {
        int i11 = this.size;
        if (i10 >= i11) {
            i10 = i11 - 1;
        }
        if (i10 < 0) {
            return -1;
        }
        while (i10 >= 0) {
            if (this.buffer[i10] == c10) {
                return i10;
            }
            i10--;
        }
        return -1;
    }

    public String substring(int i10, int i11) {
        return new String(this.buffer, i10, validateRange(i10, i11) - i10);
    }

    public StrBuilder appendln(String str, int i10, int i11) {
        return append(str, i10, i11).appendNewLine();
    }

    public StrBuilder insert(int i10, String str) {
        int length;
        validateIndex(i10);
        if (str == null) {
            str = this.nullText;
        }
        if (str != null && (length = str.length()) > 0) {
            int i11 = this.size + length;
            ensureCapacity(i11);
            char[] cArr = this.buffer;
            System.arraycopy(cArr, i10, cArr, i10 + length, this.size - i10);
            this.size = i11;
            str.getChars(0, length, this.buffer, i10);
        }
        return this;
    }

    public StrBuilder(String str) {
        if (str == null) {
            this.buffer = new char[32];
        } else {
            this.buffer = new char[str.length() + 32];
            append(str);
        }
    }

    public StrBuilder append(Object obj) {
        if (obj == null) {
            return appendNull();
        }
        if (obj instanceof CharSequence) {
            return append((CharSequence) obj);
        }
        return append(obj.toString());
    }

    public StrBuilder appendAll(Iterable<?> iterable) {
        if (iterable != null) {
            Iterator<?> it = iterable.iterator();
            while (it.hasNext()) {
                append(it.next());
            }
        }
        return this;
    }

    public StrBuilder appendSeparator(char c10) {
        if (size() > 0) {
            append(c10);
        }
        return this;
    }

    public StrBuilder appendln(String str, Object... objArr) {
        return append(str, objArr).appendNewLine();
    }

    public boolean contains(String str) {
        return indexOf(str, 0) >= 0;
    }

    public StrBuilder deleteFirst(String str) {
        int indexOf;
        int length = str == null ? 0 : str.length();
        if (length > 0 && (indexOf = indexOf(str, 0)) >= 0) {
            deleteImpl(indexOf, indexOf + length, length);
        }
        return this;
    }

    public int lastIndexOf(String str) {
        return lastIndexOf(str, this.size - 1);
    }

    public StrBuilder replace(StrMatcher strMatcher, String str, int i10, int i11, int i12) {
        return replaceImpl(strMatcher, str, i10, validateRange(i10, i11), i12);
    }

    public StrBuilder replaceAll(String str, String str2) {
        int length = str == null ? 0 : str.length();
        if (length > 0) {
            int length2 = str2 == null ? 0 : str2.length();
            int indexOf = indexOf(str, 0);
            while (indexOf >= 0) {
                replaceImpl(indexOf, indexOf + length, length, str2, length2);
                indexOf = indexOf(str, indexOf + length2);
            }
        }
        return this;
    }

    public StrBuilder replaceFirst(String str, String str2) {
        int indexOf;
        int length = str == null ? 0 : str.length();
        if (length > 0 && (indexOf = indexOf(str, 0)) >= 0) {
            replaceImpl(indexOf, indexOf + length, length, str2, str2 != null ? str2.length() : 0);
        }
        return this;
    }

    public StrBuilder appendln(StringBuffer stringBuffer) {
        return append(stringBuffer).appendNewLine();
    }

    public boolean contains(StrMatcher strMatcher) {
        return indexOf(strMatcher, 0) >= 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof StrBuilder) && equals((StrBuilder) obj);
    }

    @Override
    public void getChars(int i10, int i11, char[] cArr, int i12) {
        if (i10 >= 0) {
            if (i11 < 0 || i11 > length()) {
                throw new StringIndexOutOfBoundsException(i11);
            }
            if (i10 <= i11) {
                System.arraycopy(this.buffer, i10, cArr, i12, i11 - i10);
                return;
            }
            throw new StringIndexOutOfBoundsException("end < start");
        }
        throw new StringIndexOutOfBoundsException(i10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0036, code lost:
    
        r9 = r9 - 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int lastIndexOf(String str, int i10) {
        int i11 = this.size;
        if (i10 >= i11) {
            i10 = i11 - 1;
        }
        if (str != null && i10 >= 0) {
            int length = str.length();
            if (length > 0 && length <= this.size) {
                if (length == 1) {
                    return lastIndexOf(str.charAt(0), i10);
                }
                int i12 = (i10 - length) + 1;
                while (i12 >= 0) {
                    for (int i13 = 0; i13 < length; i13++) {
                        if (str.charAt(i13) != this.buffer[i12 + i13]) {
                            break;
                        }
                    }
                    return i12;
                }
            }
            if (length == 0) {
                return i10;
            }
        }
        return -1;
    }

    public char[] toCharArray(int i10, int i11) {
        int validateRange = validateRange(i10, i11) - i10;
        if (validateRange == 0) {
            return ArrayUtils.EMPTY_CHAR_ARRAY;
        }
        char[] cArr = new char[validateRange];
        System.arraycopy(this.buffer, i10, cArr, 0, validateRange);
        return cArr;
    }

    private StrBuilder replaceImpl(StrMatcher strMatcher, String str, int i10, int i11, int i12) {
        if (strMatcher != null && this.size != 0) {
            int length = str == null ? 0 : str.length();
            int i13 = i10;
            while (i13 < i11 && i12 != 0) {
                int isMatch = strMatcher.isMatch(this.buffer, i13, i10, i11);
                if (isMatch > 0) {
                    replaceImpl(i13, i13 + isMatch, isMatch, str, length);
                    i11 = (i11 - isMatch) + length;
                    i13 = (i13 + length) - 1;
                    if (i12 > 0) {
                        i12--;
                    }
                }
                i13++;
            }
        }
        return this;
    }

    public StrBuilder appendAll(Iterator<?> it) {
        if (it != null) {
            while (it.hasNext()) {
                append(it.next());
            }
        }
        return this;
    }

    public StrBuilder appendSeparator(char c10, char c11) {
        if (size() > 0) {
            append(c10);
        } else {
            append(c11);
        }
        return this;
    }

    public StrBuilder appendln(StringBuilder sb2) {
        return append(sb2).appendNewLine();
    }

    public StrBuilder deleteAll(String str) {
        int length = str == null ? 0 : str.length();
        if (length > 0) {
            int indexOf = indexOf(str, 0);
            while (indexOf >= 0) {
                deleteImpl(indexOf, indexOf + length, length);
                indexOf = indexOf(str, indexOf);
            }
        }
        return this;
    }

    public int indexOf(String str) {
        return indexOf(str, 0);
    }

    public StrBuilder appendWithSeparators(Iterable<?> iterable, String str) {
        if (iterable != null) {
            String objects = Objects.toString(str, "");
            Iterator<?> it = iterable.iterator();
            while (it.hasNext()) {
                append(it.next());
                if (it.hasNext()) {
                    append(objects);
                }
            }
        }
        return this;
    }

    public StrBuilder appendln(StringBuilder sb2, int i10, int i11) {
        return append(sb2, i10, i11).appendNewLine();
    }

    public StrBuilder deleteFirst(StrMatcher strMatcher) {
        return replace(strMatcher, null, 0, this.size, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0037, code lost:
    
        r10 = r10 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int indexOf(String str, int i10) {
        if (i10 < 0) {
            i10 = 0;
        }
        if (str != null && i10 < this.size) {
            int length = str.length();
            if (length == 1) {
                return indexOf(str.charAt(0), i10);
            }
            if (length == 0) {
                return i10;
            }
            int i11 = this.size;
            if (length > i11) {
                return -1;
            }
            char[] cArr = this.buffer;
            int i12 = (i11 - length) + 1;
            while (i10 < i12) {
                for (int i13 = 0; i13 < length; i13++) {
                    if (str.charAt(i13) != cArr[i10 + i13]) {
                        break;
                    }
                }
                return i10;
            }
        }
        return -1;
    }

    @Override
    public StrBuilder append(CharSequence charSequence) {
        if (charSequence == null) {
            return appendNull();
        }
        if (charSequence instanceof StrBuilder) {
            return append((StrBuilder) charSequence);
        }
        if (charSequence instanceof StringBuilder) {
            return append((StringBuilder) charSequence);
        }
        if (charSequence instanceof StringBuffer) {
            return append((StringBuffer) charSequence);
        }
        if (charSequence instanceof CharBuffer) {
            return append((CharBuffer) charSequence);
        }
        return append(charSequence.toString());
    }

    public StrBuilder appendln(StringBuffer stringBuffer, int i10, int i11) {
        return append(stringBuffer, i10, i11).appendNewLine();
    }

    public StrBuilder replaceFirst(StrMatcher strMatcher, String str) {
        return replace(strMatcher, str, 0, this.size, 1);
    }

    public StrBuilder appendFixedWidthPadLeft(int i10, int i11, char c10) {
        return appendFixedWidthPadLeft(String.valueOf(i10), i11, c10);
    }

    public StrBuilder appendFixedWidthPadRight(int i10, int i11, char c10) {
        return appendFixedWidthPadRight(String.valueOf(i10), i11, c10);
    }

    public StrBuilder appendSeparator(String str, int i10) {
        if (str != null && i10 > 0) {
            append(str);
        }
        return this;
    }

    public StrBuilder appendln(StrBuilder strBuilder) {
        return append(strBuilder).appendNewLine();
    }

    public StrBuilder replaceAll(StrMatcher strMatcher, String str) {
        return replace(strMatcher, str, 0, this.size, -1);
    }

    public StrBuilder appendSeparator(char c10, int i10) {
        if (i10 > 0) {
            append(c10);
        }
        return this;
    }

    public StrBuilder appendln(StrBuilder strBuilder, int i10, int i11) {
        return append(strBuilder, i10, i11).appendNewLine();
    }

    public StrBuilder deleteAll(StrMatcher strMatcher) {
        return replace(strMatcher, null, 0, this.size, -1);
    }

    public int lastIndexOf(StrMatcher strMatcher) {
        return lastIndexOf(strMatcher, this.size);
    }

    public StrBuilder appendln(char[] cArr) {
        return append(cArr).appendNewLine();
    }

    public StrBuilder insert(int i10, char[] cArr) {
        validateIndex(i10);
        if (cArr == null) {
            return insert(i10, this.nullText);
        }
        int length = cArr.length;
        if (length > 0) {
            ensureCapacity(this.size + length);
            char[] cArr2 = this.buffer;
            System.arraycopy(cArr2, i10, cArr2, i10 + length, this.size - i10);
            System.arraycopy(cArr, 0, this.buffer, i10, length);
            this.size += length;
        }
        return this;
    }

    public int lastIndexOf(StrMatcher strMatcher, int i10) {
        int i11 = this.size;
        if (i10 >= i11) {
            i10 = i11 - 1;
        }
        if (strMatcher != null && i10 >= 0) {
            char[] cArr = this.buffer;
            int i12 = i10 + 1;
            while (i10 >= 0) {
                if (strMatcher.isMatch(cArr, i10, 0, i12) > 0) {
                    return i10;
                }
                i10--;
            }
        }
        return -1;
    }

    public StrBuilder appendln(char[] cArr, int i10, int i11) {
        return append(cArr, i10, i11).appendNewLine();
    }

    public StrBuilder appendWithSeparators(Iterator<?> it, String str) {
        if (it != null) {
            String objects = Objects.toString(str, "");
            while (it.hasNext()) {
                append(it.next());
                if (it.hasNext()) {
                    append(objects);
                }
            }
        }
        return this;
    }

    public StrBuilder appendln(boolean z10) {
        return append(z10).appendNewLine();
    }

    public int indexOf(StrMatcher strMatcher) {
        return indexOf(strMatcher, 0);
    }

    public StrBuilder appendln(char c10) {
        return append(c10).appendNewLine();
    }

    public int indexOf(StrMatcher strMatcher, int i10) {
        int i11;
        if (i10 < 0) {
            i10 = 0;
        }
        if (strMatcher != null && i10 < (i11 = this.size)) {
            char[] cArr = this.buffer;
            for (int i12 = i10; i12 < i11; i12++) {
                if (strMatcher.isMatch(cArr, i12, i10, i11) > 0) {
                    return i12;
                }
            }
        }
        return -1;
    }

    public StrBuilder appendln(int i10) {
        return append(i10).appendNewLine();
    }

    public StrBuilder appendln(long j10) {
        return append(j10).appendNewLine();
    }

    public StrBuilder appendln(float f10) {
        return append(f10).appendNewLine();
    }

    @Override
    public StrBuilder append(CharSequence charSequence, int i10, int i11) {
        if (charSequence == null) {
            return appendNull();
        }
        return append(charSequence.toString(), i10, i11);
    }

    public StrBuilder appendln(double d10) {
        return append(d10).appendNewLine();
    }

    public StrBuilder insert(int i10, char[] cArr, int i11, int i12) {
        validateIndex(i10);
        if (cArr == null) {
            return insert(i10, this.nullText);
        }
        if (i11 >= 0 && i11 <= cArr.length) {
            if (i12 < 0 || i11 + i12 > cArr.length) {
                throw new StringIndexOutOfBoundsException("Invalid length: " + i12);
            }
            if (i12 > 0) {
                ensureCapacity(this.size + i12);
                char[] cArr2 = this.buffer;
                System.arraycopy(cArr2, i10, cArr2, i10 + i12, this.size - i10);
                System.arraycopy(cArr, i11, this.buffer, i10, i12);
                this.size += i12;
            }
            return this;
        }
        throw new StringIndexOutOfBoundsException("Invalid offset: " + i11);
    }

    public StrBuilder append(String str) {
        if (str == null) {
            return appendNull();
        }
        int length = str.length();
        if (length > 0) {
            int length2 = length();
            ensureCapacity(length2 + length);
            str.getChars(0, length, this.buffer, length2);
            this.size += length;
        }
        return this;
    }

    public StrBuilder append(String str, int i10, int i11) {
        int i12;
        if (str == null) {
            return appendNull();
        }
        if (i10 >= 0 && i10 <= str.length()) {
            if (i11 < 0 || (i12 = i10 + i11) > str.length()) {
                throw new StringIndexOutOfBoundsException("length must be valid");
            }
            if (i11 > 0) {
                int length = length();
                ensureCapacity(length + i11);
                str.getChars(i10, i12, this.buffer, length);
                this.size += i11;
            }
            return this;
        }
        throw new StringIndexOutOfBoundsException("startIndex must be valid");
    }

    public StrBuilder insert(int i10, boolean z10) {
        validateIndex(i10);
        if (z10) {
            ensureCapacity(this.size + 4);
            char[] cArr = this.buffer;
            System.arraycopy(cArr, i10, cArr, i10 + 4, this.size - i10);
            char[] cArr2 = this.buffer;
            cArr2[i10] = 't';
            cArr2[i10 + 1] = 'r';
            cArr2[i10 + 2] = 'u';
            cArr2[i10 + 3] = 'e';
            this.size += 4;
        } else {
            ensureCapacity(this.size + 5);
            char[] cArr3 = this.buffer;
            System.arraycopy(cArr3, i10, cArr3, i10 + 5, this.size - i10);
            char[] cArr4 = this.buffer;
            cArr4[i10] = 'f';
            cArr4[i10 + 1] = 'a';
            cArr4[i10 + 2] = 'l';
            cArr4[i10 + 3] = 's';
            cArr4[i10 + 4] = 'e';
            this.size += 5;
        }
        return this;
    }

    public StrBuilder append(String str, Object... objArr) {
        return append(String.format(str, objArr));
    }

    public StrBuilder append(CharBuffer charBuffer) {
        if (charBuffer == null) {
            return appendNull();
        }
        if (charBuffer.hasArray()) {
            int remaining = charBuffer.remaining();
            int length = length();
            ensureCapacity(length + remaining);
            System.arraycopy(charBuffer.array(), charBuffer.arrayOffset() + charBuffer.position(), this.buffer, length, remaining);
            this.size += remaining;
        } else {
            append(charBuffer.toString());
        }
        return this;
    }

    public StrBuilder append(CharBuffer charBuffer, int i10, int i11) {
        if (charBuffer == null) {
            return appendNull();
        }
        if (charBuffer.hasArray()) {
            int remaining = charBuffer.remaining();
            if (i10 < 0 || i10 > remaining) {
                throw new StringIndexOutOfBoundsException("startIndex must be valid");
            }
            if (i11 >= 0 && i10 + i11 <= remaining) {
                int length = length();
                ensureCapacity(length + i11);
                System.arraycopy(charBuffer.array(), charBuffer.arrayOffset() + charBuffer.position() + i10, this.buffer, length, i11);
                this.size += i11;
            } else {
                throw new StringIndexOutOfBoundsException("length must be valid");
            }
        } else {
            append(charBuffer.toString(), i10, i11);
        }
        return this;
    }

    public StrBuilder insert(int i10, char c10) {
        validateIndex(i10);
        ensureCapacity(this.size + 1);
        char[] cArr = this.buffer;
        System.arraycopy(cArr, i10, cArr, i10 + 1, this.size - i10);
        this.buffer[i10] = c10;
        this.size++;
        return this;
    }

    public StrBuilder insert(int i10, int i11) {
        return insert(i10, String.valueOf(i11));
    }

    public StrBuilder insert(int i10, long j10) {
        return insert(i10, String.valueOf(j10));
    }

    public StrBuilder insert(int i10, float f10) {
        return insert(i10, String.valueOf(f10));
    }

    public StrBuilder insert(int i10, double d10) {
        return insert(i10, String.valueOf(d10));
    }

    public StrBuilder append(StringBuffer stringBuffer) {
        if (stringBuffer == null) {
            return appendNull();
        }
        int length = stringBuffer.length();
        if (length > 0) {
            int length2 = length();
            ensureCapacity(length2 + length);
            stringBuffer.getChars(0, length, this.buffer, length2);
            this.size += length;
        }
        return this;
    }

    public StrBuilder append(StringBuffer stringBuffer, int i10, int i11) {
        int i12;
        if (stringBuffer == null) {
            return appendNull();
        }
        if (i10 >= 0 && i10 <= stringBuffer.length()) {
            if (i11 < 0 || (i12 = i10 + i11) > stringBuffer.length()) {
                throw new StringIndexOutOfBoundsException("length must be valid");
            }
            if (i11 > 0) {
                int length = length();
                ensureCapacity(length + i11);
                stringBuffer.getChars(i10, i12, this.buffer, length);
                this.size += i11;
            }
            return this;
        }
        throw new StringIndexOutOfBoundsException("startIndex must be valid");
    }

    public StrBuilder append(StringBuilder sb2) {
        if (sb2 == null) {
            return appendNull();
        }
        int length = sb2.length();
        if (length > 0) {
            int length2 = length();
            ensureCapacity(length2 + length);
            sb2.getChars(0, length, this.buffer, length2);
            this.size += length;
        }
        return this;
    }

    public StrBuilder append(StringBuilder sb2, int i10, int i11) {
        int i12;
        if (sb2 == null) {
            return appendNull();
        }
        if (i10 >= 0 && i10 <= sb2.length()) {
            if (i11 < 0 || (i12 = i10 + i11) > sb2.length()) {
                throw new StringIndexOutOfBoundsException("length must be valid");
            }
            if (i11 > 0) {
                int length = length();
                ensureCapacity(length + i11);
                sb2.getChars(i10, i12, this.buffer, length);
                this.size += i11;
            }
            return this;
        }
        throw new StringIndexOutOfBoundsException("startIndex must be valid");
    }

    public StrBuilder append(StrBuilder strBuilder) {
        if (strBuilder == null) {
            return appendNull();
        }
        int length = strBuilder.length();
        if (length > 0) {
            int length2 = length();
            ensureCapacity(length2 + length);
            System.arraycopy(strBuilder.buffer, 0, this.buffer, length2, length);
            this.size += length;
        }
        return this;
    }

    public StrBuilder append(StrBuilder strBuilder, int i10, int i11) {
        int i12;
        if (strBuilder == null) {
            return appendNull();
        }
        if (i10 >= 0 && i10 <= strBuilder.length()) {
            if (i11 < 0 || (i12 = i10 + i11) > strBuilder.length()) {
                throw new StringIndexOutOfBoundsException("length must be valid");
            }
            if (i11 > 0) {
                int length = length();
                ensureCapacity(length + i11);
                strBuilder.getChars(i10, i12, this.buffer, length);
                this.size += i11;
            }
            return this;
        }
        throw new StringIndexOutOfBoundsException("startIndex must be valid");
    }

    public StrBuilder append(char[] cArr) {
        if (cArr == null) {
            return appendNull();
        }
        int length = cArr.length;
        if (length > 0) {
            int length2 = length();
            ensureCapacity(length2 + length);
            System.arraycopy(cArr, 0, this.buffer, length2, length);
            this.size += length;
        }
        return this;
    }

    public StrBuilder append(char[] cArr, int i10, int i11) {
        if (cArr == null) {
            return appendNull();
        }
        if (i10 >= 0 && i10 <= cArr.length) {
            if (i11 < 0 || i10 + i11 > cArr.length) {
                throw new StringIndexOutOfBoundsException("Invalid length: " + i11);
            }
            if (i11 > 0) {
                int length = length();
                ensureCapacity(length + i11);
                System.arraycopy(cArr, i10, this.buffer, length, i11);
                this.size += i11;
            }
            return this;
        }
        throw new StringIndexOutOfBoundsException("Invalid startIndex: " + i11);
    }

    public StrBuilder append(boolean z10) {
        if (z10) {
            ensureCapacity(this.size + 4);
            char[] cArr = this.buffer;
            int i10 = this.size;
            int i11 = i10 + 1;
            this.size = i11;
            cArr[i10] = 't';
            int i12 = i10 + 2;
            this.size = i12;
            cArr[i11] = 'r';
            int i13 = i10 + 3;
            this.size = i13;
            cArr[i12] = 'u';
            this.size = i10 + 4;
            cArr[i13] = 'e';
        } else {
            ensureCapacity(this.size + 5);
            char[] cArr2 = this.buffer;
            int i14 = this.size;
            int i15 = i14 + 1;
            this.size = i15;
            cArr2[i14] = 'f';
            int i16 = i14 + 2;
            this.size = i16;
            cArr2[i15] = 'a';
            int i17 = i14 + 3;
            this.size = i17;
            cArr2[i16] = 'l';
            int i18 = i14 + 4;
            this.size = i18;
            cArr2[i17] = 's';
            this.size = i14 + 5;
            cArr2[i18] = 'e';
        }
        return this;
    }

    @Override
    public StrBuilder append(char c10) {
        ensureCapacity(length() + 1);
        char[] cArr = this.buffer;
        int i10 = this.size;
        this.size = i10 + 1;
        cArr[i10] = c10;
        return this;
    }

    public StrBuilder append(int i10) {
        return append(String.valueOf(i10));
    }

    public StrBuilder append(long j10) {
        return append(String.valueOf(j10));
    }

    public StrBuilder append(float f10) {
        return append(String.valueOf(f10));
    }

    public StrBuilder append(double d10) {
        return append(String.valueOf(d10));
    }
}
