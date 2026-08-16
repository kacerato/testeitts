package org.eclipse.jdt.internal.core.nd.db;

import org.eclipse.jdt.internal.core.nd.util.CharArrayUtils;

public class ShortString implements IString {
    private static final int CHARS = 4;
    private static final int LENGTH = 0;
    public static final int MAX_BYTE_LENGTH = Database.MAX_SINGLE_BLOCK_MALLOC_SIZE - 4;

    private final Database f102546db;
    private int hash;
    private final long record;

    public ShortString(Database database, long j10) {
        this.f102546db = database;
        this.record = j10;
    }

    public static int compare(char[] cArr, char[] cArr2, boolean z10) {
        int min = Math.min(cArr.length, cArr2.length);
        for (int i10 = 0; i10 < min; i10++) {
            int compareChars = compareChars(cArr[i10], cArr2[i10], z10);
            if (compareChars != 0) {
                return compareChars;
            }
        }
        return cArr.length - cArr2.length;
    }

    public static int compareChars(char c10, char c11, boolean z10) {
        if (z10) {
            if (c10 < c11) {
                return -1;
            }
            return c10 > c11 ? 1 : 0;
        }
        if (c10 == c11) {
            return 0;
        }
        if (c10 >= 'a' && c10 <= 'z') {
            c10 = (char) (c10 - ' ');
        }
        if (c11 >= 'a' && c11 <= 'z') {
            c11 = (char) (c11 - ' ');
        }
        if (c10 < c11) {
            return -1;
        }
        return c10 > c11 ? 1 : 0;
    }

    @Override
    public int compareCompatibleWithIgnoreCase(IString iString) throws IndexException {
        return compareCompatibleWithIgnoreCase(iString.getChars());
    }

    @Override
    public int comparePrefix(char[] cArr, boolean z10) throws IndexException {
        return comparePrefix(getChars(), cArr, z10);
    }

    @Override
    public void delete() throws IndexException {
        this.f102546db.free(this.record, (short) 4);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        try {
        } catch (IndexException e10) {
            Package.log(e10);
        }
        if (obj instanceof ShortString) {
            ShortString shortString = (ShortString) obj;
            Database database = this.f102546db;
            if (database == shortString.f102546db && this.record == shortString.record) {
                return true;
            }
            if (database.getChunk(this.record).getInt(this.record) != shortString.f102546db.getChunk(shortString.record).getInt(shortString.record)) {
                return false;
            }
            return CharArrayUtils.equals(getChars(), shortString.getChars());
        }
        if (obj instanceof char[]) {
            char[] cArr = (char[]) obj;
            if (length() != cArr.length) {
                return false;
            }
            return CharArrayUtils.equals(getChars(), cArr);
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (length() != str.length()) {
                return false;
            }
            return CharArrayUtils.equals(getChars(), str.toCharArray());
        }
        return false;
    }

    @Override
    public char[] getChars() throws IndexException {
        Chunk chunk = this.f102546db.getChunk(this.record);
        int i10 = chunk.getInt(this.record);
        int abs = Math.abs(i10);
        char[] cArr = new char[abs];
        if (i10 < 0) {
            chunk.getCharsFromBytes(4 + this.record, cArr, 0, abs);
        } else {
            chunk.getChars(4 + this.record, cArr, 0, abs);
        }
        return cArr;
    }

    @Override
    public long getRecord() {
        return this.record;
    }

    @Override
    public String getString() throws IndexException {
        return new String(getChars());
    }

    public int hashCode() {
        int i10 = this.hash;
        if (i10 == 0) {
            for (char c10 : getChars()) {
                i10 = (i10 * 31) + c10;
            }
            this.hash = i10;
        }
        return i10;
    }

    @Override
    public int length() {
        return Math.abs(this.f102546db.getInt(this.record));
    }

    public String toString() {
        try {
            return getString();
        } catch (IndexException unused) {
            return super.toString();
        }
    }

    public static int comparePrefix(char[] cArr, char[] cArr2, boolean z10) {
        int min = Math.min(cArr.length, cArr2.length);
        for (int i10 = 0; i10 < min; i10++) {
            int compareChars = compareChars(cArr[i10], cArr2[i10], z10);
            if (compareChars != 0) {
                return compareChars;
            }
        }
        return cArr.length < cArr2.length ? -1 : 0;
    }

    @Override
    public int compareCompatibleWithIgnoreCase(char[] cArr) throws IndexException {
        return compareCompatibleWithIgnoreCase(getChars(), cArr);
    }

    public static int compareCompatibleWithIgnoreCase(char[] cArr, char[] cArr2) {
        int min = Math.min(cArr.length, cArr2.length);
        int i10 = 0;
        for (int i11 = 0; i11 < min; i11++) {
            char c10 = cArr[i11];
            char c11 = cArr2[i11];
            if (c10 != c11) {
                int compareChars = compareChars(c10, c11, false);
                if (compareChars != 0) {
                    return compareChars;
                }
                if (i10 == 0) {
                    i10 = c10 < c11 ? -1 : 1;
                }
            }
        }
        int length = cArr.length - cArr2.length;
        return length != 0 ? length : i10;
    }

    public ShortString(Database database, char[] cArr, boolean z10) throws IndexException {
        int length = cArr.length;
        this.f102546db = database;
        long malloc = database.malloc((z10 ? length : length * 2) + 4, (short) 4);
        this.record = malloc;
        Chunk chunk = database.getChunk(malloc);
        chunk.putInt(malloc, z10 ? -length : length);
        long j10 = malloc + 4;
        if (z10) {
            chunk.putCharsAsBytes(j10, cArr, 0, length);
        } else {
            chunk.putChars(j10, cArr, 0, length);
        }
    }

    @Override
    public int compare(char[] cArr, boolean z10) throws IndexException {
        return compare(getChars(), cArr, z10);
    }

    @Override
    public int compare(IString iString, boolean z10) throws IndexException {
        return compare(getChars(), iString.getChars(), z10);
    }

    @Override
    public int compare(String str, boolean z10) throws IndexException {
        return compare(getChars(), str.toCharArray(), z10);
    }
}
