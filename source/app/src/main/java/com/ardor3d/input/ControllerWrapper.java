package com.ardor3d.input;

import com.google.common.collect.InterfaceC12522g2;

public interface ControllerWrapper {
    ControllerState getBlankState();

    InterfaceC12522g2<ControllerEvent> getEvents();

    void init();
}
