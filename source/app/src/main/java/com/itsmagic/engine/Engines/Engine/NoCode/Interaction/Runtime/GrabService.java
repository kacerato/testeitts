package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCapability;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionResult;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionState;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13317e;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Servico central de manipulacao fisica e cinematica de objetos pegos (Grab, Inspect, Throw, Drop).
 * Atualizado a cada tick no runtime para mover os objetos de forma estavel no espaco 3D.
 */
public class GrabService {

    public static class GrabSession {
        public GameObject interactor;
        public GameObject heldObject;
        public Transform cameraTransform;
        public float holdDistance = 2.0f;
        public float followSpeed = 15.0f;
        public boolean usePhysics = false;
        public final Vector3 targetHoldPos = new Vector3();
        public final Vector3 currentPos = new Vector3();
    }

    private static final Map<GameObject, GrabSession> ACTIVE_GRABS = new ConcurrentHashMap<>();

    public static InteractionResult grab(GameObject interactor, GameObject target, Transform cameraTransform, float holdDistance, float followSpeed, boolean usePhysics) {
        if (!C13317e.J(target)) {
            return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget, "Alvo invalido");
        }

        if (InteractionRegistry.isLocked(target)) {
            return InteractionResult.failure(InteractionResult.FailureReason.Locked, "Objeto trancado");
        }

        if (InteractionRegistry.isBusy(target) || InteractionRegistry.isHeld(target)) {
            return InteractionResult.failure(InteractionResult.FailureReason.Busy, "Objeto ja esta sendo segurado");
        }

        // Armazena a posicao original se ainda nao tiver
        Transform targetTransform = target.J0();
        if (targetTransform != null) {
            Vector3 originPos = targetTransform.J0();
            if (originPos != null && InteractionRegistry.getAttribute(target, "origin_pos") == null) {
                InteractionRegistry.setAttribute(target, "origin_pos", new Vector3(originPos));
            }
        }

        GrabSession session = new GrabSession();
        session.interactor = interactor;
        session.heldObject = target;
        session.cameraTransform = cameraTransform != null ? cameraTransform : (interactor != null ? interactor.J0() : null);
        session.holdDistance = holdDistance > 0f ? holdDistance : 2.0f;
        session.followSpeed = followSpeed > 0f ? followSpeed : 15.0f;
        session.usePhysics = usePhysics;

        ACTIVE_GRABS.put(interactor != null ? interactor : target, session);
        InteractionRegistry.setHeld(target, true, interactor);
        InteractionRegistry.setBusy(target, true);

        return InteractionResult.success(target);
    }

    public static void drop(GameObject interactor) {
        if (interactor == null) return;
        GrabSession session = ACTIVE_GRABS.remove(interactor);
        if (session != null && C13317e.J(session.heldObject)) {
            InteractionRegistry.setHeld(session.heldObject, false, null);
            InteractionRegistry.setBusy(session.heldObject, false);
            InteractionRegistry.setState(session.heldObject, InteractionState.Dropped);
        }
    }

    public static void throwObject(GameObject interactor, Vector3 customDir, float force) {
        if (interactor == null) return;
        GrabSession session = ACTIVE_GRABS.remove(interactor);
        if (session != null && C13317e.J(session.heldObject)) {
            InteractionRegistry.setHeld(session.heldObject, false, null);
            InteractionRegistry.setBusy(session.heldObject, false);
            InteractionRegistry.setState(session.heldObject, InteractionState.Dropped);

            Transform objT = session.heldObject.J0();
            if (objT != null) {
                Vector3 throwDir = new Vector3(0f, 0f, 1f);
                if (customDir != null) {
                    throwDir.set(customDir);
                } else if (session.cameraTransform != null && session.cameraTransform.forward() != null) {
                    throwDir.set(session.cameraTransform.forward());
                }

                float f = force > 0f ? force : 10.0f;
                // Aplica deslocamento inicial ou impulso
                Vector3 pos = objT.J0();
                if (pos != null) {
                    objT.f79337l.f(new Vector3(
                        pos.getX() + throwDir.getX() * (f * 0.05f),
                        pos.getY() + throwDir.getY() * (f * 0.05f) + 0.1f,
                        pos.getZ() + throwDir.getZ() * (f * 0.05f)
                    ));
                }
            }
        }
    }

    public static void returnToOrigin(GameObject target) {
        if (!C13317e.J(target)) return;
        Object originObj = InteractionRegistry.getAttribute(target, "origin_pos");
        if (originObj instanceof Vector3) {
            Transform t = target.J0();
            if (t != null) {
                t.f79337l.f((Vector3) originObj);
            }
        }
        InteractionRegistry.setHeld(target, false, null);
        InteractionRegistry.setBusy(target, false);
    }

    public static void update(float deltaTime) {
        if (ACTIVE_GRABS.isEmpty()) return;

        for (GrabSession session : ACTIVE_GRABS.values()) {
            if (!C13317e.J(session.heldObject)) continue;

            Transform objTransform = session.heldObject.J0();
            Transform camTransform = session.cameraTransform;
            if (objTransform == null || camTransform == null) continue;

            Vector3 camPos = camTransform.J0();
            Vector3 camForward = camTransform.forward();
            if (camPos == null || camForward == null) continue;

            // Ponto desejado na frente da camera: camPos + camForward * holdDistance
            float targetX = camPos.getX() + camForward.getX() * session.holdDistance;
            float targetY = camPos.getY() + camForward.getY() * session.holdDistance;
            float targetZ = camPos.getZ() + camForward.getZ() * session.holdDistance;

            Vector3 curPos = objTransform.J0();
            if (curPos == null) continue;

            // Interpolacao suave (lerp) em direcao ao ponto de segurar
            float t = Math.min(1.0f, deltaTime * session.followSpeed);
            float newX = curPos.getX() + (targetX - curPos.getX()) * t;
            float newY = curPos.getY() + (targetY - curPos.getY()) * t;
            float newZ = curPos.getZ() + (targetZ - curPos.getZ()) * t;

            objTransform.f79337l.f(new Vector3(newX, newY, newZ));
        }
    }

    public static boolean isHolding(GameObject interactor) {
        return interactor != null && ACTIVE_GRABS.containsKey(interactor);
    }

    public static GameObject getHeldObject(GameObject interactor) {
        if (interactor == null) return null;
        GrabSession session = ACTIVE_GRABS.get(interactor);
        return session != null ? session.heldObject : null;
    }
}
