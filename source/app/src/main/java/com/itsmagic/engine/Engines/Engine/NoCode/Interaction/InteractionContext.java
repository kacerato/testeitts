package com.itsmagic.engine.Engines.Engine.NoCode.Interaction;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.Queue;

/**
 * Objeto central que encapsula todo o contexto de uma interacao.
 * Passado atraves do fluxo do NoCode e do runtime Java para evitar multiplos fios de dados.
 */
public class InteractionContext implements Serializable {

    public enum InputState {
        None,
        Pressed,
        Held,
        Released,
        Cancelled
    }

    private static final int MAX_POOL_SIZE = 32;
    private static final Queue<InteractionContext> POOL = new ArrayDeque<>(MAX_POOL_SIZE);

    public GameObject interactor;
    public GameObject target;
    public Object source;
    public Object camera;
    public GameObject hitObject;
    public final Vector3 hitPosition = new Vector3();
    public final Vector3 hitNormal = new Vector3();
    public float distance;
    public float angle;
    public String action = "interact";
    public InputState inputState = InputState.None;
    public long timestamp;
    public float heldDuration;
    public final Vector3 interactionPoint = new Vector3();
    public Object payload;

    public InteractionContext() {
        reset();
    }

    public void reset() {
        this.interactor = null;
        this.target = null;
        this.source = null;
        this.camera = null;
        this.hitObject = null;
        this.hitPosition.set(0f, 0f, 0f);
        this.hitNormal.set(0f, 1f, 0f);
        this.distance = 0f;
        this.angle = 0f;
        this.action = "interact";
        this.inputState = InputState.None;
        this.timestamp = System.currentTimeMillis();
        this.heldDuration = 0f;
        this.interactionPoint.set(0f, 0f, 0f);
        this.payload = null;
    }

    public void copyFrom(InteractionContext other) {
        if (other == null) return;
        this.interactor = other.interactor;
        this.target = other.target;
        this.source = other.source;
        this.camera = other.camera;
        this.hitObject = other.hitObject;
        this.hitPosition.set(other.hitPosition);
        this.hitNormal.set(other.hitNormal);
        this.distance = other.distance;
        this.angle = other.angle;
        this.action = other.action;
        this.inputState = other.inputState;
        this.timestamp = other.timestamp;
        this.heldDuration = other.heldDuration;
        this.interactionPoint.set(other.interactionPoint);
        this.payload = other.payload;
    }

    public static synchronized InteractionContext obtain() {
        InteractionContext context = POOL.poll();
        if (context == null) {
            context = new InteractionContext();
        }
        context.reset();
        return context;
    }

    public static synchronized void recycle(InteractionContext context) {
        if (context != null && POOL.size() < MAX_POOL_SIZE) {
            context.reset();
            POOL.offer(context);
        }
    }
}
