package com.android.tools.r8.position;

public class TextPosition implements Position {
    public static final int UNKNOWN_COLUMN = -1;

    static final boolean f56163d = true;

    private final long f56164a;

    private final int f56165b;

    private final int f56166c;

    public TextPosition(long j10, int i10, int i11) {
        if (!f56163d && (j10 < 0 || i10 < 0 || (i11 < 1 && i11 != -1))) {
            throw new AssertionError();
        }
        this.f56164a = j10;
        this.f56165b = i10;
        this.f56166c = i11;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(TextPosition.class)) {
            TextPosition textPosition = (TextPosition) obj;
            if (this.f56164a == textPosition.f56164a && this.f56165b == textPosition.f56165b && this.f56166c == textPosition.f56166c) {
                return true;
            }
        }
        return false;
    }

    public int getColumn() {
        return this.f56166c;
    }

    @Override
    public String getDescription() {
        String str;
        int i10 = this.f56165b;
        int i11 = this.f56166c;
        if (i11 != -1) {
            str = ", column " + i11;
        } else {
            str = "";
        }
        return "line " + i10 + str;
    }

    public int getLine() {
        return this.f56165b;
    }

    public long getOffset() {
        return this.f56164a;
    }

    public int getOffsetAsInt() {
        long j10 = this.f56164a;
        if (j10 <= 2147483647L) {
            return (int) j10;
        }
        throw new RuntimeException("Expected offset to be an int, but was " + this.f56164a);
    }

    public int hashCode() {
        return (Long.hashCode(this.f56164a) ^ this.f56165b) ^ (this.f56166c << 16);
    }

    public String toString() {
        return "offset: " + this.f56164a + ", line: " + this.f56165b + ", column: " + this.f56166c;
    }
}
