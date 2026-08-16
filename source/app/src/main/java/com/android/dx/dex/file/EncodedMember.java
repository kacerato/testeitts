package com.android.dx.dex.file;

import com.android.dx.rop.cst.CstString;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.ToHuman;
import java.io.PrintWriter;

public abstract class EncodedMember implements ToHuman {
    private final int accessFlags;

    public EncodedMember(int i10) {
        this.accessFlags = i10;
    }

    public abstract void addContents(DexFile dexFile);

    public abstract void debugPrint(PrintWriter printWriter, boolean z10);

    public abstract int encode(DexFile dexFile, AnnotatedOutput annotatedOutput, int i10, int i11);

    public final int getAccessFlags() {
        return this.accessFlags;
    }

    public abstract CstString getName();
}
