package com.android.dx.dex.code;

import com.android.dx.util.FixedSizeList;

public final class CatchTable extends FixedSizeList implements Comparable<CatchTable> {
    public static final CatchTable EMPTY = new CatchTable(0);

    public static class Entry implements Comparable<Entry> {
        private final int end;
        private final CatchHandlerList handlers;
        private final int start;

        public Entry(int i10, int i11, CatchHandlerList catchHandlerList) {
            if (i10 < 0) {
                throw new IllegalArgumentException("start < 0");
            }
            if (i11 <= i10) {
                throw new IllegalArgumentException("end <= start");
            }
            if (catchHandlerList.isMutable()) {
                throw new IllegalArgumentException("handlers.isMutable()");
            }
            this.start = i10;
            this.end = i11;
            this.handlers = catchHandlerList;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Entry) && compareTo((Entry) obj) == 0;
        }

        public int getEnd() {
            return this.end;
        }

        public CatchHandlerList getHandlers() {
            return this.handlers;
        }

        public int getStart() {
            return this.start;
        }

        public int hashCode() {
            return (((this.start * 31) + this.end) * 31) + this.handlers.hashCode();
        }

        @Override
        public int compareTo(Entry entry) {
            int i10 = this.start;
            int i11 = entry.start;
            if (i10 < i11) {
                return -1;
            }
            if (i10 > i11) {
                return 1;
            }
            int i12 = this.end;
            int i13 = entry.end;
            if (i12 < i13) {
                return -1;
            }
            if (i12 > i13) {
                return 1;
            }
            return this.handlers.compareTo(entry.handlers);
        }
    }

    public CatchTable(int i10) {
        super(i10);
    }

    public Entry get(int i10) {
        return (Entry) get0(i10);
    }

    public void set(int i10, Entry entry) {
        set0(i10, entry);
    }

    @Override
    public int compareTo(CatchTable catchTable) {
        if (this == catchTable) {
            return 0;
        }
        int size = size();
        int size2 = catchTable.size();
        int min = Math.min(size, size2);
        for (int i10 = 0; i10 < min; i10++) {
            int compareTo = get(i10).compareTo(catchTable.get(i10));
            if (compareTo != 0) {
                return compareTo;
            }
        }
        if (size < size2) {
            return -1;
        }
        return size > size2 ? 1 : 0;
    }
}
