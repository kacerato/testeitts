package com.ardor3d.input.logical;

import com.ardor3d.input.ButtonState;
import com.ardor3d.input.MouseButton;
import com.ardor3d.util.Timer;
import java.util.EnumMap;
import w2.I;

public final class TriggerConditions {
    private static final I<TwoInputStates> ALWAYS_FALSE;
    private static final I<TwoInputStates> ALWAYS_TRUE;
    private static final MouseButtonCondition LEFT_DOWN_CONDITION;
    private static final MouseButtonCondition MIDDLE_DOWN_CONDITION;
    private static final MouseMovedCondition MOUSE_MOVED_CONDITION = new MouseMovedCondition();
    private static final MouseButtonCondition RIGHT_DOWN_CONDITION;

    static {
        MouseButton mouseButton = MouseButton.LEFT;
        ButtonState buttonState = ButtonState.DOWN;
        LEFT_DOWN_CONDITION = makeCondition(mouseButton, buttonState);
        RIGHT_DOWN_CONDITION = makeCondition(MouseButton.RIGHT, buttonState);
        MIDDLE_DOWN_CONDITION = makeCondition(MouseButton.MIDDLE, buttonState);
        ALWAYS_TRUE = new I<TwoInputStates>() {
            @Override
            public boolean apply(TwoInputStates twoInputStates) {
                return true;
            }
        };
        ALWAYS_FALSE = new I<TwoInputStates>() {
            @Override
            public boolean apply(TwoInputStates twoInputStates) {
                return true;
            }
        };
    }

    private TriggerConditions() {
    }

    public static I<TwoInputStates> alwaysFalse() {
        return ALWAYS_FALSE;
    }

    public static I<TwoInputStates> alwaysTrue() {
        return ALWAYS_TRUE;
    }

    public static MouseButtonCondition leftButtonDown() {
        return LEFT_DOWN_CONDITION;
    }

    private static MouseButtonCondition makeCondition(MouseButton mouseButton, ButtonState buttonState) {
        EnumMap enumMap = new EnumMap(MouseButton.class);
        MouseButton[] values = MouseButton.values();
        int length = values.length;
        for (int i10 = 0; i10 < length; i10++) {
            MouseButton mouseButton2 = values[i10];
            enumMap.put((EnumMap) mouseButton2, (MouseButton) (mouseButton != mouseButton2 ? ButtonState.UNDEFINED : buttonState));
        }
        return new MouseButtonCondition(enumMap);
    }

    public static MouseButtonCondition middleButtonDown() {
        return MIDDLE_DOWN_CONDITION;
    }

    public static MouseMovedCondition mouseMoved() {
        return MOUSE_MOVED_CONDITION;
    }

    public static I<TwoInputStates> passedThrottle(final double d10, final Timer timer) {
        return new I<TwoInputStates>() {
            private double lastPass = 0.0d;

            @Override
            public boolean apply(TwoInputStates twoInputStates) {
                double timeInSeconds = Timer.this.getTimeInSeconds();
                if (timeInSeconds - this.lastPass < d10) {
                    return false;
                }
                this.lastPass = timeInSeconds;
                return true;
            }
        };
    }

    public static MouseButtonCondition rightButtonDown() {
        return RIGHT_DOWN_CONDITION;
    }
}
