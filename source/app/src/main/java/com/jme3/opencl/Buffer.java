package com.jme3.opencl;

import com.jme3.opencl.OpenCLObject;
import java.nio.ByteBuffer;

public abstract class Buffer extends AbstractOpenCLObject {

    public static class AsyncMapping {
        public final ByteBuffer buffer;
        public final Event event;

        public AsyncMapping(Event event, ByteBuffer byteBuffer) {
            this.event = event;
            this.buffer = byteBuffer;
        }

        public ByteBuffer getBuffer() {
            return this.buffer;
        }

        public Event getEvent() {
            return this.event;
        }
    }

    public Buffer(OpenCLObject.ObjectReleaser objectReleaser) {
        super(objectReleaser);
    }

    public abstract Event acquireBufferForSharingAsync(CommandQueue commandQueue);

    public void acquireBufferForSharingNoEvent(CommandQueue commandQueue) {
        acquireBufferForSharingAsync(commandQueue).release();
    }

    public void copyTo(CommandQueue commandQueue, Buffer buffer, long j10) {
        copyTo(commandQueue, buffer, j10, 0L, 0L);
    }

    public abstract void copyTo(CommandQueue commandQueue, Buffer buffer, long j10, long j11, long j12);

    public Event copyToAsync(CommandQueue commandQueue, Buffer buffer, long j10) {
        return copyToAsync(commandQueue, buffer, j10, 0L, 0L);
    }

    public abstract Event copyToAsync(CommandQueue commandQueue, Buffer buffer, long j10, long j11, long j12);

    public abstract Event copyToImageAsync(CommandQueue commandQueue, Image image, long j10, long[] jArr, long[] jArr2);

    public abstract Event fillAsync(CommandQueue commandQueue, ByteBuffer byteBuffer, long j10, long j11);

    public abstract MemoryAccess getMemoryAccessFlags();

    public abstract long getSize();

    public abstract ByteBuffer map(CommandQueue commandQueue, long j10, long j11, MappingAccess mappingAccess);

    public ByteBuffer map(CommandQueue commandQueue, long j10, MappingAccess mappingAccess) {
        return map(commandQueue, j10, 0L, mappingAccess);
    }

    public abstract AsyncMapping mapAsync(CommandQueue commandQueue, long j10, long j11, MappingAccess mappingAccess);

    public AsyncMapping mapAsync(CommandQueue commandQueue, long j10, MappingAccess mappingAccess) {
        return mapAsync(commandQueue, j10, 0L, mappingAccess);
    }

    public void read(CommandQueue commandQueue, ByteBuffer byteBuffer, long j10) {
        read(commandQueue, byteBuffer, j10, 0L);
    }

    public abstract void read(CommandQueue commandQueue, ByteBuffer byteBuffer, long j10, long j11);

    public Event readAsync(CommandQueue commandQueue, ByteBuffer byteBuffer, long j10) {
        return readAsync(commandQueue, byteBuffer, j10, 0L);
    }

    public abstract Event readAsync(CommandQueue commandQueue, ByteBuffer byteBuffer, long j10, long j11);

    public abstract Event releaseBufferForSharingAsync(CommandQueue commandQueue);

    public void releaseBufferForSharingNoEvent(CommandQueue commandQueue) {
        releaseBufferForSharingAsync(commandQueue).release();
    }

    public String toString() {
        return "Buffer (" + getSize() + "B)";
    }

    public abstract void unmap(CommandQueue commandQueue, ByteBuffer byteBuffer);

    public void write(CommandQueue commandQueue, ByteBuffer byteBuffer, long j10) {
        write(commandQueue, byteBuffer, j10, 0L);
    }

    public abstract void write(CommandQueue commandQueue, ByteBuffer byteBuffer, long j10, long j11);

    public Event writeAsync(CommandQueue commandQueue, ByteBuffer byteBuffer, long j10) {
        return writeAsync(commandQueue, byteBuffer, j10, 0L);
    }

    public abstract Event writeAsync(CommandQueue commandQueue, ByteBuffer byteBuffer, long j10, long j11);

    public void copyTo(CommandQueue commandQueue, Buffer buffer) {
        copyTo(commandQueue, buffer, getSize());
    }

    public Event copyToAsync(CommandQueue commandQueue, Buffer buffer) {
        return copyToAsync(commandQueue, buffer, getSize());
    }

    public ByteBuffer map(CommandQueue commandQueue, MappingAccess mappingAccess) {
        return map(commandQueue, getSize(), mappingAccess);
    }

    public AsyncMapping mapAsync(CommandQueue commandQueue, MappingAccess mappingAccess) {
        return mapAsync(commandQueue, getSize(), 0L, mappingAccess);
    }

    public void read(CommandQueue commandQueue, ByteBuffer byteBuffer) {
        read(commandQueue, byteBuffer, getSize());
    }

    public Event readAsync(CommandQueue commandQueue, ByteBuffer byteBuffer) {
        return readAsync(commandQueue, byteBuffer, getSize());
    }

    public void write(CommandQueue commandQueue, ByteBuffer byteBuffer) {
        write(commandQueue, byteBuffer, getSize());
    }

    public Event writeAsync(CommandQueue commandQueue, ByteBuffer byteBuffer) {
        return writeAsync(commandQueue, byteBuffer, getSize());
    }

    @Override
    public Buffer register() {
        super.register();
        return this;
    }
}
