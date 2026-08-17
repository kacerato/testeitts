package com.itsmagic.engine.Engines.Engine.NoCode.Interaction;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/**
 * Define as capacidades modulares (capabilities) que um GameObject pode expor.
 * Substitui o acoplamento rigido por heranca de classes.
 */
public enum InteractionCapability implements Serializable {
    Interactable,
    Grabbable,
    Inspectable,
    Throwable,
    Openable,
    Lockable,
    Readable,
    Usable,
    Toggleable,
    Rotatable,
    Pushable,
    Pullable,
    Climbable,
    SitTarget,
    VehicleEntry,
    DialogueTarget,
    InventoryReceiver,
    SocketReceiver;

    public static InteractionCapability fromString(String name) {
        if (name == null || name.trim().isEmpty()) {
            return null;
        }
        String clean = name.trim();
        for (InteractionCapability cap : values()) {
            if (cap.name().equalsIgnoreCase(clean)) {
                return cap;
            }
        }
        return null;
    }

    public static Set<InteractionCapability> parseSet(String commaSeparated) {
        if (commaSeparated == null || commaSeparated.trim().isEmpty()) {
            return Collections.emptySet();
        }
        Set<InteractionCapability> set = new HashSet<>();
        String[] parts = commaSeparated.split(",");
        for (String part : parts) {
            InteractionCapability cap = fromString(part);
            if (cap != null) {
                set.add(cap);
            }
        }
        return set;
    }
}
