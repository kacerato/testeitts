package com.itsmagic.engine.Engines.Engine.NoCode.Interaction;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.Queue;

/**
 * Representa um candidato a alvo no processo de resolucao de interacao.
 * Implementa pool de objetos para evitar alocacoes continuas na JVM/Android.
 */
public class InteractionCandidate implements Comparable<InteractionCandidate>, Serializable {

    private static final int MAX_POOL_SIZE = 64;
    private static final Queue<InteractionCandidate> POOL = new ArrayDeque<>(MAX_POOL_SIZE);

    public GameObject target;
    public float distance;
    public float angle;
    public float score;
    public boolean hasLineOfSight;
    public int priority;
    public final Vector3 hitPosition = new Vector3();
    public final Vector3 hitNormal = new Vector3();
    public boolean isSticky;

    public InteractionCandidate() {
        reset();
    }

    public void reset() {
        this.target = null;
        this.distance = Float.MAX_VALUE;
        this.angle = Float.MAX_VALUE;
        this.score = -1f;
        this.hasLineOfSight = false;
        this.priority = 0;
        this.hitPosition.set(0f, 0f, 0f);
        this.hitNormal.set(0f, 1f, 0f);
        this.isSticky = false;
    }

    public static synchronized InteractionCandidate obtain(GameObject target, float distance, float angle) {
        InteractionCandidate candidate = POOL.poll();
        if (candidate == null) {
            candidate = new InteractionCandidate();
        }
        candidate.target = target;
        candidate.distance = distance;
        candidate.angle = angle;
        return candidate;
    }

    public static synchronized void recycle(InteractionCandidate candidate) {
        if (candidate != null && POOL.size() < MAX_POOL_SIZE) {
            candidate.reset();
            POOL.offer(candidate);
        }
    }

    @Override
    public int compareTo(InteractionCandidate o) {
        if (o == null) return -1;
        // Maior score tem prioridade mais alta
        return Float.compare(o.score, this.score);
    }
}
