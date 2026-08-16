package com.ardor3d.input.logical;

import com.ardor3d.input.ControllerEvent;
import com.ardor3d.input.ControllerState;
import com.ardor3d.input.ControllerWrapper;
import com.google.common.collect.InterfaceC12522g2;

public class DummyControllerWrapper implements ControllerWrapper {
    public static final DummyControllerWrapper INSTANCE = new DummyControllerWrapper();
    InterfaceC12522g2<ControllerEvent> empty = new InterfaceC12522g2<ControllerEvent>() {
        @Override
        public boolean hasNext() {
            return false;
        }

        @Override
        public ControllerEvent next() {
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ControllerEvent peek() {
            return null;
        }

        @Override
        public void remove() {
        }
    };

    @Override
    public ControllerState getBlankState() {
        return new ControllerState();
    }

    @Override
    public InterfaceC12522g2<ControllerEvent> getEvents() {
        return this.empty;
    }

    @Override
    public void init() {
    }
}
