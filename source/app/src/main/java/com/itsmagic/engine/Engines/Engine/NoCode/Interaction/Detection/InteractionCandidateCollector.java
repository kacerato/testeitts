package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Detection;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCandidate;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13317e;
import java.util.List;

/**
 * Coletor centralizado de candidatos a interacao com calculo vetorial otimizado,
 * projecao de mira (Ray/Cone da Camera), calculo de hitPosition/hitNormal e zero-alloc no loop principal.
 */
public class InteractionCandidateCollector {

    private final Vector3 tempOrigin = new Vector3();
    private final Vector3 tempTargetPos = new Vector3();
    private final Vector3 tempForward = new Vector3();

    public void collect(GameObject interactor, Transform cameraTransform, float maxDistance, float maxAngleDeg, List<InteractionCandidate> outCandidates) {
        if (!C13317e.J(interactor) || outCandidates == null) return;

        // Prioriza camera para mira em primeira pessoa; se nao houver, usa o interactor
        Transform rayOriginTransform = (cameraTransform != null) ? cameraTransform : interactor.J0();
        if (rayOriginTransform == null) return;

        // Obter posicao e direcao frontal
        rayOriginTransform.K0(tempOrigin);
        Vector3 forward = rayOriginTransform.forward();
        if (forward != null) {
            tempForward.set(forward);
        } else {
            tempForward.set(0f, 0f, 1f);
        }

        int count = InteractionRegistry.getActiveInteractablesCount();

        for (int i = 0; i < count; i++) {
            GameObject target = InteractionRegistry.getActiveInteractableAt(i);
            if (!C13317e.J(target) || target == interactor) continue;

            InteractionRegistry.InteractableData data = InteractionRegistry.get(target);
            if (data == null || !data.enabled || data.isBusy) continue;

            Transform targetTransform = target.J0();
            if (targetTransform == null) continue;

            targetTransform.K0(tempTargetPos);

            // Vetor rayOrigin -> target
            float dx = tempTargetPos.getX() - tempOrigin.getX();
            float dy = tempTargetPos.getY() - tempOrigin.getY();
            float dz = tempTargetPos.getZ() - tempOrigin.getZ();
            float distSq = dx * dx + dy * dy + dz * dz;

            float targetMaxDist = Math.min(maxDistance, data.maxInteractionDistance);
            if (distSq > targetMaxDist * targetMaxDist) continue;

            float distance = (float) Math.sqrt(distSq);
            if (distance < 0.0001f) distance = 0.0001f;

            // Calculo do angulo em relacao ao vetor da mira (camera forward)
            float normX = dx / distance;
            float normY = dy / distance;
            float normZ = dz / distance;

            float dot = tempForward.getX() * normX + tempForward.getY() * normY + tempForward.getZ() * normZ;
            if (dot > 1.0f) dot = 1.0f;
            if (dot < -1.0f) dot = -1.0f;

            float angleRad = (float) Math.acos(dot);
            float angleDeg = (float) Math.toDegrees(angleRad);

            float targetMaxAngle = Math.min(maxAngleDeg, data.maxInteractionAngle);
            if (angleDeg > targetMaxAngle) continue;

            InteractionCandidate candidate = InteractionCandidate.obtain(target, distance, angleDeg);
            candidate.priority = data.priority;
            candidate.hasLineOfSight = true;
            candidate.hitPosition.set(tempTargetPos);
            // Normal de impacto apontando para o observador
            candidate.hitNormal.set(-normX, -normY, -normZ);

            outCandidates.add(candidate);
        }
    }
}
