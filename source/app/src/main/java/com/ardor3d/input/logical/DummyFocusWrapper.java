package com.ardor3d.input.logical;

import com.ardor3d.input.FocusWrapper;

public class DummyFocusWrapper implements FocusWrapper {
    public static final DummyFocusWrapper INSTANCE = new DummyFocusWrapper();

    @Override
    public boolean getAndClearFocusLost() {
        return false;
    }

    @Override
    public void init() {
    }
}
