package com.itsmagic.engine.Engines.Engine.NoCode.Interaction;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Registro central de entidades de interacao no runtime.
 * Mantem capabilities, tags, estados, prioridades e propriedades dinâmicas por GameObject
 * sem forcar modificacao estrutural na classe GameObject.
 */
public class InteractionRegistry implements Serializable {

    public static class InteractableData implements Serializable {
        public boolean enabled = true;
        public int priority = 0;
        public InteractionState state = InteractionState.Idle;
        public final Set<InteractionCapability> capabilities = Collections.synchronizedSet(EnumSet.noneOf(InteractionCapability.class));
        public final Set<String> tags = Collections.synchronizedSet(new HashSet<>());
        public final Map<String, Object> attributes = new ConcurrentHashMap<>();
        public float maxInteractionDistance = 3.5f;
        public float maxInteractionAngle = 60.0f; // graus
        public boolean requireLineOfSight = true;
        public String promptText;
        public String promptIcon;
    }

    private static final Map<GameObject, InteractableData> REGISTRY = Collections.synchronizedMap(new WeakHashMap<>());
    private static final List<GameObject> ACTIVE_INTERACTABLES = new ArrayList<>();

    public static InteractableData getOrCreate(GameObject go) {
        if (go == null) return null;
        synchronized (REGISTRY) {
            InteractableData data = REGISTRY.get(go);
            if (data == null) {
                data = new InteractableData();
                REGISTRY.put(go, data);
                if (!ACTIVE_INTERACTABLES.contains(go)) {
                    ACTIVE_INTERACTABLES.add(go);
                }
            }
            return data;
        }
    }

    public static InteractableData get(GameObject go) {
        if (go == null) return null;
        synchronized (REGISTRY) {
            return REGISTRY.get(go);
        }
    }

    public static boolean isRegistered(GameObject go) {
        if (go == null) return false;
        synchronized (REGISTRY) {
            return REGISTRY.containsKey(go);
        }
    }

    public static void register(GameObject go) {
        getOrCreate(go);
    }

    public static void unregister(GameObject go) {
        if (go == null) return;
        synchronized (REGISTRY) {
            REGISTRY.remove(go);
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
        if (data != null) {
            data.state = state != null ? state : InteractionState.Idle;
        }
    }

    public static InteractionState getState(GameObject go) {
        InteractableData data = get(go);
        return data != null ? data.state : InteractionState.Idle;
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

    public static List<GameObject> getAllActiveInteractables() {
        synchronized (REGISTRY) {
            return new ArrayList<>(ACTIVE_INTERACTABLES);
        }
    }

    public static void clear() {
        synchronized (REGISTRY) {
            REGISTRY.clear();
            ACTIVE_INTERACTABLES.clear();
        }
    }
}
