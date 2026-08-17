package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionContext;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;

/**
 * Gerenciador de sessao para interacoes do tipo "Segurar" (Hold).
 * Atualizado a cada tick sem chamadas bloqueantes ou Thread.sleep.
 */
public class InteractionHoldSession {

    public interface HoldListener {
        void onHoldStarted(InteractionContext context);
        void onHoldProgress(InteractionContext context, float progress01);
        void onHoldCompleted(InteractionContext context);
        void onHoldCancelled(InteractionContext context);
    }

    private boolean isHolding = false;
    private float requiredDuration = 2.0f; // segundos
    private float currentHoldTime = 0.0f;
    private final InteractionContext context = new InteractionContext();
    private HoldListener listener;

    public void startHold(GameObject interactor, GameObject target, float durationSeconds, HoldListener listener) {
        this.isHolding = true;
        this.requiredDuration = Math.max(0.05f, durationSeconds);
        this.currentHoldTime = 0.0f;
        this.listener = listener;

        this.context.reset();
        this.context.interactor = interactor;
        this.context.target = target;
        this.context.inputState = InteractionContext.InputState.Held;

        if (this.listener != null) {
            this.listener.onHoldStarted(this.context);
        }
    }

    public void update(float deltaTime) {
        if (!isHolding) return;

        currentHoldTime += deltaTime;
        float progress = Math.min(1.0f, currentHoldTime / requiredDuration);
        context.heldDuration = currentHoldTime;

        if (listener != null) {
            listener.onHoldProgress(context, progress);
        }

        if (currentHoldTime >= requiredDuration) {
            isHolding = false;
            if (listener != null) {
                listener.onHoldCompleted(context);
            }
        }
    }

    public void cancel() {
        if (!isHolding) return;
        isHolding = false;
        if (listener != null) {
            listener.onHoldCancelled(context);
        }
    }

    public boolean isHolding() {
        return isHolding;
    }

    public float getProgress() {
        if (requiredDuration <= 0f) return 1f;
        return Math.min(1.0f, currentHoldTime / requiredDuration);
    }
}
