package com.jme3.input;

public interface JoystickConnectionListener {
    void onConnected(Joystick joystick);

    void onDisconnected(Joystick joystick);
}
