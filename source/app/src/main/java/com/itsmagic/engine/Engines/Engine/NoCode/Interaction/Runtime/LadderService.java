package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionResult;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13317e;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/** Sessao de escada com entrada, movimento no eixo configuravel e saida. */
public final class LadderService {

    public static class LadderSession {
        GameObject interactor;
        GameObject ladder;
        final Vector3 exitOrigin = new Vector3();
    }

    private static final Map<GameObject, LadderSession> SESSIONS = new ConcurrentHashMap<>();

    private LadderService() {}

    public static InteractionResult enter(GameObject interactor, GameObject ladder) {
        if (!C13317e.J(interactor) || !C13317e.J(ladder) || interactor.J0() == null || ladder.J0() == null) {
            return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget, "Escada invalida");
        }

        LadderSession existing = SESSIONS.get(interactor);
        if (existing != null && existing.ladder == ladder) return InteractionResult.success(ladder);
        if (InteractionRegistry.isBusy(ladder)) {
            Object current = InteractionRegistry.getAttribute(ladder, "ladder_user");
            if (current != interactor) return InteractionResult.failure(InteractionResult.FailureReason.Occupied, "Escada ocupada");
        }
        if (existing != null) exit(interactor, null);

        LadderSession session = new LadderSession();
        session.interactor = interactor;
        session.ladder = ladder;
        Vector3 old = interactor.J0().J0();
        if (old != null) session.exitOrigin.set(old);

        Vector3 ladderPos = ladder.J0().J0();
        if (ladderPos != null) interactor.J0().p3(new Vector3(ladderPos));
        SESSIONS.put(interactor, session);
        InteractionRegistry.setBusy(ladder, true);
        InteractionRegistry.setAttribute(ladder, "ladder_user", interactor);
        InteractionRegistry.setAttribute(interactor, "current_ladder", ladder);
        InteractionDispatcher.dispatchCustomEvent("ladder_enter", ladder, interactor);
        return InteractionResult.success(ladder);
    }

    public static InteractionResult climb(GameObject interactor, float amount) {
        LadderSession session = SESSIONS.get(interactor);
        if (session == null || !C13317e.J(session.ladder) || interactor.J0() == null || interactor.J0().J0() == null) {
            return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget, "Interactor nao esta na escada");
        }

        float dx = numberAttr(session.ladder, "ladder_dir_x", 0f);
        float dy = numberAttr(session.ladder, "ladder_dir_y", 1f);
        float dz = numberAttr(session.ladder, "ladder_dir_z", 0f);
        float mag = (float) Math.sqrt(dx * dx + dy * dy + dz * dz);
        if (mag < 0.0001f) { dx = 0f; dy = 1f; dz = 0f; mag = 1f; }
        dx /= mag; dy /= mag; dz /= mag;

        Vector3 pos = interactor.J0().J0();
        interactor.J0().p3(new Vector3(
            pos.getX() + dx * amount,
            pos.getY() + dy * amount,
            pos.getZ() + dz * amount
        ));
        InteractionDispatcher.dispatchCustomEvent("ladder_climb", session.ladder, Float.valueOf(amount));
        return InteractionResult.success(session.ladder);
    }

    public static InteractionResult exit(GameObject interactor, GameObject exitPoint) {
        if (interactor == null) return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget);
        LadderSession session = SESSIONS.remove(interactor);
        if (session == null) return InteractionResult.success(interactor);

        if (interactor.J0() != null) {
            Vector3 destination = C13317e.J(exitPoint) && exitPoint.J0() != null ? exitPoint.J0().J0() : null;
            if (destination != null) interactor.J0().p3(new Vector3(destination));
            else interactor.J0().p3(new Vector3(session.exitOrigin));
        }

        InteractionRegistry.setBusy(session.ladder, false);
        InteractionRegistry.setAttribute(session.ladder, "ladder_user", null);
        InteractionRegistry.setAttribute(interactor, "current_ladder", null);
        InteractionDispatcher.dispatchCustomEvent("ladder_exit", session.ladder, interactor);
        return InteractionResult.success(session.ladder);
    }

    public static boolean isOnLadder(GameObject interactor) { return interactor != null && SESSIONS.containsKey(interactor); }

    private static float numberAttr(GameObject object, String key, float fallback) {
        Object value = InteractionRegistry.getAttribute(object, key);
        return value instanceof Number ? ((Number) value).floatValue() : fallback;
    }
}
