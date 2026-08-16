package com.android.dx.io.instructions;

public interface CodeCursor {
    int baseAddressForCursor();

    int cursor();

    void setBaseAddress(int i10, int i11);
}
