package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Detection;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCandidate;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13317e;
import java.util.List;

/**
 * Coletor centralizado de candidatos a interacao com calculo vetorial otimizado
 * e zero-alloc no loop principal.
 */
public class InteractionCandidateCollector {

    private final Vector3 tempOrigin = new Vector3();
    private final Vector3 tempTargetPos = new Vector3();
    private final Vector3 tempForward = new Vector3();
    private final Vector3 tempToTarget = new Vector3();

    public void collect(GameObject interactor, float maxDistance, float maxAngleDeg, List<InteractionCandidate> outCandidates) {
        if (!C13317e.J(interactor) || outCandidates == null) return;

        Transform interactorTransform = interactor.J0();
        if (interactorTransform == null) return;

        // Obter posicao e direcao frontal
        interactorTransform.K0(tempOrigin);
        Vector3 forward = interactorTransform.forward();
        if (forward != null) {
            tempForward.set(forward);
        } else {
            tempForward.set(0f, 0f, 1f);
        }

        List<GameObject> interactables = InteractionRegistry.getAllActiveInteractables();
        float maxDistSq = maxDistance * maxDistance;

        for (int i = 0; i < interactables.size(); i++) {
            GameObject target = interactables.get(i);
            if (!C13317e.J(target) || target == interactor) continue;

            InteractionRegistry.InteractableData data = InteractionRegistry.get(target);
            if (data == null || !data.enabled) continue;

            Transform targetTransform = target.J0();
            if (targetTransform == null) continue;

            targetTransform.K0(tempTargetPos);

            // Vetor interactor -> target
            float dx = tempTargetPos.getX() - tempOrigin.getX();
            float dy = tempTargetPos.getY() - tempOrigin.getY();
            float dz = tempTargetPos.getZ() - tempOrigin.getZ();
            float distSq = dx * dx + dy * dy + dz * dz;

            float targetMaxDist = Math.min(maxDistance, data.maxInteractionDistance);
            if (distSq > targetMaxDist * targetMaxDist) continue;

            float distance = (float) Math.sqrt(distSq);
            if (distance < 0.0001f) distance = 0.0001f;

            // Calculo do angulo em relacao ao forward
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
            candidate.hasLineOfSight = true; // Validador fino pode refinar se necessario
            candidate.hitPosition.set(tempTargetPos);

            outCandidates.add(candidate);
        }
    }
}
