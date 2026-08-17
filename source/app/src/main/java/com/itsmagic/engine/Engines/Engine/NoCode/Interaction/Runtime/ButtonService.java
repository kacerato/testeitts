package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionResult;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/** Runtime compartilhado para botoes Momentary, Toggle, OneShot, Hold e Timed. */
public final class ButtonService {
    private static final Map<GameObject, Long> TIMED_RELEASES = new ConcurrentHashMap<>();

    private ButtonService() {}

    public static InteractionResult press(GameObject button, String type, float timedDuration) {
        if (!C13317e.J(button)) return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget);
        if (!InteractionRegistry.isEnabled(button)) return InteractionResult.failure(InteractionResult.FailureReason.Disabled);
        if (InteractionRegistry.isLocked(button)) return InteractionResult.failure(InteractionResult.FailureReason.Locked);

        String mode = type == null ? "Toggle" : type.trim();
        if ("OneShot".equalsIgnoreCase(mode)) {
            if (Boolean.TRUE.equals(InteractionRegistry.getAttribute(button, "button_used"))) {
                return InteractionResult.failure(InteractionResult.FailureReason.Cooldown, "OneShot ja utilizado");
            }
            InteractionRegistry.setAttribute(button, "button_used", Boolean.TRUE);
            InteractionRegistry.setOn(button, true);
        } else if ("Toggle".equalsIgnoreCase(mode)) {
            InteractionRegistry.setOn(button, !InteractionRegistry.isOn(button));
        } else {
            InteractionRegistry.setOn(button, true);
            if ("Timed".equalsIgnoreCase(mode)) {
                long durationMs = (long) (Math.max(0.05f, timedDuration) * 1000f);
                TIMED_RELEASES.put(button, System.currentTimeMillis() + durationMs);
            }
        }

        InteractionDispatcher.dispatchCustomEvent("button_pressed", button, Boolean.valueOf(InteractionRegistry.isOn(button)));
        return InteractionResult.success(button);
    }

    public static InteractionResult release(GameObject button, String type) {
        if (!C13317e.J(button)) return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget);
        String mode = type == null ? "Momentary" : type.trim();

        if ("Momentary".equalsIgnoreCase(mode) || "Hold".equalsIgnoreCase(mode)) {
            InteractionRegistry.setOn(button, false);
            InteractionDispatcher.dispatchCustomEvent("button_released", button, Boolean.FALSE);
        }
        return InteractionResult.success(button);
    }

    public static void resetOneShot(GameObject button) {
        if (!C13317e.J(button)) return;
        InteractionRegistry.setAttribute(button, "button_used", null);
        InteractionRegistry.setOn(button, false);
        TIMED_RELEASES.remove(button);
    }

    public static void update(float deltaTime) {
        if (TIMED_RELEASES.isEmpty()) return;
        long now = System.currentTimeMillis();
        for (Map.Entry<GameObject, Long> entry : TIMED_RELEASES.entrySet()) {
            GameObject button = entry.getKey();
            if (!C13317e.J(button)) {
                TIMED_RELEASES.remove(button);
                continue;
            }
            Long end = entry.getValue();
            if (end != null && now >= end.longValue()) {
                TIMED_RELEASES.remove(button);
                InteractionRegistry.setOn(button, false);
                InteractionDispatcher.dispatchCustomEvent("button_released", button, Boolean.FALSE);
            }
        }
    }
}
