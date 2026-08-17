package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Resolver;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Detection.InteractionRaySensor;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Detection.InteractionSensor;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCandidate;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCapability;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Motor central de resolucao de alvos de interacao.
 * Combina sensores, filtragem, pontuacao ponderada e histerese.
 */
public class InteractionTargetResolver {

    private InteractionSensor sensor;
    private final InteractionScorer scorer = new InteractionScorer();
    private final InteractionFilter filter = new InteractionFilter();
    private final InteractionHysteresis hysteresis = new InteractionHysteresis();

    private final List<InteractionCandidate> candidatesBuffer = new ArrayList<>(16);

    public InteractionTargetResolver() {
        this.sensor = new InteractionRaySensor(4.0f, 45.0f);
    }

    public InteractionTargetResolver(InteractionSensor sensor) {
        this.sensor = sensor != null ? sensor : new InteractionRaySensor(4.0f, 45.0f);
    }

    public GameObject resolveTarget(GameObject interactor, InteractionCapability requiredCapability, String requiredTag) {
        if (!C13317e.J(interactor)) {
            hysteresis.reset();
            return null;
        }

        // Limpar e reciclar candidatos anteriores
        for (int i = 0; i < candidatesBuffer.size(); i++) {
            InteractionCandidate.recycle(candidatesBuffer.get(i));
        }
        candidatesBuffer.clear();

        // 1. Coleta candidatos via sensor
        sensor.collectCandidates(interactor, candidatesBuffer);
        if (candidatesBuffer.isEmpty()) {
            hysteresis.reset();
            return null;
        }

        GameObject currentTarget = hysteresis.getCurrentTarget();
        float currentTargetScore = 0f;
        InteractionCandidate currentTargetCandidate = null;

        // 2. Filtra e pontua candidatos
        for (int i = candidatesBuffer.size() - 1; i >= 0; i--) {
            InteractionCandidate candidate = candidatesBuffer.get(i);
            if (!filter.isValidCandidate(candidate.target, requiredCapability, requiredTag)) {
                candidatesBuffer.remove(i);
                InteractionCandidate.recycle(candidate);
                continue;
            }

            boolean isCurrent = (candidate.target == currentTarget);
            float score = scorer.calculateScore(candidate, sensor.getMaxDistance(), 45.0f, isCurrent);
            if (isCurrent) {
                currentTargetScore = score;
                currentTargetCandidate = candidate;
            }
        }

        if (candidatesBuffer.isEmpty()) {
            hysteresis.reset();
            return null;
        }

        // 3. Ordena por pontuacao (maior score primeiro)
        Collections.sort(candidatesBuffer);
        InteractionCandidate bestCandidate = candidatesBuffer.get(0);

        // 4. Aplica histerese para evitar flickering
        if (hysteresis.shouldSwitchTarget(bestCandidate, currentTargetScore)) {
            hysteresis.setCurrentTarget(bestCandidate.target);
            return bestCandidate.target;
        }

        return hysteresis.getCurrentTarget();
    }

    public GameObject getCurrentTarget() {
        return hysteresis.getCurrentTarget();
    }

    public void setSensor(InteractionSensor sensor) {
        if (sensor != null) {
            this.sensor = sensor;
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
        for (int i = 0; i < candidatesBuffer.size(); i++) {
            InteractionCandidate.recycle(candidatesBuffer.get(i));
        }
        candidatesBuffer.clear();
    }
}
