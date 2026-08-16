package com.android.dx.dex.code;

import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstType;
import com.android.dx.util.FixedSizeList;
import com.android.dx.util.Hex;
import com.bumptech.glide.load.engine.GlideException;

public final class CatchHandlerList extends FixedSizeList implements Comparable<CatchHandlerList> {
    public static final CatchHandlerList EMPTY = new CatchHandlerList(0);

    public static class Entry implements Comparable<Entry> {
        private final CstType exceptionType;
        private final int handler;

        public Entry(CstType cstType, int i10) {
            if (i10 < 0) {
                throw new IllegalArgumentException("handler < 0");
            }
            if (cstType == null) {
                throw new NullPointerException("exceptionType == null");
            }
            this.handler = i10;
            this.exceptionType = cstType;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Entry) && compareTo((Entry) obj) == 0;
        }

        public CstType getExceptionType() {
            return this.exceptionType;
        }

        public int getHandler() {
            return this.handler;
        }

        public int hashCode() {
            return (this.handler * 31) + this.exceptionType.hashCode();
        }

        @Override
        public int compareTo(Entry entry) {
            int i10 = this.handler;
            int i11 = entry.handler;
            if (i10 < i11) {
                return -1;
            }
            if (i10 > i11) {
                return 1;
            }
            return this.exceptionType.compareTo((Constant) entry.exceptionType);
        }
    }

    public CatchHandlerList(int i10) {
        super(i10);
    }

    public boolean catchesAll() {
        int size = size();
        if (size == 0) {
            return false;
        }
        return get(size - 1).getExceptionType().equals(CstType.OBJECT);
    }

    public Entry get(int i10) {
        return (Entry) get0(i10);
    }

    public void set(int i10, CstType cstType, int i11) {
        set0(i10, new Entry(cstType, i11));
    }

    @Override
    public String toHuman() {
        return toHuman("", "");
    }

    @Override
    public int compareTo(CatchHandlerList catchHandlerList) {
        if (this == catchHandlerList) {
            return 0;
        }
        int size = size();
        int size2 = catchHandlerList.size();
        int min = Math.min(size, size2);
        for (int i10 = 0; i10 < min; i10++) {
            int compareTo = get(i10).compareTo(catchHandlerList.get(i10));
            if (compareTo != 0) {
                return compareTo;
            }
        }
        if (size < size2) {
            return -1;
        }
        return size > size2 ? 1 : 0;
    }

    public void set(int i10, Entry entry) {
        set0(i10, entry);
    }

    public String toHuman(String str, String str2) {
        StringBuilder sb2 = new StringBuilder(100);
        int size = size();
        sb2.append(str);
        sb2.append(str2);
        sb2.append("catch ");
        for (int i10 = 0; i10 < size; i10++) {
            Entry entry = get(i10);
            if (i10 != 0) {
                sb2.append(",\n");
                sb2.append(str);
                sb2.append(GlideException.a.f59088e);
            }
            if (i10 == size - 1 && catchesAll()) {
                sb2.append("<any>");
            } else {
                sb2.append(entry.getExceptionType().toHuman());
            }
            sb2.append(" -> ");
            sb2.append(Hex.u2or4(entry.getHandler()));
        }
        return sb2.toString();
    }
}
