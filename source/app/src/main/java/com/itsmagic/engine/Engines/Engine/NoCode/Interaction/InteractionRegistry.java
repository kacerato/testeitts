package com.itsmagic.engine.Engines.Engine.NoCode.Interaction;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Registro central de entidades de interacao no runtime.
 * Mantem estados ortogonais independentes (foco, lock, abertura, energia, posse)
 * para evitar que 'Focused' sobrescreva 'Locked'.
 */
public class InteractionRegistry implements Serializable {

    public static class InteractableData implements Serializable {
        public boolean enabled = true;
        public int priority = 0;

        // Estados ortogonais independentes
        public boolean isFocused = false;
        public boolean isLocked = false;
        public boolean isOpen = false;
        public boolean isPowered = true;
        public boolean isBusy = false;
        public boolean isHeld = false;
        public GameObject heldBy = null;

        public float openAmount = 0.0f;
        public float analogValue = 0.0f;

        public final Set<InteractionCapability> capabilities = Collections.synchronizedSet(EnumSet.noneOf(InteractionCapability.class));
        public final Set<String> tags = Collections.synchronizedSet(new HashSet<>());
        public final Map<String, Object> attributes = new ConcurrentHashMap<>();

        public float maxInteractionDistance = 4.0f;
        public float maxInteractionAngle = 60.0f; // graus
        public boolean requireLineOfSight = true;
        public String promptText;
        public String promptIcon;
    }

    private static final Map<GameObject, InteractableData> REGISTRY = new ConcurrentHashMap<>();
    private static final List<GameObject> ACTIVE_INTERACTABLES = new ArrayList<>(128);

    public static InteractableData getOrCreate(GameObject go) {
        if (!C13317e.J(go)) return null;
        InteractableData data = REGISTRY.get(go);
        if (data == null) {
            synchronized (ACTIVE_INTERACTABLES) {
                data = REGISTRY.get(go);
                if (data == null) {
                    data = new InteractableData();
                    REGISTRY.put(go, data);
                    if (!ACTIVE_INTERACTABLES.contains(go)) {
                        ACTIVE_INTERACTABLES.add(go);
                    }
                }
            }
        }
        return data;
    }

    public static InteractableData get(GameObject go) {
        if (go == null) return null;
        return REGISTRY.get(go);
    }

    public static boolean isRegistered(GameObject go) {
        if (go == null) return false;
        return REGISTRY.containsKey(go);
    }

    public static void register(GameObject go) {
        getOrCreate(go);
    }

    public static void unregister(GameObject go) {
        if (go == null) return;
        REGISTRY.remove(go);
        synchronized (ACTIVE_INTERACTABLES) {
            ACTIVE_INTERACTABLES.remove(go);
        }
    }

    public static void setEnabled(GameObject go, boolean enabled) {
        InteractableData data = getOrCreate(go);
        if (data != null) {
            data.enabled = enabled;
        }
    }

    public static boolean isEnabled(GameObject go) {
        InteractableData data = get(go);
        return data != null && data.enabled;
    }

    public static void setFocused(GameObject go, boolean focused) {
        InteractableData data = get(go);
        if (data != null) {
            data.isFocused = focused;
        }
    }

    public static boolean isFocused(GameObject go) {
        InteractableData data = get(go);
        return data != null && data.isFocused;
    }

    public static void setLocked(GameObject go, boolean locked) {
        InteractableData data = getOrCreate(go);
        if (data != null) {
            data.isLocked = locked;
        }
    }

    public static boolean isLocked(GameObject go) {
        InteractableData data = get(go);
        return data != null && data.isLocked;
    }

    public static void setOpen(GameObject go, boolean open) {
        InteractableData data = getOrCreate(go);
        if (data != null) {
            data.isOpen = open;
            data.openAmount = open ? 1.0f : 0.0f;
        }
    }

    public static boolean isOpen(GameObject go) {
        InteractableData data = get(go);
        return data != null && data.isOpen;
    }

    public static void setBusy(GameObject go, boolean busy) {
        InteractableData data = getOrCreate(go);
        if (data != null) {
            data.isBusy = busy;
        }
    }

    public static boolean isBusy(GameObject go) {
        InteractableData data = get(go);
        return data != null && data.isBusy;
    }

    public static void setHeld(GameObject go, boolean held, GameObject heldBy) {
        InteractableData data = getOrCreate(go);
        if (data != null) {
            data.isHeld = held;
            data.heldBy = held ? heldBy : null;
        }
    }

    public static boolean isHeld(GameObject go) {
        InteractableData data = get(go);
        return data != null && data.isHeld;
    }

    public static GameObject getHeldBy(GameObject go) {
        InteractableData data = get(go);
        return data != null ? data.heldBy : null;
    }

    public static void addCapability(GameObject go, InteractionCapability capability) {
        if (capability == null) return;
        InteractableData data = getOrCreate(go);
        if (data != null) {
            data.capabilities.add(capability);
        }
    }

    public static void removeCapability(GameObject go, InteractionCapability capability) {
        if (capability == null) return;
        InteractableData data = get(go);
        if (data != null) {
            data.capabilities.remove(capability);
        }
    }

    public static boolean hasCapability(GameObject go, InteractionCapability capability) {
        if (capability == null) return false;
        InteractableData data = get(go);
        return data != null && data.capabilities.contains(capability);
    }

    public static void addTag(GameObject go, String tag) {
        if (tag == null || tag.trim().isEmpty()) return;
        InteractableData data = getOrCreate(go);
        if (data != null) {
            data.tags.add(tag.trim().toLowerCase());
        }
    }

    public static void removeTag(GameObject go, String tag) {
        if (tag == null) return;
        InteractableData data = get(go);
        if (data != null) {
            data.tags.remove(tag.trim().toLowerCase());
        }
    }

    public static boolean hasTag(GameObject go, String tag) {
        if (tag == null) return false;
        InteractableData data = get(go);
        return data != null && data.tags.contains(tag.trim().toLowerCase());
    }

    public static void setPriority(GameObject go, int priority) {
        InteractableData data = getOrCreate(go);
        if (data != null) {
            data.priority = priority;
        }
    }

    public static int getPriority(GameObject go) {
        InteractableData data = get(go);
        return data != null ? data.priority : 0;
    }

    public static void setState(GameObject go, InteractionState state) {
        InteractableData data = getOrCreate(go);
        if (data == null || state == null) return;
        switch (state) {
            case Enabled: data.enabled = true; break;
            case Disabled: data.enabled = false; break;
            case Focused: data.isFocused = true; break;
            case Idle: data.isFocused = false; break;
            case Locked: data.isLocked = true; break;
            case Unlocked: data.isLocked = false; break;
            case Open: data.isOpen = true; data.openAmount = 1f; break;
            case Closed: data.isOpen = false; data.openAmount = 0f; break;
            case Busy: data.isBusy = true; break;
            case Held: data.isHeld = true; break;
            case Dropped: data.isHeld = false; data.heldBy = null; break;
            case Powered: data.isPowered = true; break;
            case Unpowered: data.isPowered = false; break;
            default: break;
        }
    }

    public static InteractionState getState(GameObject go) {
        InteractableData data = get(go);
        if (data == null || !data.enabled) return InteractionState.Disabled;
        if (data.isHeld) return InteractionState.Held;
        if (data.isLocked) return InteractionState.Locked;
        if (data.isBusy) return InteractionState.Busy;
        if (data.isOpen) return InteractionState.Open;
        if (data.isFocused) return InteractionState.Focused;
        return InteractionState.Idle;
    }

    public static void setAttribute(GameObject go, String key, Object value) {
        if (key == null) return;
        InteractableData data = getOrCreate(go);
        if (data != null) {
            if (value == null) {
                data.attributes.remove(key);
            } else {
                data.attributes.put(key, value);
            }
        }
    }

    public static Object getAttribute(GameObject go, String key) {
        if (key == null) return null;
        InteractableData data = get(go);
        return data != null ? data.attributes.get(key) : null;
    }

    /**
     * Itera diretamente sobre a lista ativa sem alocar ArrayList a cada frame.
     */
    public static int getActiveInteractablesCount() {
        synchronized (ACTIVE_INTERACTABLES) {
            return ACTIVE_INTERACTABLES.size();
        }
    }

    public static GameObject getActiveInteractableAt(int index) {
        synchronized (ACTIVE_INTERACTABLES) {
            if (index >= 0 && index < ACTIVE_INTERACTABLES.size()) {
                return ACTIVE_INTERACTABLES.get(index);
            }
            return null;
        }
    }

    public static void clear() {
        REGISTRY.clear();
        synchronized (ACTIVE_INTERACTABLES) {
            ACTIVE_INTERACTABLES.clear();
        }
    }
}
