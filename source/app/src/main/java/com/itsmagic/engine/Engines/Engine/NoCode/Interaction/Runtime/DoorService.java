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
 * Servico central para animacao e controle fisico de portas, gavetas e compartimentos.
 * Atualiza continuamente a interpolacao angular relativa ao angulo inicial a cada frame.
 */
public class DoorService {

    public static class DoorSession {
        public GameObject door;
        public boolean targetOpen;
        public float currentOpenAmount = 0.0f;
        public float targetOpenAmount = 0.0f;
        public float speed = 3.5f;
        public int directionSign = 1;
        public float maxAngleDeg = 90.0f;
        public float initialEulerX = 0.0f;
        public float initialEulerY = 0.0f;
        public float initialEulerZ = 0.0f;
    }

    private static final Map<GameObject, DoorSession> ACTIVE_DOORS = new ConcurrentHashMap<>();

    public static InteractionResult toggleDoor(GameObject door, GameObject interactor, boolean autoDirection) {
        if (!C13317e.J(door)) {
            return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget, "Porta invalida");
        }

        if (InteractionRegistry.isLocked(door)) {
            return InteractionResult.failure(InteractionResult.FailureReason.Locked, "Porta trancada");
        }

        boolean isOpen = InteractionRegistry.isOpen(door);
        return setDoorOpen(door, interactor, !isOpen, autoDirection);
    }

    public static InteractionResult setDoorOpen(GameObject door, GameObject interactor, boolean open, boolean autoDirection) {
        if (!C13317e.J(door)) {
            return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget, "Porta invalida");
        }

        if (InteractionRegistry.isLocked(door)) {
            return InteractionResult.failure(InteractionResult.FailureReason.Locked, "Porta trancada");
        }

        DoorSession session = ACTIVE_DOORS.computeIfAbsent(door, k -> {
            DoorSession s = new DoorSession();
            s.door = door;
            Transform t = door.J0();
            if (t != null && t.f79321B != null) {
                s.initialEulerX = t.f79321B.getX();
                s.initialEulerY = t.f79321B.getY();
                s.initialEulerZ = t.f79321B.getZ();
            }
            return s;
        });

        session.targetOpen = open;
        session.targetOpenAmount = open ? 1.0f : 0.0f;

        // Calculo de lado de abertura (Away From Player) via Dot Product
        if (autoDirection && open && C13317e.J(interactor)) {
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
                    session.directionSign = (dot > 0f) ? -1 : 1;
                }
            }
        }

        InteractionRegistry.setOpen(door, open);
        return InteractionResult.success(door);
    }

    public static void update(float deltaTime) {
        if (ACTIVE_DOORS.isEmpty()) return;

        for (DoorSession session : ACTIVE_DOORS.values()) {
            if (!C13317e.J(session.door)) continue;

            if (Math.abs(session.currentOpenAmount - session.targetOpenAmount) < 0.001f) {
                session.currentOpenAmount = session.targetOpenAmount;
                continue;
            }

            float step = deltaTime * session.speed;
            if (session.currentOpenAmount < session.targetOpenAmount) {
                session.currentOpenAmount = Math.min(session.targetOpenAmount, session.currentOpenAmount + step);
            } else {
                session.currentOpenAmount = Math.max(session.targetOpenAmount, session.currentOpenAmount - step);
            }

            InteractionRegistry.InteractableData data = InteractionRegistry.get(session.door);
            if (data != null) {
                data.openAmount = session.currentOpenAmount;
            }

            // Aplica rotacao relativa ao angulo inicial do objeto
            Transform t = session.door.J0();
            if (t != null && t.f79321B != null) {
                float targetAngle = session.initialEulerY + (session.directionSign * session.currentOpenAmount * session.maxAngleDeg);
                t.f79321B.setY(targetAngle);
            }
        }
    }
}
