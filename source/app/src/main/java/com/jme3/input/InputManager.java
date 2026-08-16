package com.jme3.input;

import com.jme3.cursors.plugins.JmeCursor;
import com.jme3.input.controls.ActionListener;
import com.jme3.input.controls.AnalogListener;
import com.jme3.input.controls.InputListener;
import com.jme3.input.controls.JoyAxisTrigger;
import com.jme3.input.controls.JoyButtonTrigger;
import com.jme3.input.controls.KeyTrigger;
import com.jme3.input.controls.MouseAxisTrigger;
import com.jme3.input.controls.MouseButtonTrigger;
import com.jme3.input.controls.TouchListener;
import com.jme3.input.controls.TouchTrigger;
import com.jme3.input.controls.Trigger;
import com.jme3.input.event.InputEvent;
import com.jme3.input.event.JoyAxisEvent;
import com.jme3.input.event.JoyButtonEvent;
import com.jme3.input.event.KeyInputEvent;
import com.jme3.input.event.MouseButtonEvent;
import com.jme3.input.event.MouseMotionEvent;
import com.jme3.input.event.TouchEvent;
import com.jme3.math.FastMath;
import com.jme3.math.Vector2f;
import com.jme3.util.IntMap;
import com.jme3.util.SafeArrayList;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class InputManager implements RawInputListener {
    static final boolean $assertionsDisabled = false;
    private static final Logger logger = Logger.getLogger(InputManager.class.getName());
    private float frameTPF;
    private final JoyInput joystick;
    private Joystick[] joysticks;
    private final KeyInput keys;
    private final MouseInput mouse;
    private final TouchInput touch;
    private long lastLastUpdateTime = 0;
    private long lastUpdateTime = 0;
    private long frameDelta = 0;
    private boolean eventsPermitted = false;
    private boolean mouseVisible = true;
    private boolean safeMode = false;
    private float globalAxisDeadZone = 0.05f;
    private final Vector2f cursorPos = new Vector2f();
    private final IntMap<ArrayList<Mapping>> bindings = new IntMap<>();
    private final HashMap<String, Mapping> mappings = new HashMap<>();
    private final IntMap<Long> pressedButtons = new IntMap<>();
    private final IntMap<Float> axisValues = new IntMap<>();
    private final SafeArrayList<RawInputListener> rawListeners = new SafeArrayList<>(RawInputListener.class);
    private final ArrayList<InputEvent> inputQueue = new ArrayList<>();
    private final List<JoystickConnectionListener> joystickConnectionListeners = new ArrayList();

    public static class Mapping {
        private final String name;
        private final ArrayList<Integer> triggers = new ArrayList<>();
        private final ArrayList<InputListener> listeners = new ArrayList<>();

        public Mapping(String str) {
            this.name = str;
        }
    }

    public InputManager(MouseInput mouseInput, KeyInput keyInput, JoyInput joyInput, TouchInput touchInput) {
        if (keyInput == null || mouseInput == null) {
            throw new IllegalArgumentException("Mouse or keyboard cannot be null");
        }
        this.keys = keyInput;
        this.mouse = mouseInput;
        this.joystick = joyInput;
        this.touch = touchInput;
        keyInput.setInputListener(this);
        mouseInput.setInputListener(this);
        if (joyInput != null) {
            joyInput.setInputListener(this);
            this.joysticks = joyInput.loadJoysticks(this);
        }
        if (touchInput != null) {
            touchInput.setInputListener(this);
        }
        keyInput.getInputTimeNanos();
    }

    private float computeAnalogValue(long j10) {
        if (!this.safeMode) {
            long j11 = this.frameDelta;
            if (j11 != 0) {
                return FastMath.clamp(((float) j10) / ((float) j11), 0.0f, 1.0f);
            }
        }
        return 1.0f;
    }

    private void invokeActions(int i10, boolean z10) {
        ArrayList<Mapping> arrayList = this.bindings.get(i10);
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Mapping mapping = arrayList.get(size);
            ArrayList arrayList2 = mapping.listeners;
            for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                InputListener inputListener = (InputListener) arrayList2.get(size2);
                if (inputListener instanceof ActionListener) {
                    ((ActionListener) inputListener).onAction(mapping.name, z10, this.frameTPF);
                }
            }
        }
    }

    private void invokeAnalogs(int i10, float f10, boolean z10) {
        ArrayList<Mapping> arrayList = this.bindings.get(i10);
        if (arrayList == null) {
            return;
        }
        if (!z10) {
            f10 *= this.frameTPF;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Mapping mapping = arrayList.get(size);
            ArrayList arrayList2 = mapping.listeners;
            for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                InputListener inputListener = (InputListener) arrayList2.get(size2);
                if (inputListener instanceof AnalogListener) {
                    ((AnalogListener) inputListener).onAnalog(mapping.name, f10, this.frameTPF);
                }
            }
        }
    }

    private void invokeAnalogsAndActions(int i10, float f10, float f11, boolean z10) {
        if (f10 < f11) {
            invokeAnalogs(i10, f10, !z10);
            return;
        }
        ArrayList<Mapping> arrayList = this.bindings.get(i10);
        if (arrayList == null) {
            return;
        }
        boolean containsKey = this.axisValues.containsKey(i10);
        if (z10) {
            f10 *= this.frameTPF;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Mapping mapping = arrayList.get(size);
            ArrayList arrayList2 = mapping.listeners;
            for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                InputListener inputListener = (InputListener) arrayList2.get(size2);
                if ((inputListener instanceof ActionListener) && !containsKey) {
                    ((ActionListener) inputListener).onAction(mapping.name, true, this.frameTPF);
                }
                if (inputListener instanceof AnalogListener) {
                    ((AnalogListener) inputListener).onAnalog(mapping.name, f10, this.frameTPF);
                }
            }
        }
    }

    private void invokeTimedActions(int i10, long j10, boolean z10) {
        if (this.bindings.containsKey(i10)) {
            if (z10) {
                this.pressedButtons.put(i10, Long.valueOf(j10));
                return;
            }
            Long remove = this.pressedButtons.remove(i10);
            if (remove == null) {
                return;
            }
            long max = j10 - Math.max(remove.longValue(), this.lastLastUpdateTime);
            if (max > 0) {
                invokeAnalogs(i10, computeAnalogValue(max), false);
            }
        }
    }

    private void invokeUpdateActions() {
        Iterator<IntMap.Entry<Long>> it = this.pressedButtons.iterator();
        while (it.hasNext()) {
            IntMap.Entry<Long> next = it.next();
            int key = next.getKey();
            long max = this.lastUpdateTime - Math.max(this.lastLastUpdateTime, next.getValue().longValue());
            if (max > 0) {
                invokeAnalogs(key, computeAnalogValue(max), false);
            }
        }
        Iterator<IntMap.Entry<Float>> it2 = this.axisValues.iterator();
        while (it2.hasNext()) {
            IntMap.Entry<Float> next2 = it2.next();
            invokeAnalogs(next2.getKey(), next2.getValue().floatValue() * this.frameTPF, true);
        }
    }

    private void onJoyAxisEventQueued(JoyAxisEvent joyAxisEvent) {
        int joyIndex = joyAxisEvent.getJoyIndex();
        int axisIndex = joyAxisEvent.getAxisIndex();
        float value = joyAxisEvent.getValue();
        float max = Math.max(this.globalAxisDeadZone, joyAxisEvent.getAxis().getDeadZone());
        if (value < max && value > (-max)) {
            int joyAxisHash = JoyAxisTrigger.joyAxisHash(joyIndex, axisIndex, true);
            int joyAxisHash2 = JoyAxisTrigger.joyAxisHash(joyIndex, axisIndex, false);
            Float f10 = this.axisValues.get(joyAxisHash);
            Float f11 = this.axisValues.get(joyAxisHash2);
            if (f10 != null && f10.floatValue() > max) {
                invokeActions(joyAxisHash, false);
            }
            if (f11 != null && f11.floatValue() > max) {
                invokeActions(joyAxisHash2, false);
            }
            this.axisValues.remove(joyAxisHash);
            this.axisValues.remove(joyAxisHash2);
            return;
        }
        if (value >= 0.0f) {
            int joyAxisHash3 = JoyAxisTrigger.joyAxisHash(joyIndex, axisIndex, false);
            int joyAxisHash4 = JoyAxisTrigger.joyAxisHash(joyIndex, axisIndex, true);
            Float f12 = this.axisValues.get(joyAxisHash4);
            if (f12 != null && f12.floatValue() > max) {
                invokeActions(joyAxisHash4, false);
            }
            invokeAnalogsAndActions(joyAxisHash3, value, max, true);
            this.axisValues.put(joyAxisHash3, Float.valueOf(value));
            this.axisValues.remove(joyAxisHash4);
            return;
        }
        int joyAxisHash5 = JoyAxisTrigger.joyAxisHash(joyIndex, axisIndex, true);
        int joyAxisHash6 = JoyAxisTrigger.joyAxisHash(joyIndex, axisIndex, false);
        Float f13 = this.axisValues.get(joyAxisHash6);
        if (f13 != null && f13.floatValue() > max) {
            invokeActions(joyAxisHash6, false);
        }
        float f14 = -value;
        invokeAnalogsAndActions(joyAxisHash5, f14, max, true);
        this.axisValues.put(joyAxisHash5, Float.valueOf(f14));
        this.axisValues.remove(joyAxisHash6);
    }

    private void onJoyButtonEventQueued(JoyButtonEvent joyButtonEvent) {
        int joyButtonHash = JoyButtonTrigger.joyButtonHash(joyButtonEvent.getJoyIndex(), joyButtonEvent.getButtonIndex());
        invokeActions(joyButtonHash, joyButtonEvent.isPressed());
        invokeTimedActions(joyButtonHash, joyButtonEvent.getTime(), joyButtonEvent.isPressed());
    }

    private void onKeyEventQueued(KeyInputEvent keyInputEvent) {
        if (keyInputEvent.isRepeating()) {
            return;
        }
        int keyHash = KeyTrigger.keyHash(keyInputEvent.getKeyCode());
        invokeActions(keyHash, keyInputEvent.isPressed());
        invokeTimedActions(keyHash, keyInputEvent.getTime(), keyInputEvent.isPressed());
    }

    private void onMouseButtonEventQueued(MouseButtonEvent mouseButtonEvent) {
        int mouseButtonHash = MouseButtonTrigger.mouseButtonHash(mouseButtonEvent.getButtonIndex());
        invokeActions(mouseButtonHash, mouseButtonEvent.isPressed());
        invokeTimedActions(mouseButtonHash, mouseButtonEvent.getTime(), mouseButtonEvent.isPressed());
    }

    private void onMouseMotionEventQueued(MouseMotionEvent mouseMotionEvent) {
        if (mouseMotionEvent.getDX() != 0) {
            invokeAnalogsAndActions(MouseAxisTrigger.mouseAxisHash(0, mouseMotionEvent.getDX() < 0), Math.abs(mouseMotionEvent.getDX()) / 1024.0f, this.globalAxisDeadZone, false);
        }
        if (mouseMotionEvent.getDY() != 0) {
            invokeAnalogsAndActions(MouseAxisTrigger.mouseAxisHash(1, mouseMotionEvent.getDY() < 0), Math.abs(mouseMotionEvent.getDY()) / 1024.0f, this.globalAxisDeadZone, false);
        }
        if (mouseMotionEvent.getDeltaWheel() != 0) {
            invokeAnalogsAndActions(MouseAxisTrigger.mouseAxisHash(2, mouseMotionEvent.getDeltaWheel() < 0), Math.abs(mouseMotionEvent.getDeltaWheel()) / 100.0f, this.globalAxisDeadZone, false);
        }
    }

    private void processQueue() {
        int size = this.inputQueue.size();
        for (RawInputListener rawInputListener : this.rawListeners.getArray()) {
            rawInputListener.beginInput();
            for (int i10 = 0; i10 < size; i10++) {
                InputEvent inputEvent = this.inputQueue.get(i10);
                if (!inputEvent.isConsumed()) {
                    if (inputEvent instanceof MouseMotionEvent) {
                        rawInputListener.onMouseMotionEvent((MouseMotionEvent) inputEvent);
                    } else if (inputEvent instanceof KeyInputEvent) {
                        rawInputListener.onKeyEvent((KeyInputEvent) inputEvent);
                    } else if (inputEvent instanceof MouseButtonEvent) {
                        rawInputListener.onMouseButtonEvent((MouseButtonEvent) inputEvent);
                    } else if (inputEvent instanceof JoyAxisEvent) {
                        rawInputListener.onJoyAxisEvent((JoyAxisEvent) inputEvent);
                    } else if (inputEvent instanceof JoyButtonEvent) {
                        rawInputListener.onJoyButtonEvent((JoyButtonEvent) inputEvent);
                    } else if (inputEvent instanceof TouchEvent) {
                        rawInputListener.onTouchEvent((TouchEvent) inputEvent);
                    }
                }
            }
            rawInputListener.endInput();
        }
        for (int i11 = 0; i11 < size; i11++) {
            InputEvent inputEvent2 = this.inputQueue.get(i11);
            if (!inputEvent2.isConsumed()) {
                if (inputEvent2 instanceof MouseMotionEvent) {
                    onMouseMotionEventQueued((MouseMotionEvent) inputEvent2);
                } else if (inputEvent2 instanceof KeyInputEvent) {
                    onKeyEventQueued((KeyInputEvent) inputEvent2);
                } else if (inputEvent2 instanceof MouseButtonEvent) {
                    onMouseButtonEventQueued((MouseButtonEvent) inputEvent2);
                } else if (inputEvent2 instanceof JoyAxisEvent) {
                    onJoyAxisEventQueued((JoyAxisEvent) inputEvent2);
                } else if (inputEvent2 instanceof JoyButtonEvent) {
                    onJoyButtonEventQueued((JoyButtonEvent) inputEvent2);
                } else if (inputEvent2 instanceof TouchEvent) {
                    onTouchEventQueued((TouchEvent) inputEvent2);
                }
                inputEvent2.setConsumed();
            }
        }
        this.inputQueue.clear();
    }

    public boolean addJoystickConnectionListener(JoystickConnectionListener joystickConnectionListener) {
        return this.joystickConnectionListeners.add(joystickConnectionListener);
    }

    public void addListener(InputListener inputListener, String... strArr) {
        for (String str : strArr) {
            Mapping mapping = this.mappings.get(str);
            if (mapping == null) {
                mapping = new Mapping(str);
                this.mappings.put(str, mapping);
            }
            if (!mapping.listeners.contains(inputListener)) {
                mapping.listeners.add(inputListener);
            }
        }
    }

    public void addMapping(String str, Trigger... triggerArr) {
        Mapping mapping = this.mappings.get(str);
        if (mapping == null) {
            mapping = new Mapping(str);
            this.mappings.put(str, mapping);
        }
        for (Trigger trigger : triggerArr) {
            int triggerHashCode = trigger.triggerHashCode();
            ArrayList<Mapping> arrayList = this.bindings.get(triggerHashCode);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.bindings.put(triggerHashCode, arrayList);
            }
            if (arrayList.contains(mapping)) {
                logger.log(Level.WARNING, "Attempted to add mapping \"{0}\" twice to trigger.", str);
            } else {
                arrayList.add(mapping);
                mapping.triggers.add(Integer.valueOf(triggerHashCode));
            }
        }
    }

    public void addRawInputListener(RawInputListener rawInputListener) {
        this.rawListeners.add(rawInputListener);
    }

    @Override
    public void beginInput() {
    }

    public void clearJoystickConnectionListeners() {
        this.joystickConnectionListeners.clear();
    }

    public void clearMappings() {
        this.mappings.clear();
        this.bindings.clear();
        reset();
    }

    public void clearRawInputListeners() {
        this.rawListeners.clear();
    }

    public void deleteMapping(String str) {
        Mapping remove = this.mappings.remove(str);
        if (remove == null) {
            logger.log(Level.WARNING, "Cannot find mapping to be removed, skipping: {0}", str);
            return;
        }
        ArrayList arrayList = remove.triggers;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            this.bindings.get(((Integer) arrayList.get(size)).intValue()).remove(remove);
        }
    }

    public void deleteTrigger(String str, Trigger trigger) {
        Mapping mapping = this.mappings.get(str);
        if (mapping != null) {
            this.bindings.get(trigger.triggerHashCode()).remove(mapping);
            return;
        }
        throw new IllegalArgumentException("Cannot find mapping: " + str);
    }

    @Override
    public void endInput() {
    }

    public void fireJoystickConnectedEvent(Joystick joystick) {
        Iterator<JoystickConnectionListener> it = this.joystickConnectionListeners.iterator();
        while (it.hasNext()) {
            it.next().onConnected(joystick);
        }
    }

    public void fireJoystickDisconnectedEvent(Joystick joystick) {
        Iterator<JoystickConnectionListener> it = this.joystickConnectionListeners.iterator();
        while (it.hasNext()) {
            it.next().onDisconnected(joystick);
        }
    }

    public float getAxisDeadZone() {
        return this.globalAxisDeadZone;
    }

    public Vector2f getCursorPosition() {
        return this.cursorPos;
    }

    public Joystick[] getJoysticks() {
        return this.joysticks;
    }

    public String getKeyName(int i10) {
        return this.keys.getKeyName(i10);
    }

    @Deprecated
    public boolean getSimulateMouse() {
        TouchInput touchInput = this.touch;
        if (touchInput != null) {
            return touchInput.isSimulateMouse();
        }
        return false;
    }

    public boolean hasMapping(String str) {
        return this.mappings.containsKey(str);
    }

    public boolean isCursorVisible() {
        return this.mouseVisible;
    }

    public boolean isSimulateKeyboard() {
        TouchInput touchInput = this.touch;
        if (touchInput != null) {
            return touchInput.isSimulateKeyboard();
        }
        return false;
    }

    public boolean isSimulateMouse() {
        TouchInput touchInput = this.touch;
        if (touchInput != null) {
            return touchInput.isSimulateMouse();
        }
        return false;
    }

    @Override
    public void onJoyAxisEvent(JoyAxisEvent joyAxisEvent) {
        if (!this.eventsPermitted) {
            throw new UnsupportedOperationException("JoyInput has raised an event at an illegal time.");
        }
        this.inputQueue.add(joyAxisEvent);
    }

    @Override
    public void onJoyButtonEvent(JoyButtonEvent joyButtonEvent) {
        if (!this.eventsPermitted) {
            throw new UnsupportedOperationException("JoyInput has raised an event at an illegal time.");
        }
        this.inputQueue.add(joyButtonEvent);
    }

    @Override
    public void onKeyEvent(KeyInputEvent keyInputEvent) {
        if (!this.eventsPermitted) {
            throw new UnsupportedOperationException("KeyInput has raised an event at an illegal time.");
        }
        this.inputQueue.add(keyInputEvent);
    }

    @Override
    public void onMouseButtonEvent(MouseButtonEvent mouseButtonEvent) {
        if (!this.eventsPermitted) {
            throw new UnsupportedOperationException("MouseInput has raised an event at an illegal time.");
        }
        this.cursorPos.set(mouseButtonEvent.getX(), mouseButtonEvent.getY());
        this.inputQueue.add(mouseButtonEvent);
    }

    @Override
    public void onMouseMotionEvent(MouseMotionEvent mouseMotionEvent) {
        this.cursorPos.set(mouseMotionEvent.getX(), mouseMotionEvent.getY());
        if (this.eventsPermitted) {
            this.inputQueue.add(mouseMotionEvent);
        }
    }

    @Override
    public void onTouchEvent(TouchEvent touchEvent) {
        if (!this.eventsPermitted) {
            throw new UnsupportedOperationException("TouchInput has raised an event at an illegal time.");
        }
        this.cursorPos.set(touchEvent.getX(), touchEvent.getY());
        this.inputQueue.add(touchEvent);
    }

    public void onTouchEventQueued(TouchEvent touchEvent) {
        ArrayList<Mapping> arrayList = this.bindings.get(TouchTrigger.touchHash(touchEvent.getKeyCode()));
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Mapping mapping = arrayList.get(size);
            ArrayList arrayList2 = mapping.listeners;
            for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                InputListener inputListener = (InputListener) arrayList2.get(size2);
                if (inputListener instanceof TouchListener) {
                    ((TouchListener) inputListener).onTouch(mapping.name, touchEvent, this.frameTPF);
                }
            }
        }
    }

    public boolean removeJoystickConnectionListener(JoystickConnectionListener joystickConnectionListener) {
        return this.joystickConnectionListeners.remove(joystickConnectionListener);
    }

    public void removeListener(InputListener inputListener) {
        Iterator<Mapping> it = this.mappings.values().iterator();
        while (it.hasNext()) {
            it.next().listeners.remove(inputListener);
        }
    }

    public void removeRawInputListener(RawInputListener rawInputListener) {
        this.rawListeners.remove(rawInputListener);
    }

    public void reset() {
        this.pressedButtons.clear();
        this.axisValues.clear();
    }

    public void setAxisDeadZone(float f10) {
        this.globalAxisDeadZone = f10;
    }

    public void setCursorVisible(boolean z10) {
        if (this.mouseVisible != z10) {
            this.mouseVisible = z10;
            this.mouse.setCursorVisible(z10);
        }
    }

    public void setJoysticks(Joystick[] joystickArr) {
        this.joysticks = joystickArr;
    }

    public void setMouseCursor(JmeCursor jmeCursor) {
        this.mouse.setNativeCursor(jmeCursor);
    }

    public void setSimulateKeyboard(boolean z10) {
        TouchInput touchInput = this.touch;
        if (touchInput != null) {
            touchInput.setSimulateKeyboard(z10);
        }
    }

    public void setSimulateMouse(boolean z10) {
        TouchInput touchInput = this.touch;
        if (touchInput != null) {
            touchInput.setSimulateMouse(z10);
        }
    }

    public void update(float f10) {
        this.frameTPF = f10;
        this.safeMode = f10 < 0.015f;
        long inputTimeNanos = this.keys.getInputTimeNanos();
        this.frameDelta = inputTimeNanos - this.lastUpdateTime;
        this.eventsPermitted = true;
        this.keys.update();
        this.mouse.update();
        JoyInput joyInput = this.joystick;
        if (joyInput != null) {
            joyInput.update();
        }
        TouchInput touchInput = this.touch;
        if (touchInput != null) {
            touchInput.update();
        }
        this.eventsPermitted = false;
        processQueue();
        invokeUpdateActions();
        this.lastLastUpdateTime = this.lastUpdateTime;
        this.lastUpdateTime = inputTimeNanos;
    }
}
