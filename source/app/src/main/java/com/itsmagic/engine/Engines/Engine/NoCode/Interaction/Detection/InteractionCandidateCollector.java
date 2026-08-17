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
 * Primeiro faz filtros geometricos baratos; Line Of Sight usa um budget fixo por collect.
 */
public class InteractionCandidateCollector {

    private static final int MAX_LOS_CHECKS_PER_COLLECT = 4;

    private final Vector3 tempOrigin = new Vector3();
    private final Vector3 tempTargetPos = new Vector3();
    private final Vector3 tempForward = new Vector3();
    private final Vector3f rayFrom = new Vector3f();
    private final Vector3f rayTo = new Vector3f();
    private final Vector3f tempHitNormal = new Vector3f();
    private final List<PhysicsRayTestResult> rayResults = new ArrayList<>(8);

    public void collect(GameObject interactor, Transform cameraTransform, float maxDistance, float maxAngleDeg, List<InteractionCandidate> outCandidates) {
        if (!C13317e.J(interactor) || outCandidates == null) return;

        Transform rayOriginTransform = cameraTransform != null ? cameraTransform : interactor.J0();
        if (rayOriginTransform == null) return;

        rayOriginTransform.K0(tempOrigin);
        Vector3 forward = rayOriginTransform.forward();
        if (forward != null) tempForward.set(forward); else tempForward.set(0f, 0f, 1f);
        normalizeForward();

        final boolean omniDirectional = maxAngleDeg >= 179.99f;
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
            float dot = tempForward.getX() * normX + tempForward.getY() * normY + tempForward.getZ() * normZ;

            if (!omniDirectional && dot <= 0.0f) continue;
            dot = Math.max(-1.0f, Math.min(1.0f, dot));

            float angleDeg = (float) Math.toDegrees(Math.acos(dot));
            float targetMaxAngle = omniDirectional ? 180.0f : Math.min(maxAngleDeg, data.maxInteractionAngle);
            if (angleDeg > targetMaxAngle) continue;

            InteractionCandidate candidate = InteractionCandidate.obtain(target, centerDistance, angleDeg);
            candidate.priority = data.priority;
            candidate.hasLineOfSight = !data.requireLineOfSight;
            candidate.isSticky = false; // usado temporariamente como flag de LOS verificado neste collect.
            candidate.hitPosition.set(tempTargetPos);
            candidate.hitNormal.set(-normX, -normY, -normZ);

            float normDist = targetMaxDist > 0f ? Math.min(1f, centerDistance / targetMaxDist) : 1f;
            float normAngle = targetMaxAngle > 0f ? Math.min(1f, angleDeg / targetMaxAngle) : 1f;
            candidate.score = data.priority * 100f + (1f - normAngle) * 50f + (1f - normDist) * 30f;
            outCandidates.add(candidate);
        }

        validateBestLineOfSightCandidates(interactor, outCandidates);
    }

    private void validateBestLineOfSightCandidates(GameObject interactor, List<InteractionCandidate> candidates) {
        int checks = 0;

        while (checks < MAX_LOS_CHECKS_PER_COLLECT) {
            InteractionCandidate bestUnchecked = null;
            float bestScore = -Float.MAX_VALUE;

            for (int i = 0; i < candidates.size(); i++) {
                InteractionCandidate candidate = candidates.get(i);
                if (candidate == null || !C13317e.J(candidate.target) || candidate.hasLineOfSight || candidate.isSticky) continue;
                InteractionRegistry.InteractableData data = InteractionRegistry.get(candidate.target);
                if (data == null || !data.requireLineOfSight) continue;
                if (candidate.score > bestScore) {
                    bestScore = candidate.score;
                    bestUnchecked = candidate;
                }
            }

            if (bestUnchecked == null) break;
            bestUnchecked.isSticky = true;
            bestUnchecked.hasLineOfSight = fillLineOfSight(interactor, bestUnchecked);
            checks++;
        }

        for (int i = candidates.size() - 1; i >= 0; i--) {
            InteractionCandidate candidate = candidates.get(i);
            InteractionRegistry.InteractableData data = InteractionRegistry.get(candidate.target);
            if (data != null && data.requireLineOfSight && (!candidate.isSticky || !candidate.hasLineOfSight)) {
                candidates.remove(i);
                InteractionCandidate.recycle(candidate);
            } else {
                candidate.isSticky = false;
            }
        }
    }

    private boolean fillLineOfSight(GameObject interactor, InteractionCandidate candidate) {
        if (candidate == null || !C13317e.J(candidate.target)) return false;
        Transform targetTransform = candidate.target.J0();
        if (targetTransform == null) return false;
        targetTransform.K0(tempTargetPos);

        PhysicsRayTestResult firstHit = raycastFirstNonInteractorHit(interactor, tempTargetPos);
        if (firstHit == null) return true;

        GameObject hitObject = resolveGameObject(firstHit.getCollisionObject());
        if (!isSameHierarchyBranch(hitObject, candidate.target)) return false;

        float fraction = Math.max(0.0f, Math.min(1.0f, firstHit.getHitFraction()));
        float dx = tempTargetPos.getX() - tempOrigin.getX();
        float dy = tempTargetPos.getY() - tempOrigin.getY();
        float dz = tempTargetPos.getZ() - tempOrigin.getZ();
        candidate.distance = (float) Math.sqrt(dx * dx + dy * dy + dz * dz) * fraction;
        candidate.hitPosition.set(tempOrigin.getX() + dx * fraction, tempOrigin.getY() + dy * fraction, tempOrigin.getZ() + dz * fraction);

        Vector3f hitNormal = firstHit.getHitNormalLocal(tempHitNormal);
        if (hitNormal != null) candidate.hitNormal.set(hitNormal.f81611x, hitNormal.f81612y, hitNormal.f81613z);
        return true;
    }

    private void normalizeForward() {
        float x = tempForward.getX(), y = tempForward.getY(), z = tempForward.getZ();
        float magSq = x * x + y * y + z * z;
        if (magSq <= 0.000001f) { tempForward.set(0f, 0f, 1f); return; }
        float invMag = 1.0f / (float) Math.sqrt(magSq);
        tempForward.set(x * invMag, y * invMag, z * invMag);
    }

    private PhysicsRayTestResult raycastFirstNonInteractorHit(GameObject interactor, Vector3 targetPosition) {
        rayFrom.set(tempOrigin.getX(), tempOrigin.getY(), tempOrigin.getZ());
        rayTo.set(targetPosition.getX(), targetPosition.getY(), targetPosition.getZ());
        rayResults.clear();

        try {
            if (K8.a.f10984o == null || K8.a.f10984o.f2506c == null) return null;
            synchronized (Cc.c.f2503k) { K8.a.f10984o.f2506c.rayTest(rayFrom, rayTo, rayResults); }
        } catch (Exception ignored) {
            rayResults.clear();
            return null;
        }

        for (int i = 0; i < rayResults.size(); i++) {
            PhysicsRayTestResult result = rayResults.get(i);
            if (result == null || result.getCollisionObject() == null) continue;
            GameObject hitObject = resolveGameObject(result.getCollisionObject());
            if (C13317e.J(hitObject) && isSameHierarchyBranch(hitObject, interactor)) continue;
            return result;
        }
        return null;
    }

    private GameObject resolveGameObject(PhysicsCollisionObject collisionObject) {
        if (collisionObject == null) return null;
        Object userObject = collisionObject.getUserObject();
        if (userObject instanceof PhysicsComponent) return ((PhysicsComponent) userObject).getGameObjectForPhysics();
        if (userObject instanceof Component) return ((Component) userObject).f79250n;
        if (userObject instanceof GameObject) return (GameObject) userObject;
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
