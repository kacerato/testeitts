package com.ardor3d.input.logical;

import com.ardor3d.input.MouseState;
import com.ardor3d.input.MouseWrapper;
import com.google.common.collect.InterfaceC12522g2;

public class DummyMouseWrapper implements MouseWrapper {
    public static final DummyMouseWrapper INSTANCE = new DummyMouseWrapper();
    InterfaceC12522g2<MouseState> empty = new InterfaceC12522g2<MouseState>() {
        @Override
        public boolean hasNext() {
            return false;
        }

        @Override
        public MouseState next() {
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public MouseState peek() {
            return null;
        }

        @Override
        public void remove() {
        }
    };

    @Override
    public InterfaceC12522g2<MouseState> getEvents() {
        return this.empty;
    }

    @Override
    public void init() {
    }
}
