package com.ardor3d.input.logical;

import com.ardor3d.input.KeyEvent;
import com.ardor3d.input.KeyboardWrapper;
import com.google.common.collect.InterfaceC12522g2;

public class DummyKeyboardWrapper implements KeyboardWrapper {
    public static final DummyKeyboardWrapper INSTANCE = new DummyKeyboardWrapper();
    InterfaceC12522g2<KeyEvent> empty = new InterfaceC12522g2<KeyEvent>() {
        @Override
        public boolean hasNext() {
            return false;
        }

        @Override
        public KeyEvent next() {
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public KeyEvent peek() {
            return null;
        }

        @Override
        public void remove() {
        }
    };

    @Override
    public InterfaceC12522g2<KeyEvent> getEvents() {
        return this.empty;
    }

    @Override
    public void init() {
    }
}
