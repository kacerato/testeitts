package com.android.apksig.internal.zip;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class EocdRecord {
    private static final int CD_OFFSET_OFFSET = 16;
    private static final int CD_RECORD_COUNT_ON_DISK_OFFSET = 8;
    private static final int CD_RECORD_COUNT_TOTAL_OFFSET = 10;
    private static final int CD_SIZE_OFFSET = 12;

    public static ByteBuffer createWithModifiedCentralDirectoryInfo(ByteBuffer byteBuffer, int i10, long j10, long j11) {
        ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.remaining());
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.put(byteBuffer.slice());
        allocate.flip();
        ZipUtils.setUnsignedInt16(allocate, 8, i10);
        ZipUtils.setUnsignedInt16(allocate, 10, i10);
        ZipUtils.setUnsignedInt32(allocate, 12, j10);
        ZipUtils.setUnsignedInt32(allocate, 16, j11);
        return allocate;
    }

    public static ByteBuffer createWithPaddedComment(ByteBuffer byteBuffer, int i10) {
        ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.remaining() + i10);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.put(byteBuffer.slice());
        allocate.rewind();
        ZipUtils.updateZipEocdCommentLen(allocate);
        return allocate;
    }
}
