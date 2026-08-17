package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Detection.InteractionRaySensor;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Detection.InteractionSphereSensor;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCandidate;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCapability;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import gb.C13317e;
import java.util.ArrayList;
import java.util.List;

/** Consultas avulsas centralizadas para que nodes nao criem sensores/raycasts proprios. */
public final class InteractionQueryService {
    private static final InteractionRaySensor RAY_SENSOR = new InteractionRaySensor();
    private static final InteractionSphereSensor SPHERE_SENSOR = new InteractionSphereSensor();
    private static final List<InteractionCandidate> BUFFER = new ArrayList<>(32);
    private static final InteractionCandidate RESULT = new InteractionCandidate();

    private InteractionQueryService() {}

    public static synchronized InteractionCandidate findBestInRay(GameObject interactor, Transform camera, float distance, float angle, InteractionCapability capability, String tag) {
        recycleBuffer();
        RAY_SENSOR.setMaxDistance(Math.max(0.1f, distance));
        RAY_SENSOR.setMaxConeAngle(Math.max(1f, Math.min(180f, angle)));
        RAY_SENSOR.collectCandidates(interactor, camera, BUFFER);
        return chooseBest(capability, tag, false);
    }

    public static synchronized InteractionCandidate findBestInSphere(GameObject interactor, float radius, InteractionCapability capability, String tag) {
        recycleBuffer();
        SPHERE_SENSOR.setMaxDistance(Math.max(0.1f, radius));
        SPHERE_SENSOR.collectCandidates(interactor, interactor != null ? interactor.J0() : null, BUFFER);
        return chooseBest(capability, tag, false);
    }

    public static synchronized InteractionCandidate findNearest(GameObject interactor, float radius, InteractionCapability capability, String tag) {
        recycleBuffer();
        SPHERE_SENSOR.setMaxDistance(Math.max(0.1f, radius));
        SPHERE_SENSOR.collectCandidates(interactor, interactor != null ? interactor.J0() : null, BUFFER);
        return chooseBest(capability, tag, true);
    }

    private static InteractionCandidate chooseBest(InteractionCapability capability, String tag, boolean nearestOnly) {
        InteractionCandidate best = null;
        float bestMetric = Float.MAX_VALUE;
        float bestScore = -Float.MAX_VALUE;
        String cleanTag = tag == null || tag.trim().isEmpty() ? null : tag.trim().toLowerCase();

        for (int i = 0; i < BUFFER.size(); i++) {
            InteractionCandidate candidate = BUFFER.get(i);
            if (candidate == null || !C13317e.J(candidate.target)) continue;
            InteractionRegistry.InteractableData data = InteractionRegistry.get(candidate.target);
            if (data == null || !data.enabled || data.isBusy) continue;
            if (capability != null && !data.capabilities.contains(capability)) continue;
            if (cleanTag != null && !data.tags.contains(cleanTag)) continue;

            if (nearestOnly) {
                if (candidate.distance < bestMetric) {
                    bestMetric = candidate.distance;
                    best = candidate;
                }
            } else {
                float metric = candidate.priority * 100f - candidate.angle * 0.5f - candidate.distance * 5f;
                if (metric > bestScore) {
                    bestScore = metric;
                    best = candidate;
                }
            }
        }

        RESULT.reset();
        if (best != null) copy(best, RESULT);
        recycleBuffer();
        return C13317e.J(RESULT.target) ? RESULT : null;
    }

    private static void copy(InteractionCandidate from, InteractionCandidate to) {
        to.target = from.target;
        to.distance = from.distance;
        to.angle = from.angle;
        to.score = from.score;
        to.priority = from.priority;
        to.hasLineOfSight = from.hasLineOfSight;
        to.hitPosition.set(from.hitPosition);
        to.hitNormal.set(from.hitNormal);
    }

    private static void recycleBuffer() {
        for (int i = 0; i < BUFFER.size(); i++) InteractionCandidate.recycle(BUFFER.get(i));
        BUFFER.clear();
    }
}
