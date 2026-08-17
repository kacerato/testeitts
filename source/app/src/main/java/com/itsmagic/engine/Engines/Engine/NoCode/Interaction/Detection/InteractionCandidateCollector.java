package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Detection;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCandidate;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13317e;
import java.util.List;

/**
 * Coletor centralizado de candidatos a interacao com Raycast geometrico preciso,
 * calculo de ponto e normal de impacto de superficie (Hit Result), teste de Linha de Visao (Line Of Sight)
 * e zero alocacoes de lixo (GC) no loop principal.
 */
public class InteractionCandidateCollector {

    private final Vector3 tempOrigin = new Vector3();
    private final Vector3 tempTargetPos = new Vector3();
    private final Vector3 tempObstaclePos = new Vector3();
    private final Vector3 tempForward = new Vector3();

    public void collect(GameObject interactor, Transform cameraTransform, float maxDistance, float maxAngleDeg, List<InteractionCandidate> outCandidates) {
        if (!C13317e.J(interactor) || outCandidates == null) return;

        // Prioriza a camera de visao em 1ª/3ª pessoa; se nao houver, usa o interactor
        Transform rayOriginTransform = (cameraTransform != null) ? cameraTransform : interactor.J0();
        if (rayOriginTransform == null) return;

        // Obter posicao de origem e vetor forward normalizado do raio
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

            // Vetor RayOrigin -> Target Center
            float dx = tempTargetPos.getX() - tempOrigin.getX();
            float dy = tempTargetPos.getY() - tempOrigin.getY();
            float dz = tempTargetPos.getZ() - tempOrigin.getZ();
            float distSq = dx * dx + dy * dy + dz * dz;

            float targetMaxDist = Math.min(maxDistance, data.maxInteractionDistance);
            if (distSq > targetMaxDist * targetMaxDist) continue;

            float distance = (float) Math.sqrt(distSq);
            if (distance < 0.0001f) distance = 0.0001f;

            // Projecao ao longo do raio (t)
            float normX = dx / distance;
            float normY = dy / distance;
            float normZ = dz / distance;

            float dot = tempForward.getX() * normX + tempForward.getY() * normY + tempForward.getZ() * normZ;
            if (dot <= 0.0f) continue; // Atras da camera
            if (dot > 1.0f) dot = 1.0f;

            float angleRad = (float) Math.acos(dot);
            float angleDeg = (float) Math.toDegrees(angleRad);

            float targetMaxAngle = Math.min(maxAngleDeg, data.maxInteractionAngle);
            if (angleDeg > targetMaxAngle) continue;

            // Calculo do Ponto de Impacto (Hit Position) na superficie voltada para a camera
            float estimatedRadius = 0.35f;
            float contactDist = Math.max(0.1f, distance - estimatedRadius);
            float hitX = tempOrigin.getX() + tempForward.getX() * contactDist;
            float hitY = tempOrigin.getY() + tempForward.getY() * contactDist;
            float hitZ = tempOrigin.getZ() + tempForward.getZ() * contactDist;

            // Teste de Linha de Visao (Line Of Sight / Oclusao por outros corpos)
            boolean hasLos = true;
            if (data.requireLineOfSight) {
                for (int j = 0; j < count; j++) {
                    if (j == i) continue;
                    GameObject obstacle = InteractionRegistry.getActiveInteractableAt(j);
                    if (!C13317e.J(obstacle) || obstacle == interactor) continue;

                    Transform obsT = obstacle.J0();
                    if (obsT == null) continue;
                    obsT.K0(tempObstaclePos);

                    // Vetor RayOrigin -> Obstacle
                    float odx = tempObstaclePos.getX() - tempOrigin.getX();
                    float ody = tempObstaclePos.getY() - tempOrigin.getY();
                    float odz = tempObstaclePos.getZ() - tempOrigin.getZ();
                    float obsDist = (float) Math.sqrt(odx * odx + ody * ody + odz * odz);

                    // Se o obstaculo esta mais proximo que o alvo e intercepta a linha da mira
                    if (obsDist < distance - 0.4f && obsDist > 0.3f) {
                        float onormX = odx / obsDist;
                        float onormY = ody / obsDist;
                        float onormZ = odz / obsDist;
                        float obsDot = tempForward.getX() * onormX + tempForward.getY() * onormY + tempForward.getZ() * onormZ;
                        if (obsDot > 0.96f) { // Ocluido na linha de visao
                            hasLos = false;
                            break;
                        }
                    }
                }
            }

            if (!hasLos && data.requireLineOfSight) continue;

            InteractionCandidate candidate = InteractionCandidate.obtain(target, distance, angleDeg);
            candidate.priority = data.priority;
            candidate.hasLineOfSight = hasLos;
            candidate.hitPosition.set(hitX, hitY, hitZ);
            candidate.hitNormal.set(-normX, -normY, -normZ);

            outCandidates.add(candidate);
        }
    }
}
