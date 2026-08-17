package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionResult;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13317e;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/** Runtime para inspecao/rotacao/zoom de objetos sem acoplar isso aos nodes. */
public final class InspectService {

    public static class InspectSession {
        GameObject interactor;
        GameObject object;
        Transform camera;
        float distance = 1.5f;
        float followSpeed = 15f;
        boolean returnOnStop = true;
        final Vector3 originPosition = new Vector3();
        final Vector3 originRotation = new Vector3();
    }

    private static final Map<GameObject, InspectSession> SESSIONS = new ConcurrentHashMap<>();

    private InspectService() {}

    public static InteractionResult start(GameObject interactor, GameObject object, Transform camera, float distance, boolean returnOnStop) {
        if (!C13317e.J(interactor) || !C13317e.J(object) || object.J0() == null) {
            return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget);
        }
        if (InteractionRegistry.isBusy(object) && !isInspecting(interactor, object)) {
            return InteractionResult.failure(InteractionResult.FailureReason.Busy);
        }

        stop(interactor);
        InspectSession session = new InspectSession();
        session.interactor = interactor;
        session.object = object;
        session.camera = camera != null ? camera : interactor.J0();
        session.distance = distance > 0.05f ? distance : 1.5f;
        session.returnOnStop = returnOnStop;

        Vector3 pos = object.J0().J0();
        if (pos != null) session.originPosition.set(pos);
        Vector3 rot = object.J0().K0(null);
        if (rot != null) session.originRotation.set(rot);

        SESSIONS.put(interactor, session);
        InteractionRegistry.setBusy(object, true);
        InteractionRegistry.setAttribute(object, "inspecting_by", interactor);
        InteractionDispatcher.dispatchCustomEvent("inspect_started", object, interactor);
        return InteractionResult.success(object);
    }

    public static void stop(GameObject interactor) {
        if (interactor == null) return;
        InspectSession session = SESSIONS.remove(interactor);
        if (session == null || !C13317e.J(session.object)) return;

        if (session.returnOnStop && session.object.J0() != null) {
            session.object.J0().p3(new Vector3(session.originPosition));
            session.object.J0().setRotation(session.originRotation);
        }
        InteractionRegistry.setBusy(session.object, false);
        InteractionRegistry.setAttribute(session.object, "inspecting_by", null);
        InteractionDispatcher.dispatchCustomEvent("inspect_stopped", session.object, interactor);
    }

    public static void rotate(GameObject interactor, float pitchDelta, float yawDelta) {
        InspectSession session = SESSIONS.get(interactor);
        if (session == null || !C13317e.J(session.object) || session.object.J0() == null) return;
        Vector3 rot = session.object.J0().K0(null);
        if (rot != null) {
            session.object.J0().setRotation(rot.getX() + pitchDelta, rot.getY() + yawDelta, rot.getZ());
        }
    }

    public static void zoom(GameObject interactor, float delta, float minDistance, float maxDistance) {
        InspectSession session = SESSIONS.get(interactor);
        if (session == null) return;
        float min = Math.max(0.1f, minDistance);
        float max = Math.max(min, maxDistance);
        session.distance = Math.max(min, Math.min(max, session.distance + delta));
    }

    public static GameObject getInspectedObject(GameObject interactor) {
        InspectSession session = SESSIONS.get(interactor);
        return session != null ? session.object : null;
    }

    public static boolean isInspecting(GameObject interactor, GameObject object) {
        InspectSession session = SESSIONS.get(interactor);
        return session != null && session.object == object;
    }

    public static void update(float deltaTime) {
        if (SESSIONS.isEmpty()) return;
        float dt = Math.max(0.001f, Math.min(0.05f, deltaTime));
        for (InspectSession session : SESSIONS.values()) {
            if (!C13317e.J(session.object) || session.object.J0() == null || session.camera == null) continue;
            Vector3 camPos = session.camera.J0();
            Vector3 forward = session.camera.forward();
            Vector3 cur = session.object.J0().J0();
            if (camPos == null || forward == null || cur == null) continue;

            float tx = camPos.getX() + forward.getX() * session.distance;
            float ty = camPos.getY() + forward.getY() * session.distance;
            float tz = camPos.getZ() + forward.getZ() * session.distance;
            float t = Math.min(1f, dt * session.followSpeed);
            session.object.J0().p3(new Vector3(
                cur.getX() + (tx - cur.getX()) * t,
                cur.getY() + (ty - cur.getY()) * t,
                cur.getZ() + (tz - cur.getZ()) * t
            ));
        }
    }
}
