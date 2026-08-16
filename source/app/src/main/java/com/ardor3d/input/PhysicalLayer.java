package com.ardor3d.input;

import com.ardor3d.input.logical.DummyControllerWrapper;
import com.ardor3d.input.logical.DummyFocusWrapper;
import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.InterfaceC12522g2;
import java.util.EnumSet;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;

public class PhysicalLayer {
    private final ControllerWrapper _controllerWrapper;
    private ControllerState _currentControllerState;
    private KeyboardState _currentKeyboardState;
    private MouseState _currentMouseState;
    private final FocusWrapper _focusWrapper;
    private boolean _inited;
    private final KeyboardWrapper _keyboardWrapper;
    private final MouseWrapper _mouseWrapper;
    private final BlockingQueue<InputState> _stateQueue;
    private static final Logger logger = Logger.getLogger(PhysicalLayer.class.getName());
    private static final long MAX_INPUT_POLL_TIME = TimeUnit.SECONDS.toNanos(2);
    private static final List<InputState> EMPTY_LIST = AbstractC12521g1.x();

    public PhysicalLayer(KeyboardWrapper keyboardWrapper, MouseWrapper mouseWrapper) {
        this(keyboardWrapper, mouseWrapper, DummyControllerWrapper.INSTANCE, DummyFocusWrapper.INSTANCE);
    }

    private void init() {
        this._inited = true;
        this._keyboardWrapper.init();
        this._mouseWrapper.init();
        this._focusWrapper.init();
        this._controllerWrapper.init();
        this._currentControllerState = this._controllerWrapper.getBlankState();
    }

    private void lostFocus() {
        this._stateQueue.add(InputState.LOST_FOCUS);
        this._currentKeyboardState = KeyboardState.NOTHING;
        this._currentMouseState = MouseState.NOTHING;
        this._currentControllerState = this._controllerWrapper.getBlankState();
    }

    private void readControllerState() {
        InterfaceC12522g2<ControllerEvent> events = this._controllerWrapper.getEvents();
        if (events.hasNext()) {
            this._currentControllerState = new ControllerState();
            while (events.hasNext()) {
                this._currentControllerState.addEvent(events.next());
            }
        }
    }

    private void readKeyboardState() {
        InterfaceC12522g2<KeyEvent> events = this._keyboardWrapper.getEvents();
        if (events.hasNext()) {
            KeyEvent next = events.next();
            EnumSet noneOf = this._currentKeyboardState.getKeysDown().isEmpty() ? EnumSet.noneOf(Key.class) : EnumSet.copyOf(this._currentKeyboardState.getKeysDown());
            if (next.getState() == KeyState.DOWN) {
                noneOf.add(next.getKey());
            } else {
                noneOf.remove(next.getKey());
            }
            this._currentKeyboardState = new KeyboardState(noneOf, next);
        }
    }

    private void readMouseState() {
        InterfaceC12522g2<MouseState> events = this._mouseWrapper.getEvents();
        if (events.hasNext()) {
            this._currentMouseState = events.next();
        }
    }

    public List<InputState> drainAvailableStates() {
        if (this._stateQueue.isEmpty()) {
            return EMPTY_LIST;
        }
        LinkedList linkedList = new LinkedList();
        this._stateQueue.drainTo(linkedList);
        return linkedList;
    }

    public void readState() {
        if (!this._inited) {
            init();
        }
        KeyboardState keyboardState = this._currentKeyboardState;
        if (this._currentMouseState.getDwheel() != 0 || this._currentMouseState.getDx() != 0 || this._currentMouseState.getDy() != 0) {
            this._currentMouseState = new MouseState(this._currentMouseState.getX(), this._currentMouseState.getY(), 0, 0, 0, this._currentMouseState.getButtonStates(), this._currentMouseState.getClickCounts());
        }
        MouseState mouseState = this._currentMouseState;
        ControllerState controllerState = this._currentControllerState;
        long nanoTime = System.nanoTime() + MAX_INPUT_POLL_TIME;
        while (true) {
            readKeyboardState();
            readMouseState();
            readControllerState();
            if (keyboardState.equals(this._currentKeyboardState) && mouseState.equals(this._currentMouseState) && controllerState.equals(this._currentControllerState)) {
                break;
            }
            this._stateQueue.add(new InputState(this._currentKeyboardState, this._currentMouseState, this._currentControllerState));
            keyboardState = this._currentKeyboardState;
            mouseState = this._currentMouseState;
            controllerState = this._currentControllerState;
            if (System.nanoTime() > nanoTime) {
                logger.severe("Spent too long collecting input data, this is probably an input system bug");
                break;
            }
        }
        if (this._focusWrapper.getAndClearFocusLost()) {
            lostFocus();
        }
    }

    public PhysicalLayer(KeyboardWrapper keyboardWrapper, MouseWrapper mouseWrapper, FocusWrapper focusWrapper) {
        this(keyboardWrapper, mouseWrapper, DummyControllerWrapper.INSTANCE, focusWrapper);
    }

    public PhysicalLayer(KeyboardWrapper keyboardWrapper, MouseWrapper mouseWrapper, ControllerWrapper controllerWrapper) {
        this(keyboardWrapper, mouseWrapper, controllerWrapper, DummyFocusWrapper.INSTANCE);
    }

    public PhysicalLayer(KeyboardWrapper keyboardWrapper, MouseWrapper mouseWrapper, ControllerWrapper controllerWrapper, FocusWrapper focusWrapper) {
        this._inited = false;
        this._keyboardWrapper = keyboardWrapper;
        this._mouseWrapper = mouseWrapper;
        this._focusWrapper = focusWrapper;
        this._controllerWrapper = controllerWrapper;
        this._stateQueue = new LinkedBlockingQueue();
        this._currentKeyboardState = KeyboardState.NOTHING;
        this._currentMouseState = MouseState.NOTHING;
    }
}
