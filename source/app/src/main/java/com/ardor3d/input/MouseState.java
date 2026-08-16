package com.ardor3d.input;

import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.AbstractC12549n1;
import com.google.common.collect.C12508d0;
import com.google.common.collect.Q1;
import com.google.common.collect.V1;
import java.util.EnumMap;
import java.util.EnumSet;
import org.eclipse.jdt.internal.core.JavaElement;

public class MouseState {
    private final AbstractC12529i1<MouseButton, ButtonState> _buttonStates;
    private final AbstractC12549n1<MouseButton> _clickCounts;
    private final int _dwheel;
    private final int _dx;
    private final int _dy;
    private final int _x;
    private final int _y;
    public static final MouseState NOTHING = new MouseState(0, 0, 0, 0, 0, null, null);
    public static long CLICK_TIME_MS = 500;

    public MouseState(int i10, int i11, int i12, int i13, int i14, EnumMap<MouseButton, ButtonState> enumMap, V1<MouseButton> v12) {
        this._x = i10;
        this._y = i11;
        this._dx = i12;
        this._dy = i13;
        this._dwheel = i14;
        if (enumMap != null) {
            this._buttonStates = AbstractC12529i1.i().l(enumMap).a();
        } else {
            this._buttonStates = AbstractC12529i1.y();
        }
        if (v12 != null) {
            this._clickCounts = AbstractC12549n1.k().c(v12).e();
        } else {
            this._clickCounts = AbstractC12549n1.x();
        }
    }

    public ButtonState getButtonState(MouseButton mouseButton) {
        return this._buttonStates.containsKey(mouseButton) ? this._buttonStates.get(mouseButton) : ButtonState.UP;
    }

    public EnumMap<MouseButton, ButtonState> getButtonStates() {
        return getButtonStates(null);
    }

    public EnumSet<MouseButton> getButtonsClicked() {
        EnumSet<MouseButton> noneOf = EnumSet.noneOf(MouseButton.class);
        for (MouseButton mouseButton : MouseButton.values()) {
            if (getClickCount(mouseButton) != 0) {
                noneOf.add(mouseButton);
            }
        }
        return noneOf;
    }

    public EnumSet<MouseButton> getButtonsPressedSince(MouseState mouseState) {
        EnumSet<MouseButton> noneOf = EnumSet.noneOf(MouseButton.class);
        for (MouseButton mouseButton : MouseButton.values()) {
            ButtonState buttonState = getButtonState(mouseButton);
            ButtonState buttonState2 = ButtonState.DOWN;
            if (buttonState == buttonState2 && mouseState.getButtonState(mouseButton) != buttonState2) {
                noneOf.add(mouseButton);
            }
        }
        return noneOf;
    }

    public EnumSet<MouseButton> getButtonsReleasedSince(MouseState mouseState) {
        EnumSet<MouseButton> noneOf = EnumSet.noneOf(MouseButton.class);
        for (MouseButton mouseButton : MouseButton.values()) {
            ButtonState buttonState = mouseState.getButtonState(mouseButton);
            ButtonState buttonState2 = ButtonState.DOWN;
            if (buttonState == buttonState2 && getButtonState(mouseButton) != buttonState2) {
                noneOf.add(mouseButton);
            }
        }
        return noneOf;
    }

    public int getClickCount(MouseButton mouseButton) {
        return this._clickCounts.Ad(mouseButton);
    }

    public V1<MouseButton> getClickCounts() {
        if (this._clickCounts.isEmpty()) {
            return C12508d0.n(MouseButton.class);
        }
        return C12508d0.o(this._clickCounts);
    }

    public int getDwheel() {
        return this._dwheel;
    }

    public int getDx() {
        return this._dx;
    }

    public int getDy() {
        return this._dy;
    }

    public int getX() {
        return this._x;
    }

    public int getY() {
        return this._y;
    }

    public boolean hasButtonState(ButtonState buttonState) {
        return this._buttonStates.containsValue(buttonState);
    }

    public String toString() {
        return "MouseState{x=" + this._x + ", y=" + this._y + ", dx=" + this._dx + ", dy=" + this._dy + ", dwheel=" + this._dwheel + ", buttonStates=" + this._buttonStates.toString() + ", clickCounts=" + this._clickCounts.toString() + JavaElement.JEM_ANNOTATION;
    }

    public EnumMap<MouseButton, ButtonState> getButtonStates(EnumMap<MouseButton, ButtonState> enumMap) {
        if (enumMap == null) {
            enumMap = Q1.W(MouseButton.class);
        }
        enumMap.clear();
        enumMap.putAll(this._buttonStates);
        return enumMap;
    }

    public boolean hasButtonState(MouseButton mouseButton) {
        return this._buttonStates.containsKey(mouseButton);
    }

    public V1<MouseButton> getClickCounts(C12508d0<MouseButton> c12508d0) {
        if (c12508d0 == null) {
            if (this._clickCounts.isEmpty()) {
                return C12508d0.n(MouseButton.class);
            }
            return C12508d0.o(this._clickCounts);
        }
        c12508d0.clear();
        c12508d0.addAll(this._clickCounts);
        return c12508d0;
    }
}
