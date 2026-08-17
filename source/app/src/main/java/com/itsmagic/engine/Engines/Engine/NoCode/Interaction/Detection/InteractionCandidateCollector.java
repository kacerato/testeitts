package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Detection;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.PhysicsComponent;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCandidate;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import com.jme3.bullet.collision.PhysicsRayTestResult;
import com.jme3.math.Vector3f;
import gb.C13317e;
import java.util.ArrayList;
import java.util.List;

/**
 * Coletor centralizado de candidatos.
 * A selecao continua usando distancia/angulo/prioridade, mas Line Of Sight e Hit Result
 * sao obtidos do mesmo PhysicsSpace/Bullet usado pela engine, sem varrer interactables como obstaculos.
 */
public class InteractionCandidateCollector {

    private final Vector3 tempOrigin = new Vector3();
    private final Vector3 tempTargetPos = new Vector3();
    private final Vector3 tempForward = new Vector3();

    private final Vector3f rayFrom = new Vector3f();
    private final Vector3f rayTo = new Vector3f();
    private final Vector3f tempHitNormal = new Vector3f();
    private final List<PhysicsRayTestResult> rayResults = new ArrayList<>(8);

    public void collect(
        GameObject interactor,
        Transform cameraTransform,
        float maxDistance,
        float maxAngleDeg,
        List<InteractionCandidate> outCandidates
    ) {
        if (!C13317e.J(interactor) || outCandidates == null) return;

        Transform rayOriginTransform = (cameraTransform != null) ? cameraTransform : interactor.J0();
        if (rayOriginTransform == null) return;

        rayOriginTransform.K0(tempOrigin);
        Vector3 forward = rayOriginTransform.forward();
        if (forward != null) {
            tempForward.set(forward);
        } else {
            tempForward.set(0f, 0f, 1f);
        }
        normalizeForward();

        int count = InteractionRegistry.getActiveInteractablesCount();
        for (int i = 0; i < count; i++) {
            GameObject target = InteractionRegistry.getActiveInteractableAt(i);
            if (!C13317e.J(target) || target == interactor) continue;

            InteractionRegistry.InteractableData data = InteractionRegistry.get(target);
            if (data == null || !data.enabled || data.isBusy) continue;

            Transform targetTransform = target.J0();
            if (targetTransform == null) continue;
            targetTransform.K0(tempTargetPos);

            float dx = tempTargetPos.getX() - tempOrigin.getX();
            float dy = tempTargetPos.getY() - tempOrigin.getY();
            float dz = tempTargetPos.getZ() - tempOrigin.getZ();
            float distSq = dx * dx + dy * dy + dz * dz;

            float targetMaxDist = Math.min(maxDistance, data.maxInteractionDistance);
            if (distSq > targetMaxDist * targetMaxDist) continue;

            float centerDistance = (float) Math.sqrt(distSq);
            if (centerDistance < 0.0001f) centerDistance = 0.0001f;

            float normX = dx / centerDistance;
            float normY = dy / centerDistance;
            float normZ = dz / centerDistance;
            float dot = tempForward.getX() * normX
                + tempForward.getY() * normY
                + tempForward.getZ() * normZ;

            if (dot <= 0.0f) continue;
            dot = Math.min(1.0f, dot);

            float angleDeg = (float) Math.toDegrees(Math.acos(dot));
            float targetMaxAngle = Math.min(maxAngleDeg, data.maxInteractionAngle);
            if (angleDeg > targetMaxAngle) continue;

            PhysicsRayTestResult firstHit = raycastFirstNonInteractorHit(interactor, tempTargetPos);
            GameObject hitObject = firstHit != null
                ? resolveGameObject(firstHit.getCollisionObject())
                : null;

            boolean hitTarget = firstHit != null && isSameHierarchyBranch(hitObject, target);
            boolean hasLineOfSight = firstHit == null || hitTarget;
            if (data.requireLineOfSight && !hasLineOfSight) continue;

            float hitDistance = centerDistance;
            float hitX = tempTargetPos.getX();
            float hitY = tempTargetPos.getY();
            float hitZ = tempTargetPos.getZ();
            float normalX = -normX;
            float normalY = -normY;
            float normalZ = -normZ;

            if (hitTarget) {
                float fraction = Math.max(0.0f, Math.min(1.0f, firstHit.getHitFraction()));
                hitDistance = centerDistance * fraction;
                hitX = tempOrigin.getX() + dx * fraction;
                hitY = tempOrigin.getY() + dy * fraction;
                hitZ = tempOrigin.getZ() + dz * fraction;

                Vector3f hitNormal = firstHit.getHitNormalLocal(tempHitNormal);
                if (hitNormal != null) {
                    normalX = hitNormal.f81611x;
                    normalY = hitNormal.f81612y;
                    normalZ = hitNormal.f81613z;
                }
            }

            InteractionCandidate candidate = InteractionCandidate.obtain(target, hitDistance, angleDeg);
            candidate.priority = data.priority;
            candidate.hasLineOfSight = hasLineOfSight;
            candidate.hitPosition.set(hitX, hitY, hitZ);
            candidate.hitNormal.set(normalX, normalY, normalZ);
            outCandidates.add(candidate);
        }
    }

    private void normalizeForward() {
        float x = tempForward.getX();
        float y = tempForward.getY();
        float z = tempForward.getZ();
        float magSq = x * x + y * y + z * z;
        if (magSq <= 0.000001f) {
            tempForward.set(0f, 0f, 1f);
            return;
        }
        float invMag = 1.0f / (float) Math.sqrt(magSq);
        tempForward.set(x * invMag, y * invMag, z * invMag);
    }

    /**
     * Retorna o primeiro collider fisico que nao pertence ao proprio interactor.
     * Usa o mesmo lock global empregado pelo subsistema de Rigidbody ao alterar o PhysicsSpace.
     */
    private PhysicsRayTestResult raycastFirstNonInteractorHit(GameObject interactor, Vector3 targetPosition) {
        rayFrom.set(tempOrigin.getX(), tempOrigin.getY(), tempOrigin.getZ());
        rayTo.set(targetPosition.getX(), targetPosition.getY(), targetPosition.getZ());
        rayResults.clear();

        try {
            if (K8.a.f10984o == null || K8.a.f10984o.f2506c == null) {
                return null;
            }
            synchronized (Cc.c.f2503k) {
                K8.a.f10984o.f2506c.rayTest(rayFrom, rayTo, rayResults);
            }
        } catch (Exception ignored) {
            rayResults.clear();
            return null;
        }

        for (int i = 0; i < rayResults.size(); i++) {
            PhysicsRayTestResult result = rayResults.get(i);
            if (result == null || result.getCollisionObject() == null) continue;

            GameObject hitObject = resolveGameObject(result.getCollisionObject());
            if (C13317e.J(hitObject) && isSameHierarchyBranch(hitObject, interactor)) {
                continue;
            }
            return result;
        }
        return null;
    }

    private GameObject resolveGameObject(PhysicsCollisionObject collisionObject) {
        if (collisionObject == null) return null;
        Object userObject = collisionObject.getUserObject();
        if (userObject instanceof PhysicsComponent) {
            return ((PhysicsComponent) userObject).getGameObjectForPhysics();
        }
        if (userObject instanceof Component) {
            return ((Component) userObject).f79250n;
        }
        if (userObject instanceof GameObject) {
            return (GameObject) userObject;
        }
        return null;
    }

    private boolean isSameHierarchyBranch(GameObject a, GameObject b) {
        if (!C13317e.J(a) || !C13317e.J(b)) return false;
        return isDescendantOrSelf(a, b) || isDescendantOrSelf(b, a);
    }

    private boolean isDescendantOrSelf(GameObject object, GameObject expectedAncestor) {
        GameObject current = object;
        int safety = 0;
        while (C13317e.J(current) && safety++ < 64) {
            if (current == expectedAncestor) return true;
            current = current.f79294k;
        }
        return false;
    }
}
