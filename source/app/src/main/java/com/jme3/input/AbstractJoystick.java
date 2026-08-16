package com.jme3.input;

import com.jme3.input.controls.JoyAxisTrigger;
import com.jme3.input.controls.JoyButtonTrigger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class AbstractJoystick implements Joystick {
    private final List<JoystickAxis> axes = new ArrayList();
    private final List<JoystickButton> buttons = new ArrayList();
    private final InputManager inputManager;
    private final int joyId;
    private final JoyInput joyInput;
    private final String name;

    public AbstractJoystick(InputManager inputManager, JoyInput joyInput, int i10, String str) {
        this.inputManager = inputManager;
        this.joyInput = joyInput;
        this.joyId = i10;
        this.name = str;
    }

    public void addAxis(JoystickAxis joystickAxis) {
        this.axes.add(joystickAxis);
    }

    public void addButton(JoystickButton joystickButton) {
        this.buttons.add(joystickButton);
    }

    @Override
    @Deprecated
    public void assignAxis(String str, String str2, int i10) {
        if (i10 == 254) {
            i10 = getPovXAxis().getAxisId();
        } else if (i10 == 255) {
            i10 = getPovYAxis().getAxisId();
        }
        this.inputManager.addMapping(str, new JoyAxisTrigger(this.joyId, i10, false));
        this.inputManager.addMapping(str2, new JoyAxisTrigger(this.joyId, i10, true));
    }

    @Override
    @Deprecated
    public void assignButton(String str, int i10) {
        if (i10 < 0 || i10 >= getButtonCount()) {
            throw new IllegalArgumentException();
        }
        this.inputManager.addMapping(str, new JoyButtonTrigger(this.joyId, i10));
    }

    @Override
    public List<JoystickAxis> getAxes() {
        return Collections.unmodifiableList(this.axes);
    }

    @Override
    public JoystickAxis getAxis(String str) {
        for (JoystickAxis joystickAxis : this.axes) {
            if (joystickAxis.getLogicalId().equals(str)) {
                return joystickAxis;
            }
        }
        return null;
    }

    @Override
    public int getAxisCount() {
        return this.axes.size();
    }

    @Override
    public JoystickButton getButton(String str) {
        for (JoystickButton joystickButton : this.buttons) {
            if (joystickButton.getLogicalId().equals(str)) {
                return joystickButton;
            }
        }
        return null;
    }

    @Override
    public int getButtonCount() {
        return this.buttons.size();
    }

    @Override
    public List<JoystickButton> getButtons() {
        return Collections.unmodifiableList(this.buttons);
    }

    public InputManager getInputManager() {
        return this.inputManager;
    }

    @Override
    public int getJoyId() {
        return this.joyId;
    }

    public JoyInput getJoyInput() {
        return this.joyInput;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public int getXAxisIndex() {
        return getXAxis().getAxisId();
    }

    @Override
    public int getYAxisIndex() {
        return getYAxis().getAxisId();
    }

    @Override
    public void rumble(float f10) {
        this.joyInput.setJoyRumble(this.joyId, f10);
    }

    public String toString() {
        return "Joystick[name=" + this.name + ", id=" + this.joyId + ", buttons=" + getButtonCount() + ", axes=" + getAxisCount() + "]";
    }
}
