package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionResult;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13317e;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Servico central para portas, gavetas e compartimentos.
 * Um unico controller suporta diferentes modos sem multiplicar nodes por tipo de porta.
 */
public final class DoorService {

    public enum DoorMode {
        Hinged,
        Sliding,
        Vertical,
        Drawer,
        Garage
    }

    public static class DoorSession {
        public GameObject door;
        public boolean targetOpen;
        public float currentOpenAmount = 0.0f;
        public float targetOpenAmount = 0.0f;
        public float speed = 3.5f;
        public int directionSign = 1;
        public float maxAngleDeg = 90.0f;
        public float travelDistance = 2.0f;
        public DoorMode mode = DoorMode.Hinged;

        public float initialX;
        public float initialY;
        public float initialZ;
        public float initialEulerY;
    }

    private static final Map<GameObject, DoorSession> ACTIVE_DOORS = new ConcurrentHashMap<>();

    private DoorService() {}

    public static DoorMode parseMode(String value) {
        if (value == null) return DoorMode.Hinged;
        for (DoorMode mode : DoorMode.values()) {
            if (mode.name().equalsIgnoreCase(value.trim())) return mode;
        }
        if ("SlidingDoor".equalsIgnoreCase(value)) return DoorMode.Sliding;
        if ("GarageDoor".equalsIgnoreCase(value)) return DoorMode.Garage;
        return DoorMode.Hinged;
    }

    public static DoorSession configure(GameObject door, String mode, float speed, float maxAngleDeg, float travelDistance) {
        DoorSession session = getOrCreate(door);
        if (session == null) return null;
        session.mode = parseMode(mode);
        if (speed > 0f) session.speed = speed;
        if (maxAngleDeg > 0f) session.maxAngleDeg = maxAngleDeg;
        if (travelDistance > 0f) session.travelDistance = travelDistance;
        return session;
    }

    private static DoorSession getOrCreate(GameObject door) {
        if (!C13317e.J(door)) return null;
        DoorSession session = ACTIVE_DOORS.get(door);
        if (session != null) return session;

        Transform t = door.J0();
        if (t == null) return null;
        Vector3 pos = t.J0();

        DoorSession created = new DoorSession();
        created.door = door;
        if (pos != null) {
            created.initialX = pos.getX();
            created.initialY = pos.getY();
            created.initialZ = pos.getZ();
        }
        created.initialEulerY = t.getRotationY();
        ACTIVE_DOORS.put(door, created);
        return created;
    }

    public static InteractionResult toggleDoor(GameObject door, GameObject interactor, boolean autoDirection) {
        if (!C13317e.J(door)) return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget, "Porta invalida");
        if (InteractionRegistry.isLocked(door)) return InteractionResult.failure(InteractionResult.FailureReason.Locked, "Porta trancada");
        return setDoorOpen(door, interactor, !InteractionRegistry.isOpen(door), autoDirection);
    }

    public static InteractionResult setDoorOpen(GameObject door, GameObject interactor, boolean open, boolean autoDirection) {
        return setDoorOpenAmount(door, interactor, open ? 1f : 0f, autoDirection);
    }

    public static InteractionResult setDoorOpenAmount(GameObject door, GameObject interactor, float amount, boolean autoDirection) {
        if (!C13317e.J(door)) return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget, "Porta invalida");
        if (InteractionRegistry.isLocked(door)) return InteractionResult.failure(InteractionResult.FailureReason.Locked, "Porta trancada");
        if (!InteractionRegistry.isPowered(door) && Boolean.TRUE.equals(InteractionRegistry.getAttribute(door, "requires_power"))) {
            return InteractionResult.failure(InteractionResult.FailureReason.Disabled, "Porta sem energia");
        }

        DoorSession session = getOrCreate(door);
        if (session == null) return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget, "Transform invalido");

        float clamped = Math.max(0f, Math.min(1f, amount));
        session.targetOpen = clamped > 0.001f;
        session.targetOpenAmount = clamped;

        if (autoDirection && clamped > session.currentOpenAmount && session.mode == DoorMode.Hinged && C13317e.J(interactor)) {
            Transform doorT = door.J0();
            Transform playerT = interactor.J0();
            if (doorT != null && playerT != null) {
                Vector3 doorPos = doorT.J0();
                Vector3 playerPos = playerT.J0();
                Vector3 doorForward = doorT.forward();
                if (doorPos != null && playerPos != null && doorForward != null) {
                    float dx = playerPos.getX() - doorPos.getX();
                    float dy = playerPos.getY() - doorPos.getY();
                    float dz = playerPos.getZ() - doorPos.getZ();
                    float dot = dx * doorForward.getX() + dy * doorForward.getY() + dz * doorForward.getZ();
                    session.directionSign = dot > 0f ? -1 : 1;
                }
            }
        }

        InteractionRegistry.setOpenAmount(door, clamped);
        InteractionDispatcher.dispatchCustomEvent("door_target_changed", door, Float.valueOf(clamped));
        return InteractionResult.success(door);
    }

    public static void update(float deltaTime) {
        if (ACTIVE_DOORS.isEmpty()) return;
        float dt = Math.max(0.001f, Math.min(0.05f, deltaTime));

        for (DoorSession session : ACTIVE_DOORS.values()) {
            if (!C13317e.J(session.door)) continue;

            float before = session.currentOpenAmount;
            if (Math.abs(before - session.targetOpenAmount) < 0.001f) {
                session.currentOpenAmount = session.targetOpenAmount;
            } else {
                float step = dt * session.speed;
                if (before < session.targetOpenAmount) session.currentOpenAmount = Math.min(session.targetOpenAmount, before + step);
                else session.currentOpenAmount = Math.max(session.targetOpenAmount, before - step);
            }

            applyTransform(session);
            InteractionRegistry.setOpenAmount(session.door, session.currentOpenAmount);

            boolean reached = Math.abs(session.currentOpenAmount - session.targetOpenAmount) < 0.001f;
            if (reached && Math.abs(before - session.currentOpenAmount) >= 0.001f) {
                InteractionDispatcher.dispatchCustomEvent(
                    session.currentOpenAmount <= 0.001f ? "door_closed" : (session.currentOpenAmount >= 0.999f ? "door_opened" : "door_amount_reached"),
                    session.door,
                    Float.valueOf(session.currentOpenAmount)
                );
            }
        }
    }

    private static void applyTransform(DoorSession session) {
        Transform t = session.door.J0();
        if (t == null) return;
        float amount = session.currentOpenAmount;

        switch (session.mode) {
            case Sliding:
                t.setPosition(
                    session.initialX + session.directionSign * session.travelDistance * amount,
                    session.initialY,
                    session.initialZ
                );
                break;
            case Vertical:
            case Garage:
                t.setPosition(
                    session.initialX,
                    session.initialY + session.travelDistance * amount,
                    session.initialZ
                );
                break;
            case Drawer:
                t.setPosition(
                    session.initialX,
                    session.initialY,
                    session.initialZ + session.directionSign * session.travelDistance * amount
                );
                break;
            case Hinged:
            default:
                float targetAngle = session.initialEulerY + session.directionSign * amount * session.maxAngleDeg;
                t.setRotation(0.0f, targetAngle, 0.0f);
                break;
        }
    }
}
