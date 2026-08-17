package com.itsmagic.engine.Engines.Engine.NoCode.Interaction;

import java.io.Serializable;

/**
 * Estados padronizados para entidades interativas.
 */
public enum InteractionState implements Serializable {
    Enabled,
    Disabled,
    Idle,
    Focused,
    Interacting,
    Busy,
    Open,
    Closed,
    Locked,
    Unlocked,
    Held,
    Dropped,
    On,
    Off,
    Powered,
    Unpowered;

    public static InteractionState fromString(String name) {
        if (name == null || name.trim().isEmpty()) {
            return null;
        }
        String clean = name.trim();
        for (InteractionState state : values()) {
            if (state.name().equalsIgnoreCase(clean)) {
                return state;
            }
        }
        return null;
    }
}
