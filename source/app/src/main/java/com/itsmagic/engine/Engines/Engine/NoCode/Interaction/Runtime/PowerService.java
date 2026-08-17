package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/** Rede leve de energia: alvos acompanham continuamente o estado de sua fonte. */
public final class PowerService {
    private static final Map<GameObject, GameObject> CONNECTIONS = new ConcurrentHashMap<>();
    private static float accumulator;
    private static final float UPDATE_INTERVAL = 0.10f;

    private PowerService() {}

    public static void connect(GameObject source, GameObject target) {
        if (!C13317e.J(source) || !C13317e.J(target) || source == target || wouldCreateCycle(source, target)) return;
        InteractionRegistry.register(source);
        InteractionRegistry.register(target);
        CONNECTIONS.put(target, source);
        InteractionRegistry.setAttribute(target, "power_source", source);
        apply(source, target);
        InteractionDispatcher.dispatchCustomEvent("power_connected", target, source);
    }

    public static void disconnect(GameObject target) {
        if (!C13317e.J(target)) return;
        GameObject source = CONNECTIONS.remove(target);
        InteractionRegistry.setAttribute(target, "power_source", null);
        InteractionRegistry.setPowered(target, false);
        InteractionDispatcher.dispatchCustomEvent("power_disconnected", target, source);
    }

    public static GameObject getSource(GameObject target) {
        if (target == null) return null;
        GameObject source = CONNECTIONS.get(target);
        if (C13317e.J(source)) return source;
        Object attr = InteractionRegistry.getAttribute(target, "power_source");
        return attr instanceof GameObject && C13317e.J((GameObject) attr) ? (GameObject) attr : null;
    }

    public static void update(float deltaTime) {
        accumulator += Math.max(0f, deltaTime);
        if (accumulator < UPDATE_INTERVAL) return;
        accumulator = 0f;

        for (Map.Entry<GameObject, GameObject> entry : CONNECTIONS.entrySet()) {
            GameObject target = entry.getKey();
            GameObject source = entry.getValue();
            if (!C13317e.J(target)) {
                CONNECTIONS.remove(target);
                continue;
            }
            if (!C13317e.J(source)) {
                disconnect(target);
                continue;
            }
            apply(source, target);
        }
    }

    public static void clear() {
        CONNECTIONS.clear();
        accumulator = 0f;
    }

    private static void apply(GameObject source, GameObject target) {
        boolean oldPowered = InteractionRegistry.isPowered(target);
        boolean newPowered = InteractionRegistry.isEnabled(source) && InteractionRegistry.isPowered(source);
        if (oldPowered != newPowered) {
            InteractionRegistry.setPowered(target, newPowered);
            InteractionDispatcher.dispatchCustomEvent(newPowered ? "power_on" : "power_off", target, source);
        }
    }

    private static boolean wouldCreateCycle(GameObject source, GameObject target) {
        GameObject cursor = source;
        int guard = 0;
        while (C13317e.J(cursor) && guard++ < 128) {
            if (cursor == target) return true;
            cursor = CONNECTIONS.get(cursor);
        }
        return false;
    }
}
