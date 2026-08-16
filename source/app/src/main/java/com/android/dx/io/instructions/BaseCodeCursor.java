package com.android.dx.io.instructions;

public abstract class BaseCodeCursor implements CodeCursor {
    private final AddressMap baseAddressMap = new AddressMap();
    private int cursor = 0;

    public final void advance(int i10) {
        this.cursor += i10;
    }

    @Override
    public final int baseAddressForCursor() {
        int i10 = this.baseAddressMap.get(this.cursor);
        return i10 >= 0 ? i10 : this.cursor;
    }

    @Override
    public final int cursor() {
        return this.cursor;
    }

    @Override
    public final void setBaseAddress(int i10, int i11) {
        this.baseAddressMap.put(i10, i11);
    }
}
