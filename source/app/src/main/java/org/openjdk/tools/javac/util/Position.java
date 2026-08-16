package org.openjdk.tools.javac.util;

import java.util.BitSet;

public class Position {
    public static final int FIRSTCOLUMN = 1;
    public static final int FIRSTLINE = 1;
    public static final int FIRSTPOS = 0;
    public static final int LINESHIFT = 10;
    public static final int MAXCOLUMN = 1023;
    public static final int MAXLINE = 4194303;
    public static final int MAXPOS = Integer.MAX_VALUE;
    public static final int NOPOS = -1;

    public interface LineMap extends org.openjdk.source.tree.LineMap {
        int getColumnNumber(int i10);

        int getLineNumber(int i10);

        int getPosition(int i10, int i11);

        int getStartPosition(int i10);
    }

    public static class LineMapImpl implements LineMap {
        protected int[] startPosition;
        private int lastPosition = 0;
        private int lastLine = 1;

        private static int longToInt(long j10) {
            int i10 = (int) j10;
            if (i10 == j10) {
                return i10;
            }
            throw new IndexOutOfBoundsException();
        }

        public void build(char[] cArr, int i10) {
            int i11;
            int[] iArr = new int[i10];
            int i12 = 0;
            int i13 = 0;
            while (i12 < i10) {
                int i14 = i13 + 1;
                iArr[i13] = i12;
                do {
                    char c10 = cArr[i12];
                    if (c10 == '\r' || c10 == '\n') {
                        i12 = (c10 == '\r' && (i11 = i12 + 1) < i10 && cArr[i11] == '\n') ? i12 + 2 : i12 + 1;
                    } else {
                        if (c10 == '\t') {
                            setTabPosition(i12);
                        }
                        i12++;
                    }
                    i13 = i14;
                } while (i12 < i10);
                i13 = i14;
            }
            int[] iArr2 = new int[i13];
            this.startPosition = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, i13);
        }

        @Override
        public int getColumnNumber(int i10) {
            return (i10 - this.startPosition[getLineNumber(i10) - 1]) + 1;
        }

        @Override
        public int getLineNumber(int i10) {
            if (i10 == this.lastPosition) {
                return this.lastLine;
            }
            this.lastPosition = i10;
            int length = this.startPosition.length - 1;
            int i11 = 0;
            while (i11 <= length) {
                int i12 = (i11 + length) >> 1;
                int i13 = this.startPosition[i12];
                if (i13 < i10) {
                    i11 = i12 + 1;
                } else {
                    if (i13 <= i10) {
                        int i14 = i12 + 1;
                        this.lastLine = i14;
                        return i14;
                    }
                    length = i12 - 1;
                }
            }
            this.lastLine = i11;
            return i11;
        }

        @Override
        public int getPosition(int i10, int i11) {
            return (this.startPosition[i10 - 1] + i11) - 1;
        }

        @Override
        public int getStartPosition(int i10) {
            return this.startPosition[i10 - 1];
        }

        public void setTabPosition(int i10) {
        }

        @Override
        public long getColumnNumber(long j10) {
            return getColumnNumber(longToInt(j10));
        }

        @Override
        public long getPosition(long j10, long j11) {
            return getPosition(longToInt(j10), longToInt(j11));
        }

        @Override
        public long getStartPosition(long j10) {
            return getStartPosition(longToInt(j10));
        }

        @Override
        public long getLineNumber(long j10) {
            return getLineNumber(longToInt(j10));
        }
    }

    public static class LineTabMapImpl extends LineMapImpl {
        private BitSet tabMap;

        public LineTabMapImpl(int i10) {
            this.tabMap = new BitSet(i10);
        }

        @Override
        public long getColumnNumber(long j10) {
            return super.getColumnNumber(j10);
        }

        @Override
        public int getLineNumber(int i10) {
            return super.getLineNumber(i10);
        }

        @Override
        public long getPosition(long j10, long j11) {
            return super.getPosition(j10, j11);
        }

        @Override
        public int getStartPosition(int i10) {
            return super.getStartPosition(i10);
        }

        @Override
        public void setTabPosition(int i10) {
            this.tabMap.set(i10);
        }

        @Override
        public int getColumnNumber(int i10) {
            int i11 = 0;
            for (int i12 = this.startPosition[getLineNumber(i10) - 1]; i12 < i10; i12++) {
                i11 = this.tabMap.get(i12) ? ((i11 / 8) * 8) + 8 : i11 + 1;
            }
            return i11 + 1;
        }

        @Override
        public long getLineNumber(long j10) {
            return super.getLineNumber(j10);
        }

        @Override
        public int getPosition(int i10, int i11) {
            int i12 = this.startPosition[i10 - 1];
            int i13 = i11 - 1;
            int i14 = 0;
            while (i14 < i13) {
                i12++;
                i14 = this.tabMap.get(i12) ? ((i14 / 8) * 8) + 8 : i14 + 1;
            }
            return i12;
        }

        @Override
        public long getStartPosition(long j10) {
            return super.getStartPosition(j10);
        }
    }

    private Position() {
    }

    public static int encodePosition(int i10, int i11) {
        if (i10 < 1) {
            throw new IllegalArgumentException("line must be greater than 0");
        }
        if (i11 < 1) {
            throw new IllegalArgumentException("column must be greater than 0");
        }
        if (i10 > 4194303 || i11 > 1023) {
            return -1;
        }
        return (i10 << 10) + i11;
    }

    public static LineMap makeLineMap(char[] cArr, int i10, boolean z10) {
        LineMapImpl lineTabMapImpl = z10 ? new LineTabMapImpl(i10) : new LineMapImpl();
        lineTabMapImpl.build(cArr, i10);
        return lineTabMapImpl;
    }
}
