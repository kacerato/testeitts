package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Detection;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCandidate;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import java.util.List;

/**
 * Sensor omnidirecional baseado em raio esferico de proximidade (360 graus).
 */
public class InteractionSphereSensor implements InteractionSensor {

    private float maxRadius = 3.0f;
    private final InteractionCandidateCollector collector = new InteractionCandidateCollector();

    public InteractionSphereSensor() {}

    public InteractionSphereSensor(float maxRadius) {
        this.maxRadius = maxRadius;
    }

    @Override
    public void collectCandidates(GameObject interactor, List<InteractionCandidate> outCandidates) {
        collector.collect(interactor, maxRadius, 180.0f, outCandidates);
    }

    @Override
    public void setMaxDistance(float distance) {
        this.maxRadius = distance;
    }

    @Override
    public float getMaxDistance() {
        return this.maxRadius;
    }
}
