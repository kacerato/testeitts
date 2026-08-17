package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Gerenciador de cooldowns para interacoes repetitivas.
 */
public class InteractionCooldownManager {

    private static final Map<String, Long> COOLDOWNS = new ConcurrentHashMap<>();

    private static String getKey(GameObject go, String action) {
        int id = C13317e.J(go) ? System.identityHashCode(go) : 0;
        return id + ":" + (action != null ? action.trim().toLowerCase() : "default");
    }

    public static void setCooldown(GameObject go, String action, float durationSeconds) {
        String key = getKey(go, action);
        long readyTime = System.currentTimeMillis() + (long)(durationSeconds * 1000f);
        COOLDOWNS.put(key, readyTime);
    }

    public static boolean isReady(GameObject go, String action) {
        String key = getKey(go, action);
        Long readyTime = COOLDOWNS.get(key);
        if (readyTime == null) return true;
        return System.currentTimeMillis() >= readyTime;
    }

    public static float getRemainingTime(GameObject go, String action) {
        String key = getKey(go, action);
        Long readyTime = COOLDOWNS.get(key);
        if (readyTime == null) return 0f;
        long diff = readyTime - System.currentTimeMillis();
        return diff > 0 ? (diff / 1000f) : 0f;
    }

    public static void resetCooldown(GameObject go, String action) {
        String key = getKey(go, action);
        COOLDOWNS.remove(key);
    }

    public static void clear() {
        COOLDOWNS.clear();
    }
}
