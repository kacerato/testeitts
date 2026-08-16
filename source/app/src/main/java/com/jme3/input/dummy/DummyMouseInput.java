package com.jme3.input.dummy;

import com.jme3.cursors.plugins.JmeCursor;
import com.jme3.input.MouseInput;

public class DummyMouseInput extends DummyInput implements MouseInput {
    @Override
    public int getButtonCount() {
        return 0;
    }

    @Override
    public void setCursorVisible(boolean z10) {
        if (!this.inited) {
            throw new IllegalStateException("Input not initialized.");
        }
    }

    @Override
    public void setNativeCursor(JmeCursor jmeCursor) {
    }
}
