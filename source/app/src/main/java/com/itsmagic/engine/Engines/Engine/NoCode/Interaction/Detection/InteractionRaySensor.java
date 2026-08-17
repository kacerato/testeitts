package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Detection;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCandidate;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import java.util.List;

/**
 * Sensor baseado em raio/cone direcionado da visao/camera.
 */
public class InteractionRaySensor implements InteractionSensor {

    private float maxDistance = 4.0f;
    private float maxConeAngleDeg = 45.0f;
    private final InteractionCandidateCollector collector = new InteractionCandidateCollector();

    public InteractionRaySensor() {}

    public InteractionRaySensor(float maxDistance, float maxConeAngleDeg) {
        this.maxDistance = maxDistance;
        this.maxConeAngleDeg = maxConeAngleDeg;
    }

    @Override
    public void collectCandidates(GameObject interactor, List<InteractionCandidate> outCandidates) {
        collector.collect(interactor, maxDistance, maxConeAngleDeg, outCandidates);
    }

    @Override
    public void setMaxDistance(float distance) {
        this.maxDistance = distance;
    }

    @Override
    public float getMaxDistance() {
        return this.maxDistance;
    }

    public void setMaxConeAngle(float angleDeg) {
        this.maxConeAngleDeg = angleDeg;
    }

    public float getMaxConeAngle() {
        return this.maxConeAngleDeg;
    }
}
