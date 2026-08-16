package com.jme3.input.dummy;

import com.jme3.input.KeyInput;

public class DummyKeyInput extends DummyInput implements KeyInput {
    public int getKeyCount() {
        if (this.inited) {
            return 0;
        }
        throw new IllegalStateException("Input not initialized.");
    }

    @Override
    public String getKeyName(int i10) {
        return "Unknown";
    }
}
