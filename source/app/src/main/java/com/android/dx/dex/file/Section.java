package com.android.dx.dex.file;

import b3.s;
import com.android.dx.util.AnnotatedOutput;
import java.util.Collection;

public abstract class Section {
    private final int alignment;
    private final DexFile file;
    private int fileOffset;
    private final String name;
    private boolean prepared;

    public Section(String str, DexFile dexFile, int i10) {
        if (dexFile == null) {
            throw new NullPointerException("file == null");
        }
        validateAlignment(i10);
        this.name = str;
        this.file = dexFile;
        this.alignment = i10;
        this.fileOffset = -1;
        this.prepared = false;
    }

    public static void validateAlignment(int i10) {
        if (i10 <= 0 || (i10 & (i10 - 1)) != 0) {
            throw new IllegalArgumentException("invalid alignment");
        }
    }

    public final void align(AnnotatedOutput annotatedOutput) {
        annotatedOutput.alignTo(this.alignment);
    }

    public abstract int getAbsoluteItemOffset(Item item);

    public final int getAbsoluteOffset(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("relative < 0");
        }
        int i11 = this.fileOffset;
        if (i11 >= 0) {
            return i11 + i10;
        }
        throw new RuntimeException("fileOffset not yet set");
    }

    public final int getAlignment() {
        return this.alignment;
    }

    public final DexFile getFile() {
        return this.file;
    }

    public final int getFileOffset() {
        int i10 = this.fileOffset;
        if (i10 >= 0) {
            return i10;
        }
        throw new RuntimeException("fileOffset not set");
    }

    public final String getName() {
        return this.name;
    }

    public abstract Collection<? extends Item> items();

    public final void prepare() {
        throwIfPrepared();
        prepare0();
        this.prepared = true;
    }

    public abstract void prepare0();

    public final int setFileOffset(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("fileOffset < 0");
        }
        if (this.fileOffset >= 0) {
            throw new RuntimeException("fileOffset already set");
        }
        int i11 = this.alignment - 1;
        int i12 = (i10 + i11) & (~i11);
        this.fileOffset = i12;
        return i12;
    }

    public final void throwIfNotPrepared() {
        if (!this.prepared) {
            throw new RuntimeException("not prepared");
        }
    }

    public final void throwIfPrepared() {
        if (this.prepared) {
            throw new RuntimeException("already prepared");
        }
    }

    public abstract int writeSize();

    public final void writeTo(AnnotatedOutput annotatedOutput) {
        throwIfNotPrepared();
        align(annotatedOutput);
        int cursor = annotatedOutput.getCursor();
        int i10 = this.fileOffset;
        if (i10 < 0) {
            this.fileOffset = cursor;
        } else if (i10 != cursor) {
            throw new RuntimeException("alignment mismatch: for " + ((Object) this) + ", at " + cursor + ", but expected " + this.fileOffset);
        }
        if (annotatedOutput.annotates()) {
            if (this.name != null) {
                annotatedOutput.annotate(0, "\n" + this.name + s.f32937c);
            } else if (cursor != 0) {
                annotatedOutput.annotate(0, "\n");
            }
        }
        writeTo0(annotatedOutput);
    }

    public abstract void writeTo0(AnnotatedOutput annotatedOutput);
}
