package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionResult;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13317e;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/** Runtime central para elevadores multinivel, sem teleporte instantaneo entre andares. */
public final class ElevatorService {

    public static class ElevatorSession {
        GameObject elevator;
        int currentFloor;
        int targetFloor;
        float floorHeight;
        float speed;
        float baseX;
        float baseY;
        float baseZ;
        boolean moving;
    }

    private static final Map<GameObject, ElevatorSession> ACTIVE = new ConcurrentHashMap<>();

    private ElevatorService() {}

    public static InteractionResult moveToFloor(GameObject elevator, int targetFloor, float speed, float floorHeight) {
        if (!C13317e.J(elevator) || elevator.J0() == null) {
            return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget, "Elevador invalido");
        }

        Object currentObj = InteractionRegistry.getAttribute(elevator, "current_floor");
        int currentFloor = currentObj instanceof Number ? ((Number) currentObj).intValue() : 0;
        float safeFloorHeight = floorHeight > 0.01f ? floorHeight : 3.0f;
        float safeSpeed = speed > 0.01f ? speed : 3.0f;

        ElevatorSession session = ACTIVE.get(elevator);
        if (session == null) {
            session = new ElevatorSession();
            session.elevator = elevator;
            Vector3 pos = elevator.J0().J0();
            if (pos == null) {
                return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget, "Transform invalido");
            }
            session.baseX = pos.getX();
            session.baseY = pos.getY() - currentFloor * safeFloorHeight;
            session.baseZ = pos.getZ();
            ACTIVE.put(elevator, session);
        }

        session.currentFloor = currentFloor;
        session.targetFloor = targetFloor;
        session.floorHeight = safeFloorHeight;
        session.speed = safeSpeed;
        session.moving = currentFloor != targetFloor;

        InteractionRegistry.setAttribute(elevator, "elevator_state", session.moving
            ? (targetFloor > currentFloor ? "MovingUp" : "MovingDown")
            : "Idle");
        InteractionRegistry.setBusy(elevator, session.moving);

        if (!session.moving) {
            InteractionDispatcher.dispatchCustomEvent("elevator_arrived", elevator, Integer.valueOf(targetFloor));
        } else {
            InteractionDispatcher.dispatchCustomEvent("elevator_departed", elevator, Integer.valueOf(currentFloor));
        }
        return InteractionResult.success(elevator);
    }

    public static void stop(GameObject elevator) {
        ElevatorSession session = ACTIVE.get(elevator);
        if (session == null) return;
        session.moving = false;
        InteractionRegistry.setBusy(elevator, false);
        InteractionRegistry.setAttribute(elevator, "elevator_state", "Idle");
        InteractionDispatcher.dispatchCustomEvent("elevator_stopped", elevator, Integer.valueOf(session.currentFloor));
    }

    public static String getState(GameObject elevator) {
        Object state = InteractionRegistry.getAttribute(elevator, "elevator_state");
        return state != null ? String.valueOf(state) : "Idle";
    }

    public static int getCurrentFloor(GameObject elevator) {
        Object value = InteractionRegistry.getAttribute(elevator, "current_floor");
        return value instanceof Number ? ((Number) value).intValue() : 0;
    }

    public static void update(float deltaTime) {
        if (ACTIVE.isEmpty()) return;
        float dt = Math.max(0.001f, Math.min(0.05f, deltaTime));

        for (ElevatorSession session : ACTIVE.values()) {
            if (!session.moving || !C13317e.J(session.elevator)) continue;
            Transform transform = session.elevator.J0();
            if (transform == null) continue;
            Vector3 pos = transform.J0();
            if (pos == null) continue;

            float targetY = session.baseY + session.targetFloor * session.floorHeight;
            float delta = targetY - pos.getY();
            float maxStep = session.speed * dt;

            if (Math.abs(delta) <= Math.max(0.005f, maxStep)) {
                transform.setPosition(session.baseX, targetY, session.baseZ);
                session.currentFloor = session.targetFloor;
                session.moving = false;
                InteractionRegistry.setAttribute(session.elevator, "current_floor", Integer.valueOf(session.currentFloor));
                InteractionRegistry.setAttribute(session.elevator, "elevator_state", "Idle");
                InteractionRegistry.setBusy(session.elevator, false);
                InteractionDispatcher.dispatchCustomEvent("elevator_arrived", session.elevator, Integer.valueOf(session.currentFloor));
                continue;
            }

            float nextY = pos.getY() + Math.signum(delta) * maxStep;
            transform.setPosition(session.baseX, nextY, session.baseZ);
        }
    }
}
