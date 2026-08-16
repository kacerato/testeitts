package org.eclipse.jdt.internal.core.nd.db;

public class LargeBlock {
    public static final int CHILD_TABLE_OFFSET;
    public static final int ENTRIES_IN_CHILD_TABLE = 32;
    public static final int FOOTER_SIZE;
    public static final int HEADER_SIZE;
    public static final int NEXT_BLOCK_OFFSET;
    public static final int PARENT_OFFSET;
    public static final int PREV_BLOCK_OFFSET;
    public static final int SIZE_OFFSET = 0;
    public static final int SIZE_OF_SIZE_FIELD = 4;
    public static final int UNALLOCATED_HEADER_SIZE;

    static {
        int max = Math.max(4, 8);
        HEADER_SIZE = max;
        CHILD_TABLE_OFFSET = max;
        PARENT_OFFSET = max + 128;
        PREV_BLOCK_OFFSET = max + 132;
        NEXT_BLOCK_OFFSET = max + 136;
        UNALLOCATED_HEADER_SIZE = max + 140;
        FOOTER_SIZE = max;
    }
}
