package com.ardor3d.input;

public interface MouseManager {
    GrabbedState getGrabbed();

    boolean isSetGrabbedSupported();

    boolean isSetPositionSupported();

    void setCursor(MouseCursor mouseCursor);

    void setGrabbed(GrabbedState grabbedState);

    void setPosition(int i10, int i11);
}
