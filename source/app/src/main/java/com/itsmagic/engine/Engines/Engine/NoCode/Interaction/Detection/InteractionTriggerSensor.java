package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Detection;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCandidate;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import java.util.List;

/** Sensor de proximidade para zonas/volumes de interacao sem depender da direcao da camera. */
public class InteractionTriggerSensor implements InteractionSensor {
    private float maxDistance = 2.0f;
    private final InteractionCandidateCollector collector = new InteractionCandidateCollector();

    public InteractionTriggerSensor() {}
    public InteractionTriggerSensor(float maxDistance) { this.maxDistance = maxDistance; }

    @Override
    public void collectCandidates(GameObject interactor, Transform cameraTransform, List<InteractionCandidate> outCandidates) {
        // 180 graus ativa o modo omnidirecional do coletor central.
        collector.collect(interactor, interactor != null ? interactor.J0() : cameraTransform, maxDistance, 180.0f, outCandidates);
    }

    @Override
    public void setMaxDistance(float distance) { maxDistance = Math.max(0.1f, distance); }

    @Override
    public float getMaxDistance() { return maxDistance; }
}
