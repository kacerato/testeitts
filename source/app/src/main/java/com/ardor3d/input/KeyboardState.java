package com.ardor3d.input;

import java.util.Collections;
import java.util.EnumSet;
import java.util.Set;
import org.eclipse.jdt.internal.core.JavaElement;

public class KeyboardState {
    public static final KeyboardState NOTHING = new KeyboardState(EnumSet.noneOf(Key.class), KeyEvent.NOTHING);
    private final KeyEvent _keyEvent;
    private final EnumSet<Key> _keysDown;
    private final Set<Key> _keysDownView;

    public KeyboardState(EnumSet<Key> enumSet, KeyEvent keyEvent) {
        this._keysDown = enumSet;
        this._keyEvent = keyEvent;
        this._keysDownView = Collections.unmodifiableSet(enumSet);
    }

    public KeyEvent getKeyEvent() {
        return this._keyEvent;
    }

    public Set<Key> getKeysDown() {
        return this._keysDownView;
    }

    public EnumSet<Key> getKeysHeldSince(KeyboardState keyboardState) {
        EnumSet<Key> copyOf = EnumSet.copyOf((EnumSet) this._keysDown);
        copyOf.retainAll(keyboardState._keysDown);
        return copyOf;
    }

    public EnumSet<Key> getKeysPressedSince(KeyboardState keyboardState) {
        EnumSet<Key> copyOf = EnumSet.copyOf((EnumSet) this._keysDown);
        copyOf.removeAll(keyboardState._keysDown);
        return copyOf;
    }

    public EnumSet<Key> getKeysReleasedSince(KeyboardState keyboardState) {
        EnumSet<Key> copyOf = EnumSet.copyOf((EnumSet) keyboardState._keysDown);
        copyOf.removeAll(this._keysDown);
        return copyOf;
    }

    public boolean isAllDown(Key... keyArr) {
        for (Key key : keyArr) {
            if (!this._keysDown.contains(key)) {
                return false;
            }
        }
        return true;
    }

    public boolean isAtLeastOneDown(Key... keyArr) {
        for (Key key : keyArr) {
            if (this._keysDown.contains(key)) {
                return true;
            }
        }
        return false;
    }

    public boolean isDown(Key key) {
        return this._keysDown.contains(key);
    }

    public String toString() {
        return "KeyboardState{_keysDown=" + ((Object) this._keysDown) + ", _keyEvent=" + ((Object) this._keyEvent) + JavaElement.JEM_ANNOTATION;
    }
}
