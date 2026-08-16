package com.android.dx.ssa.back;

import b3.s;
import com.android.dx.ssa.SetFactory;
import com.android.dx.util.IntSet;
import java.util.ArrayList;

public class InterferenceGraph {
    private final ArrayList<IntSet> interference;

    public InterferenceGraph(int i10) {
        this.interference = new ArrayList<>(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            this.interference.add(SetFactory.makeInterferenceSet(i10));
        }
    }

    private void ensureCapacity(int i10) {
        this.interference.ensureCapacity(i10);
        for (int size = this.interference.size(); size < i10; size++) {
            this.interference.add(SetFactory.makeInterferenceSet(i10));
        }
    }

    public void add(int i10, int i11) {
        ensureCapacity(Math.max(i10, i11) + 1);
        this.interference.get(i10).add(i11);
        this.interference.get(i11).add(i10);
    }

    public void dumpToStdout() {
        int size = this.interference.size();
        for (int i10 = 0; i10 < size; i10++) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Reg " + i10 + s.f32937c + this.interference.get(i10).toString());
            System.out.println(sb2.toString());
        }
    }

    public void mergeInterferenceSet(int i10, IntSet intSet) {
        if (i10 < this.interference.size()) {
            intSet.merge(this.interference.get(i10));
        }
    }
}
