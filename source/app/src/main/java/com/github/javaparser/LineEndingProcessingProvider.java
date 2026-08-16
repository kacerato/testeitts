package com.github.javaparser;

import com.github.javaparser.utils.LineSeparator;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

public class LineEndingProcessingProvider implements Provider {
    private static final int DEFAULT_BUFFER_SIZE = 2048;
    private static final int EOF = -1;
    private final char[] _data;
    private final Provider _input;
    private int _len;
    private int _pos;
    private final Map<LineSeparator, Integer> eolCounts;

    public LineEndingProcessingProvider(Provider input) {
        this(2048, input);
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

    @Override
    public void close() throws IOException {
        this._input.close();
    }

    public LineSeparator getDetectedLineEnding() {
        return LineSeparator.getLineEnding(this.eolCounts.getOrDefault(LineSeparator.CR, 0).intValue(), this.eolCounts.getOrDefault(LineSeparator.LF, 0).intValue(), this.eolCounts.getOrDefault(LineSeparator.CRLF, 0).intValue());
    }

    @Override
    public int read(char[] buffer, final int offset, int len) throws IOException {
        int i10 = len + offset;
        int i11 = offset;
        LineSeparator lineSeparator = null;
        while (true) {
            if (i11 >= i10) {
                break;
            }
            int nextBufferedChar = nextBufferedChar();
            if (nextBufferedChar >= 0) {
                char c10 = (char) nextBufferedChar;
                Optional<LineSeparator> lookup = LineSeparator.lookup(String.valueOf(c10));
                if (lookup.isPresent()) {
                    LineSeparator lineSeparator2 = lookup.get();
                    this.eolCounts.putIfAbsent(lineSeparator2, 0);
                    Map<LineSeparator, Integer> map = this.eolCounts;
                    map.put(lineSeparator2, Integer.valueOf(map.get(lineSeparator2).intValue() + 1));
                    if (lineSeparator2 == LineSeparator.LF && lineSeparator == LineSeparator.CR) {
                        Map<LineSeparator, Integer> map2 = this.eolCounts;
                        LineSeparator lineSeparator3 = LineSeparator.CRLF;
                        map2.putIfAbsent(lineSeparator3, 0);
                        Map<LineSeparator, Integer> map3 = this.eolCounts;
                        map3.put(lineSeparator3, Integer.valueOf(map3.get(lineSeparator3).intValue() + 1));
                    }
                    lineSeparator = lineSeparator2;
                } else {
                    lineSeparator = null;
                }
                buffer[i11] = c10;
                i11++;
            } else if (i11 == offset) {
                return -1;
            }
        }
        return i11 - offset;
    }

    public LineEndingProcessingProvider(int bufferSize, Provider input) {
        this._len = 0;
        this._pos = 0;
        this.eolCounts = new HashMap();
        this._input = input;
        this._data = new char[bufferSize];
    }
}
