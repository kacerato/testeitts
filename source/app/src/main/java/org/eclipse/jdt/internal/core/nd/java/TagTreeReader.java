package org.eclipse.jdt.internal.core.nd.java;

import android.os.DropBoxManager;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.db.IndexException;

public abstract class TagTreeReader {
    public static final int[] UNUSED_RESULT = new int[1];
    private TagHandler<?>[] readers = new TagHandler[256];
    private Map<TagHandler<?>, Integer> values = new HashMap();

    public static abstract class FixedSizeTagHandler<T> extends TagHandler<T> {
        public void destruct(Nd nd2, long j10) {
        }

        public abstract int getSize();

        @Override
        public final int getSize(Nd nd2, T t10, TagTreeReader tagTreeReader) {
            return getSize();
        }

        public abstract T read(Nd nd2, long j10);

        @Override
        public final T read(Nd nd2, long j10, TagTreeReader tagTreeReader, int[] iArr) {
            iArr[0] = getSize();
            return read(nd2, j10);
        }

        public abstract void write(Nd nd2, long j10, T t10);

        @Override
        public final void write(Nd nd2, long j10, TagTreeReader tagTreeReader, T t10, int[] iArr) {
            iArr[0] = getSize();
            write(nd2, j10, t10);
        }

        @Override
        public final void destruct(Nd nd2, long j10, TagTreeReader tagTreeReader) {
            destruct(nd2, j10);
        }
    }

    public static abstract class TagHandler<T> {
        public void destruct(Nd nd2, long j10, TagTreeReader tagTreeReader) {
        }

        public abstract int getSize(Nd nd2, T t10, TagTreeReader tagTreeReader);

        public abstract T read(Nd nd2, long j10, TagTreeReader tagTreeReader, int[] iArr);

        public abstract void write(Nd nd2, long j10, TagTreeReader tagTreeReader, T t10, int[] iArr);
    }

    public final void add(byte b10, TagHandler<?> tagHandler) {
        this.readers[b10] = tagHandler;
        this.values.put(tagHandler, Integer.valueOf(b10));
    }

    public final void destruct(Nd nd2, long j10) {
        byte b10 = nd2.getDB().getByte(j10);
        long j11 = 1 + j10;
        TagHandler<?> tagHandler = this.readers[b10];
        if (tagHandler != null) {
            tagHandler.destruct(nd2, j11, this);
            return;
        }
        throw nd2.describeProblem().addProblemAddress(DropBoxManager.EXTRA_TAG, j10, 1).build("Found unknown tag with value " + ((int) b10) + " at address " + j10);
    }

    public abstract byte getKeyFor(Object obj);

    public final int getSize(Nd nd2, Object obj) {
        byte keyFor = getKeyFor(obj);
        TagHandler<?> tagHandler = this.readers[keyFor];
        if (tagHandler != null) {
            return tagHandler.getSize(nd2, obj, this);
        }
        throw new IndexException("Attempted to get size of object " + obj.toString() + " with unknown key " + ((int) keyFor));
    }

    public final Object read(Nd nd2, long j10) {
        return read(nd2, j10, UNUSED_RESULT);
    }

    public final void write(Nd nd2, long j10, Object obj) {
        write(nd2, j10, obj, UNUSED_RESULT);
    }

    public final Object read(Nd nd2, long j10, int[] iArr) {
        byte b10 = nd2.getDB().getByte(j10);
        long j11 = j10 + 1;
        TagHandler<?> tagHandler = this.readers[b10];
        if (tagHandler != null) {
            return tagHandler.read(nd2, j11, this, iArr);
        }
        throw nd2.describeProblem().addProblemAddress(DropBoxManager.EXTRA_TAG, j10, 1).build("Found unknown tag with value " + ((int) b10) + " at address " + j10);
    }

    public final void write(Nd nd2, long j10, Object obj, int[] iArr) {
        byte keyFor = getKeyFor(obj);
        TagHandler<?> tagHandler = this.readers[keyFor];
        if (tagHandler != null) {
            tagHandler.write(nd2, j10, this, obj, iArr);
            return;
        }
        throw nd2.describeProblem().build("Invalid key " + ((int) keyFor) + " returned from getKeyFor(...)");
    }
}
