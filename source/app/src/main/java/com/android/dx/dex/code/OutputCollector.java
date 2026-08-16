package com.android.dx.dex.code;

import com.android.dx.dex.DexOptions;
import java.util.ArrayList;

public final class OutputCollector {
    private final OutputFinisher finisher;
    private ArrayList<DalvInsn> suffix;

    public OutputCollector(DexOptions dexOptions, int i10, int i11, int i12, int i13) {
        this.finisher = new OutputFinisher(dexOptions, i10, i12, i13);
        this.suffix = new ArrayList<>(i11);
    }

    private void appendSuffixToOutput() {
        int size = this.suffix.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.finisher.add(this.suffix.get(i10));
        }
        this.suffix = null;
    }

    public void add(DalvInsn dalvInsn) {
        this.finisher.add(dalvInsn);
    }

    public void addSuffix(DalvInsn dalvInsn) {
        this.suffix.add(dalvInsn);
    }

    public OutputFinisher getFinisher() {
        if (this.suffix == null) {
            throw new UnsupportedOperationException("already processed");
        }
        appendSuffixToOutput();
        return this.finisher;
    }

    public void reverseBranch(int i10, CodeAddress codeAddress) {
        this.finisher.reverseBranch(i10, codeAddress);
    }
}
