package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Rigidbody;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionResult;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionState;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13317e;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/** Servico central de grab/drop/throw com Transform Follow e Physics Follow. */
public class GrabService {

    public static class GrabSession {
        public GameObject interactor;
        public GameObject heldObject;
        public Transform cameraTransform;
        public float holdDistance = 2.0f;
        public float followSpeed = 15.0f;
        public float springStrength = 65.0f;
        public float damping = 14.0f;
        public float maxVelocity = 20.0f;
        public float maxGrabDistance = 7.5f;
        public boolean usePhysics = false;
        public Rigidbody rigidbody = null;
        public boolean originalUseGravity = true;
        public final Vector3 commandVelocity = new Vector3();
    }

    private static final Map<GameObject, GrabSession> ACTIVE_GRABS = new ConcurrentHashMap<>();

    public static InteractionResult grab(GameObject interactor, GameObject target, Transform cameraTransform, float holdDistance, float followSpeed, boolean usePhysics) {
        if (!C13317e.J(target)) return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget, "Alvo invalido");
        if (InteractionRegistry.isLocked(target)) return InteractionResult.failure(InteractionResult.FailureReason.Locked, "Objeto trancado");
        if (InteractionRegistry.isBusy(target) || InteractionRegistry.isHeld(target)) return InteractionResult.failure(InteractionResult.FailureReason.Busy, "Objeto ja esta sendo segurado");

        Transform targetTransform = target.J0();
        if (targetTransform != null) {
            Vector3 originPos = targetTransform.J0();
            if (originPos != null && InteractionRegistry.getAttribute(target, "origin_rot") == null) {
                InteractionRegistry.setAttribute(target, "origin_pos", new Vector3(originPos));
            }
            Vector3 targetRot = targetTransform.K0(null);
            if (targetRot != null && InteractionRegistry.getAttribute(target, "origin_rot") == null) {
                InteractionRegistry.setAttribute(target, "origin_rot", new Vector3(targetRot));
            }
        }

        GrabSession session = new GrabSession();
        session.interactor = interactor;
        session.heldObject = target;
        session.cameraTransform = cameraTransform != null ? cameraTransform : (interactor != null ? interactor.J0() : null);
        session.holdDistance = holdDistance > 0f ? holdDistance : 2.0f;
        session.followSpeed = followSpeed > 0f ? followSpeed : 15.0f;
        session.usePhysics = usePhysics;

        if (usePhysics && target.f79286b != null) {
            for (int i = 0; i < target.f79286b.size(); i++) {
                Object comp = target.f79286b.get(i);
                if (comp instanceof Rigidbody) {
                    session.rigidbody = (Rigidbody) comp;
                    session.originalUseGravity = session.rigidbody.useGravity;
                    session.rigidbody.useGravity = false;
                    Vector3 initialVelocity = session.rigidbody.getVelocity();
                    if (initialVelocity != null) session.commandVelocity.set(initialVelocity);
                    break;
                }
            }
        }

        ACTIVE_GRABS.put(interactor != null ? interactor : target, session);
        InteractionRegistry.setHeld(target, true, interactor);
        InteractionRegistry.setBusy(target, true);
        InteractionDispatcher.dispatchCustomEvent("grabbed", target, interactor);
        return InteractionResult.success(target);
    }

    public static void drop(GameObject interactor) {
        if (interactor == null) return;
        GrabSession session = ACTIVE_GRABS.remove(interactor);
        if (session == null) return;

        restorePhysics(session);
        if (C13317e.J(session.heldObject)) {
            InteractionRegistry.setHeld(session.heldObject, false, null);
            InteractionRegistry.setBusy(session.heldObject, false);
            InteractionRegistry.setState(session.heldObject, InteractionState.Dropped);
            InteractionDispatcher.dispatchCustomEvent("dropped", session.heldObject, interactor);
        }
    }

    public static void throwObject(GameObject interactor, Vector3 customDir, float force) {
        if (interactor == null) return;
        GrabSession session = ACTIVE_GRABS.remove(interactor);
        if (session == null || !C13317e.J(session.heldObject)) return;

        GameObject thrownObject = session.heldObject;
        InteractionRegistry.setHeld(thrownObject, false, null);
        InteractionRegistry.setBusy(thrownObject, false);
        InteractionRegistry.setState(thrownObject, InteractionState.Dropped);

        Transform objT = thrownObject.J0();
        if (objT == null) {
            restorePhysics(session);
            InteractionDispatcher.dispatchCustomEvent("thrown", thrownObject, Float.valueOf(force));
            return;
        }

        Vector3 throwDir = new Vector3(0f, 0f, 1f);
        if (customDir != null) throwDir.set(customDir);
        else if (session.cameraTransform != null && session.cameraTransform.forward() != null) throwDir.set(session.cameraTransform.forward());
        normalize(throwDir);

        float throwForce = force > 0f ? force : 12.0f;
        restorePhysics(session);

        if (session.rigidbody != null) {
            Vector3 currentVelocity = session.rigidbody.getVelocity();
            float carryX = currentVelocity != null ? currentVelocity.getX() * 0.30f : 0f;
            float carryY = currentVelocity != null ? currentVelocity.getY() * 0.30f : 0f;
            float carryZ = currentVelocity != null ? currentVelocity.getZ() * 0.30f : 0f;
            session.commandVelocity.set(
                carryX + throwDir.getX() * throwForce,
                carryY + throwDir.getY() * throwForce + 2.0f,
                carryZ + throwDir.getZ() * throwForce
            );
            session.rigidbody.setVelocity(session.commandVelocity);
        } else {
            Vector3 pos = objT.J0();
            if (pos != null) {
                objT.p3(new Vector3(
                    pos.getX() + throwDir.getX() * (throwForce * 0.1f),
                    pos.getY() + throwDir.getY() * (throwForce * 0.1f) + 0.2f,
                    pos.getZ() + throwDir.getZ() * (throwForce * 0.1f)
                ));
            }
        }
        InteractionDispatcher.dispatchCustomEvent("thrown", thrownObject, Float.valueOf(throwForce));
    }

    public static void returnToOrigin(GameObject target) {
        if (!C13317e.J(target)) return;
        Object originObj = InteractionRegistry.getAttribute(target, "origin_pos");
        Object originRot = InteractionRegistry.getAttribute(target, "origin_rot");
        Transform t = target.J0();
        if (t != null) {
            if (originObj instanceof Vector3) t.p3(new Vector3((Vector3) originObj));
            if (originRot instanceof Vector3) t.setRotation((Vector3) originRot);
        }
        InteractionRegistry.setHeld(target, false, null);
        InteractionRegistry.setBusy(target, false);
        InteractionDispatcher.dispatchCustomEvent("returned_to_origin", target, null);
    }

    public static void update(float deltaTime) {
        if (ACTIVE_GRABS.isEmpty()) return;
        float dt = Math.max(0.001f, Math.min(0.05f, deltaTime));

        for (GrabSession session : ACTIVE_GRABS.values()) {
            if (!C13317e.J(session.heldObject)) continue;
            Transform objTransform = session.heldObject.J0();
            Transform camTransform = session.cameraTransform;
            if (objTransform == null || camTransform == null) continue;

            Vector3 camPos = camTransform.J0();
            Vector3 camForward = camTransform.forward();
            if (camPos == null || camForward == null) continue;

            float targetX = camPos.getX() + camForward.getX() * session.holdDistance;
            float targetY = camPos.getY() + camForward.getY() * session.holdDistance;
            float targetZ = camPos.getZ() + camForward.getZ() * session.holdDistance;
            Vector3 curPos = objTransform.J0();
            if (curPos == null) continue;

            float errX = targetX - curPos.getX();
            float errY = targetY - curPos.getY();
            float errZ = targetZ - curPos.getZ();
            float errorMagnitude = (float) Math.sqrt(errX * errX + errY * errY + errZ * errZ);
            if (errorMagnitude > session.maxGrabDistance) {
                drop(session.interactor);
                continue;
            }

            if (session.usePhysics && session.rigidbody != null) {
                Vector3 currentVelocity = session.rigidbody.getVelocity();
                float currentVx = currentVelocity != null ? currentVelocity.getX() : 0f;
                float currentVy = currentVelocity != null ? currentVelocity.getY() : 0f;
                float currentVz = currentVelocity != null ? currentVelocity.getZ() : 0f;
                float accelX = errX * session.springStrength - currentVx * session.damping;
                float accelY = errY * session.springStrength - currentVy * session.damping;
                float accelZ = errZ * session.springStrength - currentVz * session.damping;
                float vx = currentVx + accelX * dt;
                float vy = currentVy + accelY * dt;
                float vz = currentVz + accelZ * dt;
                float velocityMagnitude = (float) Math.sqrt(vx * vx + vy * vy + vz * vz);
                if (velocityMagnitude > session.maxVelocity) {
                    float factor = session.maxVelocity / velocityMagnitude;
                    vx *= factor; vy *= factor; vz *= factor;
                }
                session.commandVelocity.set(vx, vy, vz);
                session.rigidbody.setVelocity(session.commandVelocity);
            } else {
                float lerp = Math.min(1.0f, dt * session.followSpeed);
                objTransform.p3(new Vector3(
                    curPos.getX() + errX * lerp,
                    curPos.getY() + errY * lerp,
                    curPos.getZ() + errZ * lerp
                ));
            }
        }
    }

    private static void restorePhysics(GrabSession session) {
        if (session != null && session.rigidbody != null) session.rigidbody.useGravity = session.originalUseGravity;
    }

    private static void normalize(Vector3 vector) {
        if (vector == null) return;
        float x = vector.getX(), y = vector.getY(), z = vector.getZ();
        float magnitudeSq = x * x + y * y + z * z;
        if (magnitudeSq <= 0.000001f) { vector.set(0f, 0f, 1f); return; }
        float invMagnitude = 1.0f / (float) Math.sqrt(magnitudeSq);
        vector.set(x * invMagnitude, y * invMagnitude, z * invMagnitude);
    }

    public static boolean isHolding(GameObject interactor) { return interactor != null && ACTIVE_GRABS.containsKey(interactor); }
    public static GameObject getHeldObject(GameObject interactor) { if (interactor == null) return null; GrabSession s=ACTIVE_GRABS.get(interactor); return s!=null?s.heldObject:null; }
}
