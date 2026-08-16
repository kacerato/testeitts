package org.luaj.vm2.compiler;

class InstructionPtr {
    final int[] code;
    final int idx;

    public InstructionPtr(int[] iArr, int i10) {
        this.code = iArr;
        this.idx = i10;
    }

    public int get() {
        return this.code[this.idx];
    }

    public void set(int i10) {
        this.code[this.idx] = i10;
    }
}
