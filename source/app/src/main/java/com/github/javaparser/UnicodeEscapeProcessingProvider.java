package com.github.javaparser;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class UnicodeEscapeProcessingProvider implements Provider {
    private static final char BACKSLASH = '\\';
    private static final char CR = '\r';
    private static final int EOF = -1;
    private static final char LF = '\n';
    private boolean _backslashSeen;
    private char[] _data;
    private Provider _input;
    private final LineCounter _inputLine;
    private int _len;
    private final PositionMappingBuilder _mappingBuilder;
    private final LineCounter _outputLine;
    private int _pos;

    public static final class LineCounter {
        private boolean _crSeen;
        private int _line = 1;
        private int _column = 1;

        private void incLine() {
            this._line++;
            this._column = 1;
        }

        public int getColumn() {
            return this._column;
        }

        public int getLine() {
            return this._line;
        }

        public Position getPosition() {
            return new Position(getLine(), getColumn());
        }

        public int process(int ch2) {
            if (ch2 != -1) {
                if (ch2 != 10) {
                    if (ch2 != 13) {
                        this._crSeen = false;
                        this._column++;
                    } else {
                        incLine();
                        this._crSeen = true;
                    }
                } else if (this._crSeen) {
                    this._crSeen = false;
                } else {
                    incLine();
                }
            }
            return ch2;
        }
    }

    public static final class PositionMapping {
        private final List<DeltaInfo> _deltas = new ArrayList();

        public static final class DeltaInfo extends Position implements PositionUpdate {
            private final int _columnDelta;
            private final int _lineDelta;

            public DeltaInfo(int line, int column, int lineDelta, int columnDelta) {
                super(line, column);
                this._lineDelta = lineDelta;
                this._columnDelta = columnDelta;
            }

            @Override
            public String toString() {
                return "(" + this.line + ", " + this.column + ": " + this._lineDelta + ", " + this._columnDelta + ")";
            }

            @Override
            public int transformColumn(int sourceColumn) {
                return sourceColumn + this._columnDelta;
            }

            @Override
            public int transformLine(int sourceLine) {
                return sourceLine + this._lineDelta;
            }
        }

        public interface PositionUpdate {
            public static final PositionUpdate NONE = new PositionUpdate() {
                @Override
                public Position transform(Position pos) {
                    return pos;
                }

                @Override
                public int transformColumn(int column) {
                    return column;
                }

                @Override
                public int transformLine(int line) {
                    return line;
                }
            };

            default Position transform(Position pos) {
                return new Position(transformLine(pos.line), transformColumn(pos.column));
            }

            int transformColumn(int column);

            int transformLine(int line);
        }

        public void add(int line, int column, int lineDelta, int columnDelta) {
            this._deltas.add(new DeltaInfo(line, column, lineDelta, columnDelta));
        }

        public boolean isEmpty() {
            return this._deltas.isEmpty();
        }

        public PositionUpdate lookup(Position position) {
            int binarySearch = Collections.binarySearch(this._deltas, position);
            if (binarySearch >= 0) {
                return this._deltas.get(binarySearch);
            }
            int i10 = -binarySearch;
            return i10 + (-1) == 0 ? PositionUpdate.NONE : this._deltas.get(i10 - 2);
        }

        public Position transform(Position pos) {
            return lookup(pos).transform(pos);
        }

        public Range transform(Range range) {
            Position transform = transform(range.begin);
            Position transform2 = transform(range.end);
            return (transform == range.begin && transform2 == range.end) ? range : new Range(transform, transform2);
        }
    }

    public static final class PositionMappingBuilder {
        private LineCounter _left;
        private LineCounter _right;
        private final PositionMapping _mapping = new PositionMapping();
        private int _lineDelta = 0;
        private int _columnDelta = 0;

        public PositionMappingBuilder(LineCounter left, LineCounter right) {
            this._left = left;
            this._right = right;
            update();
        }

        public PositionMapping getMapping() {
            return this._mapping;
        }

        public void update() {
            int line = this._right.getLine() - this._left.getLine();
            int column = this._right.getColumn() - this._left.getColumn();
            if (line == this._lineDelta && column == this._columnDelta) {
                return;
            }
            this._mapping.add(this._left.getLine(), this._left.getColumn(), line, column);
            this._lineDelta = line;
            this._columnDelta = column;
        }
    }

    public UnicodeEscapeProcessingProvider(Provider input) {
        this(2048, input);
    }

    private int backSlashSeen() throws IOException {
        this._backslashSeen = true;
        int nextInputChar = nextInputChar();
        if (nextInputChar == -1) {
            return 92;
        }
        if (nextInputChar == 117) {
            return unicodeStartSeen();
        }
        pushBack(nextInputChar);
        return 92;
    }

    private int clearBackSlashSeen(int next) {
        this._backslashSeen = false;
        return next;
    }

    private static int digit(int ch2) {
        if (ch2 >= 48 && ch2 <= 57) {
            return ch2 - 48;
        }
        if (ch2 >= 65 && ch2 <= 70) {
            return ch2 - 55;
        }
        if (ch2 < 97 || ch2 > 102) {
            return -1;
        }
        return ch2 - 87;
    }

    private int fillBuffer() throws IOException {
        this._pos = 0;
        Provider provider = this._input;
        char[] cArr = this._data;
        int read = provider.read(cArr, 0, cArr.length);
        if (read != 0) {
            this._len = read;
        }
        return read;
    }

    private boolean isBufferEmpty() {
        return this._pos >= this._len;
    }

    private int nextBufferedChar() throws IOException {
        while (isBufferEmpty()) {
            if (fillBuffer() < 0) {
                return -1;
            }
        }
        char[] cArr = this._data;
        int i10 = this._pos;
        this._pos = i10 + 1;
        return cArr[i10];
    }

    private int nextInputChar() throws IOException {
        return this._inputLine.process(nextBufferedChar());
    }

    private int nextOutputChar() throws IOException {
        int nextInputChar = nextInputChar();
        if (nextInputChar == -1) {
            return -1;
        }
        if (nextInputChar == 92 && !this._backslashSeen) {
            return backSlashSeen();
        }
        return clearBackSlashSeen(nextInputChar);
    }

    private void pushBack(int ch2) {
        if (ch2 < 0) {
            return;
        }
        if (isBufferEmpty()) {
            char[] cArr = this._data;
            this._pos = cArr.length;
            this._len = cArr.length;
        } else {
            int i10 = this._pos;
            if (i10 == 0) {
                int i11 = this._len;
                char[] cArr2 = this._data;
                if (i11 == cArr2.length) {
                    int length = cArr2.length + 1024;
                    char[] cArr3 = new char[length];
                    this._len = length;
                    int length2 = length - cArr2.length;
                    this._pos = length2;
                    System.arraycopy(cArr2, 0, cArr3, length2, cArr2.length);
                    this._data = cArr3;
                } else {
                    int length3 = cArr2.length - i11;
                    this._pos = length3;
                    this._len = cArr2.length;
                    System.arraycopy(cArr2, 0, cArr2, length3, i11 - i10);
                }
            }
        }
        char[] cArr4 = this._data;
        int i12 = this._pos - 1;
        this._pos = i12;
        cArr4[i12] = (char) ch2;
    }

    private void pushBackUs(int cnt) {
        for (int i10 = 0; i10 < cnt; i10++) {
            pushBack(117);
        }
    }

    private int readDigits(int uCnt, int next3) throws IOException {
        int digit = digit(next3);
        if (digit < 0) {
            pushBack(next3);
            pushBackUs(uCnt);
            return 92;
        }
        int nextInputChar = nextInputChar();
        int digit2 = digit(nextInputChar);
        if (digit2 < 0) {
            pushBack(nextInputChar);
            pushBack(next3);
            pushBackUs(uCnt);
            return 92;
        }
        int nextInputChar2 = nextInputChar();
        int digit3 = digit(nextInputChar2);
        if (digit3 < 0) {
            pushBack(nextInputChar2);
            pushBack(nextInputChar);
            pushBack(next3);
            pushBackUs(uCnt);
            return 92;
        }
        int nextInputChar3 = nextInputChar();
        int digit4 = digit(nextInputChar3);
        if (digit4 >= 0) {
            return clearBackSlashSeen((digit << 12) | (digit2 << 8) | (digit3 << 4) | digit4);
        }
        pushBack(nextInputChar3);
        pushBack(nextInputChar2);
        pushBack(nextInputChar);
        pushBack(next3);
        pushBackUs(uCnt);
        return 92;
    }

    private int unicodeStartSeen() throws IOException {
        int i10 = 1;
        while (true) {
            int nextInputChar = nextInputChar();
            if (nextInputChar == -1) {
                pushBackUs(i10);
                return 92;
            }
            if (nextInputChar != 117) {
                return readDigits(i10, nextInputChar);
            }
            i10++;
        }
    }

    @Override
    public void close() throws IOException {
        this._input.close();
    }

    public LineCounter getInputCounter() {
        return this._inputLine;
    }

    public LineCounter getOutputCounter() {
        return this._outputLine;
    }

    public PositionMapping getPositionMapping() {
        return this._mappingBuilder.getMapping();
    }

    @Override
    public int read(char[] buffer, final int offset, int len) throws IOException {
        int i10 = len + offset;
        int i11 = offset;
        while (true) {
            if (i11 >= i10) {
                break;
            }
            int process = this._outputLine.process(nextOutputChar());
            if (process >= 0) {
                this._mappingBuilder.update();
                buffer[i11] = (char) process;
                i11++;
            } else if (i11 == offset) {
                return -1;
            }
        }
        return i11 - offset;
    }

    public UnicodeEscapeProcessingProvider(int bufferSize, Provider input) {
        this._len = 0;
        this._pos = 0;
        LineCounter lineCounter = new LineCounter();
        this._inputLine = lineCounter;
        LineCounter lineCounter2 = new LineCounter();
        this._outputLine = lineCounter2;
        this._mappingBuilder = new PositionMappingBuilder(lineCounter2, lineCounter);
        this._input = input;
        this._data = new char[bufferSize];
    }
}
