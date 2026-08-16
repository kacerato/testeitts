package org.eclipse.jdt.internal.core.nd.db;

public class LongString implements IString {
    private static final int CHARS1 = 8;
    private static final int CHARSN = 4;
    private static final int LENGTH = 0;
    private static final int NEXT1 = 4;
    private static final int NEXTN = 0;
    private static final int NUM_CHARS1;
    private static final int NUM_CHARSN;

    private final Database f102543db;
    private int hash;
    private final long record;

    static {
        int i10 = Database.MAX_SINGLE_BLOCK_MALLOC_SIZE;
        NUM_CHARS1 = (i10 - 8) / 2;
        NUM_CHARSN = (i10 - 4) / 2;
    }

    public LongString(Database database, long j10) {
        this.f102543db = database;
        this.record = j10;
    }

    @Override
    public int compare(IString iString, boolean z10) throws IndexException {
        return ShortString.compare(getChars(), iString.getChars(), z10);
    }

    @Override
    public int compareCompatibleWithIgnoreCase(IString iString) throws IndexException {
        return ShortString.compareCompatibleWithIgnoreCase(getChars(), iString.getChars());
    }

    @Override
    public int comparePrefix(char[] cArr, boolean z10) throws IndexException {
        return ShortString.comparePrefix(getChars(), cArr, z10);
    }

    @Override
    public void delete() throws IndexException {
        int i10 = this.f102543db.getInt(this.record);
        boolean z10 = i10 < 0;
        int i11 = NUM_CHARS1;
        int i12 = NUM_CHARSN;
        if (z10) {
            i10 = -i10;
            i11 *= 2;
            i12 *= 2;
        }
        long recPtr = this.f102543db.getRecPtr(this.record + 4);
        this.f102543db.free(this.record, (short) 3);
        int i13 = i10 - i11;
        while (i13 > i12) {
            i13 -= i12;
            long recPtr2 = this.f102543db.getRecPtr(recPtr);
            this.f102543db.free(recPtr, (short) 3);
            recPtr = recPtr2;
        }
        this.f102543db.free(recPtr, (short) 3);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        try {
            if (!(obj instanceof LongString)) {
                return obj instanceof char[] ? compare((char[]) obj, true) == 0 : (obj instanceof String) && compare((String) obj, true) == 0;
            }
            LongString longString = (LongString) obj;
            return (this.f102543db == longString.f102543db && this.record == longString.record) || compare((IString) longString, true) == 0;
        } catch (IndexException e10) {
            Package.log(e10);
        }
        return false;
    }

    @Override
    public char[] getChars() throws IndexException {
        int i10 = this.f102543db.getInt(this.record);
        boolean z10 = i10 < 0;
        int i11 = NUM_CHARS1;
        int i12 = NUM_CHARSN;
        if (z10) {
            i10 = -i10;
            i11 *= 2;
            i12 *= 2;
        }
        int i13 = i11;
        int i14 = i12;
        char[] cArr = new char[i10];
        long j10 = this.record;
        Chunk chunk = this.f102543db.getChunk(j10);
        if (z10) {
            chunk.getCharsFromBytes(8 + j10, cArr, 0, i13);
        } else {
            chunk.getChars(8 + j10, cArr, 0, i13);
        }
        long j11 = this.record + 4;
        while (i13 < i10) {
            long recPtr = this.f102543db.getRecPtr(j11);
            int min = Math.min(i10 - i13, i14);
            Chunk chunk2 = this.f102543db.getChunk(recPtr);
            if (z10) {
                chunk2.getCharsFromBytes(recPtr + 4, cArr, i13, min);
            } else {
                chunk2.getChars(recPtr + 4, cArr, i13, min);
            }
            i13 += min;
            j11 = recPtr;
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
        return this.f102543db.getInt(this.record);
    }

    @Override
    public int compare(String str, boolean z10) throws IndexException {
        return ShortString.compare(getChars(), str.toCharArray(), z10);
    }

    @Override
    public int compareCompatibleWithIgnoreCase(char[] cArr) throws IndexException {
        return ShortString.compareCompatibleWithIgnoreCase(getChars(), cArr);
    }

    @Override
    public int compare(char[] cArr, boolean z10) throws IndexException {
        return ShortString.compare(getChars(), cArr, z10);
    }

    public LongString(Database database, char[] cArr, boolean z10) throws IndexException {
        int i10;
        int i11 = NUM_CHARS1;
        i11 = z10 ? i11 * 2 : i11;
        int i12 = NUM_CHARSN;
        int i13 = z10 ? i12 * 2 : i12;
        this.f102543db = database;
        long malloc = database.malloc(Database.MAX_SINGLE_BLOCK_MALLOC_SIZE, (short) 3);
        this.record = malloc;
        int length = cArr.length;
        database.putInt(malloc, z10 ? -length : length);
        Chunk chunk = database.getChunk(malloc);
        if (z10) {
            chunk.putCharsAsBytes(8 + malloc, cArr, 0, i11);
        } else {
            chunk.putChars(8 + malloc, cArr, 0, i11);
        }
        long j10 = malloc + 4;
        while (true) {
            i10 = length - i11;
            if (i10 <= i13) {
                break;
            }
            long malloc2 = database.malloc(Database.MAX_SINGLE_BLOCK_MALLOC_SIZE, (short) 3);
            database.putRecPtr(j10, malloc2);
            Chunk chunk2 = database.getChunk(malloc2);
            if (z10) {
                j10 = malloc2;
                chunk2.putCharsAsBytes(malloc2 + 4, cArr, i11, i13);
            } else {
                j10 = malloc2;
                chunk2.putChars(j10 + 4, cArr, i11, i13);
            }
            i11 += i13;
        }
        long malloc3 = database.malloc((z10 ? i10 : i10 * 2) + 4, (short) 3);
        database.putRecPtr(j10, malloc3);
        Chunk chunk3 = database.getChunk(malloc3);
        if (z10) {
            chunk3.putCharsAsBytes(malloc3 + 4, cArr, i11, i10);
        } else {
            chunk3.putChars(malloc3 + 4, cArr, i11, i10);
        }
    }
}
