package com.jme3.input;

import java.util.List;

public interface Joystick {
    @Deprecated
    void assignAxis(String str, String str2, int i10);

    @Deprecated
    void assignButton(String str, int i10);

    List<JoystickAxis> getAxes();

    JoystickAxis getAxis(String str);

    int getAxisCount();

    JoystickButton getButton(String str);

    int getButtonCount();

    List<JoystickButton> getButtons();

    int getJoyId();

    String getName();

    JoystickAxis getPovXAxis();

    JoystickAxis getPovYAxis();

    JoystickAxis getXAxis();

    int getXAxisIndex();

    JoystickAxis getYAxis();

    int getYAxisIndex();

    void rumble(float f10);
}
