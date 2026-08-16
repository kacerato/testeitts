package com.android.dx.io.instructions;

import java.util.HashMap;

public final class AddressMap {
    private final HashMap<Integer, Integer> map = new HashMap<>();

    public int get(int i10) {
        Integer num = this.map.get(Integer.valueOf(i10));
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    public void put(int i10, int i11) {
        this.map.put(Integer.valueOf(i10), Integer.valueOf(i11));
    }
}
