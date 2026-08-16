package org.tukaani.xz.check;

public class None extends Check {
    public None() {
        this.size = 0;
        this.name = "None";
    }

    @Override
    public byte[] finish() {
        return new byte[0];
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
    }
}
