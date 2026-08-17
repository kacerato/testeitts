package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Resolver;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Detection.InteractionRaySensor;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Detection.InteractionSensor;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCandidate;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCapability;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import gb.C13317e;
import java.util.ArrayList;
import java.util.List;

/**
 * Motor central de resolucao de alvos de interacao.
 * Coleta, filtra e pontua em O(n), mantendo histerese sem criar um resolver paralelo.
 */
public class InteractionTargetResolver {

    private InteractionSensor sensor;
    private final InteractionScorer scorer = new InteractionScorer();
    private final InteractionFilter filter = new InteractionFilter();
    private final InteractionHysteresis hysteresis = new InteractionHysteresis();

    private final List<InteractionCandidate> candidatesBuffer = new ArrayList<>(16);
    private final InteractionCandidate currentResolvedCandidate = new InteractionCandidate();

    public InteractionTargetResolver() {
        this.sensor = new InteractionRaySensor(4.0f, 45.0f);
    }

    public InteractionTargetResolver(InteractionSensor sensor) {
        this.sensor = sensor != null ? sensor : new InteractionRaySensor(4.0f, 45.0f);
    }

    public GameObject resolveTarget(
        GameObject interactor,
        Transform cameraTransform,
        InteractionCapability requiredCapability,
        String requiredTag
    ) {
        if (!C13317e.J(interactor)) {
            reset();
            return null;
        }

        recycleCandidates();
        sensor.collectCandidates(interactor, cameraTransform, candidatesBuffer);
        if (candidatesBuffer.isEmpty()) {
            hysteresis.reset();
            currentResolvedCandidate.reset();
            return null;
        }

        GameObject previousTarget = hysteresis.getCurrentTarget();
        InteractionCandidate previousCandidate = null;
        InteractionCandidate bestCandidate = null;
        float previousTargetScore = 0f;
        float maxAngle = getSensorMaxAngle();

        // Filtra, pontua e encontra o maximo em uma unica passagem.
        for (int i = candidatesBuffer.size() - 1; i >= 0; i--) {
            InteractionCandidate candidate = candidatesBuffer.get(i);
            if (!filter.isValidCandidate(candidate.target, requiredCapability, requiredTag)) {
                candidatesBuffer.remove(i);
                InteractionCandidate.recycle(candidate);
                continue;
            }

            boolean isCurrent = candidate.target == previousTarget;
            float score = scorer.calculateScore(
                candidate,
                sensor.getMaxDistance(),
                maxAngle,
                isCurrent
            );

            if (isCurrent) {
                previousCandidate = candidate;
                previousTargetScore = score;
            }

            if (bestCandidate == null || score > bestCandidate.score) {
                bestCandidate = candidate;
            }
        }

        if (bestCandidate == null) {
            hysteresis.reset();
            currentResolvedCandidate.reset();
            return null;
        }

        // Se o alvo anterior saiu do conjunto valido, nao deixa a histerese prender um alvo morto.
        if (C13317e.J(previousTarget) && previousCandidate == null) {
            hysteresis.setCurrentTarget(bestCandidate.target);
        } else if (hysteresis.shouldSwitchTarget(bestCandidate, previousTargetScore)) {
            hysteresis.setCurrentTarget(bestCandidate.target);
        }

        GameObject selectedTarget = hysteresis.getCurrentTarget();
        InteractionCandidate selectedCandidate;
        if (selectedTarget == bestCandidate.target) {
            selectedCandidate = bestCandidate;
        } else if (previousCandidate != null && selectedTarget == previousCandidate.target) {
            selectedCandidate = previousCandidate;
        } else {
            selectedCandidate = findCandidate(selectedTarget);
        }

        if (selectedCandidate == null) {
            // Estado defensivo: nunca retorna um alvo sem candidato valido neste frame.
            hysteresis.setCurrentTarget(bestCandidate.target);
            selectedTarget = bestCandidate.target;
            selectedCandidate = bestCandidate;
        }

        copyCandidate(selectedCandidate, currentResolvedCandidate);
        return selectedTarget;
    }

    public GameObject resolveTarget(GameObject interactor, InteractionCapability requiredCapability, String requiredTag) {
        return resolveTarget(interactor, null, requiredCapability, requiredTag);
    }

    private InteractionCandidate findCandidate(GameObject target) {
        if (!C13317e.J(target)) return null;
        for (int i = 0; i < candidatesBuffer.size(); i++) {
            InteractionCandidate candidate = candidatesBuffer.get(i);
            if (candidate.target == target) return candidate;
        }
        return null;
    }

    private float getSensorMaxAngle() {
        if (sensor instanceof InteractionRaySensor) {
            return ((InteractionRaySensor) sensor).getMaxConeAngle();
        }
        return 180.0f;
    }

    private void copyCandidate(InteractionCandidate source, InteractionCandidate destination) {
        destination.target = source.target;
        destination.distance = source.distance;
        destination.angle = source.angle;
        destination.score = source.score;
        destination.priority = source.priority;
        destination.hasLineOfSight = source.hasLineOfSight;
        destination.isSticky = source.isSticky;
        destination.hitPosition.set(source.hitPosition);
        destination.hitNormal.set(source.hitNormal);
    }

    private void recycleCandidates() {
        for (int i = 0; i < candidatesBuffer.size(); i++) {
            InteractionCandidate.recycle(candidatesBuffer.get(i));
        }
        candidatesBuffer.clear();
    }

    public GameObject getCurrentTarget() {
        return hysteresis.getCurrentTarget();
    }

    public InteractionCandidate getCurrentResolvedCandidate() {
        return currentResolvedCandidate;
    }

    public void setSensor(InteractionSensor sensor) {
        if (sensor != null) {
            this.sensor = sensor;
            reset();
        }
    }

    public InteractionSensor getSensor() {
        return sensor;
    }

    public InteractionScorer getScorer() {
        return scorer;
    }

    public InteractionHysteresis getHysteresis() {
        return hysteresis;
    }

    public void reset() {
        hysteresis.reset();
        currentResolvedCandidate.reset();
        recycleCandidates();
    }
}
