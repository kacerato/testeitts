package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Feedback.InteractionHighlightController;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Feedback.InteractionPromptController;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCandidate;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionContext;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Resolver.InteractionTargetResolver;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import gb.C13317e;

/**
 * Runtime central do subsistema de interacao.
 * Executa exatamente uma vez por frame com calculo de deltaTime real,
 * gerenciando alvo contínuo, histerese, propagacao de hit, prompts e fisicas.
 */
public class InteractionRuntime {

    private static InteractionRuntime instance;

    private GameObject interactor;
    private Transform cameraTransform;

    private final InteractionTargetResolver resolver = new InteractionTargetResolver();
    private final InteractionHoldSession holdSession = new InteractionHoldSession();
    private final InteractionContext currentContext = new InteractionContext();

    private GameObject previousTarget;
    private GameObject currentTarget;

    private long lastUpdateNanoTime = 0L;

    public static synchronized InteractionRuntime getInstance() {
        if (instance == null) {
            instance = new InteractionRuntime();
        }
        return instance;
    }

    public void setPlayer(GameObject interactor, Transform cameraTransform) {
        this.interactor = interactor;
        this.cameraTransform = cameraTransform;
    }

    /**
     * Executa o loop do runtime com protecao de frame unico e deltaTime real.
     */
    public void update(float fallbackDeltaTime) {
        long now = System.nanoTime();
        if (lastUpdateNanoTime == 0L) {
            lastUpdateNanoTime = now;
            return;
        }

        long elapsedNanos = now - lastUpdateNanoTime;
        // Evita atualizacoes duplicadas no mesmo frame (minimo ~2ms)
        if (elapsedNanos < 2_000_000L) {
            return;
        }

        float deltaTime = elapsedNanos / 1_000_000_000.0f;
        if (deltaTime > 0.1f) deltaTime = (fallbackDeltaTime > 0f) ? fallbackDeltaTime : 0.0166f;
        lastUpdateNanoTime = now;

        // 1. Atualiza servicos continuos
        GrabService.update(deltaTime);
        DoorService.update(deltaTime);
        holdSession.update(deltaTime);

        if (!C13317e.J(interactor)) return;

        // 2. Resolve o alvo atual usando a camera e histerese
        currentTarget = resolver.resolveTarget(interactor, cameraTransform, null, null);
        InteractionCandidate bestCandidate = resolver.getCurrentResolvedCandidate();

        // 3. Transicao de foco com histerese (FocusExit / FocusEnter / FocusStay)
        if (currentTarget != previousTarget) {
            if (C13317e.J(previousTarget)) {
                InteractionRegistry.setFocused(previousTarget, false);
                currentContext.target = previousTarget;
                currentContext.interactor = interactor;
                InteractionDispatcher.dispatchFocusExit(currentContext);
                InteractionPromptController.hidePrompt();
                InteractionHighlightController.removeHighlight(previousTarget);
            }

            if (C13317e.J(currentTarget)) {
                InteractionRegistry.setFocused(currentTarget, true);
                currentContext.target = currentTarget;
                currentContext.interactor = interactor;
                currentContext.camera = cameraTransform;
                if (bestCandidate != null) {
                    currentContext.hitPosition.set(bestCandidate.hitPosition);
                    currentContext.hitNormal.set(bestCandidate.hitNormal);
                    currentContext.distance = bestCandidate.distance;
                    currentContext.angle = bestCandidate.angle;
                }
                InteractionDispatcher.dispatchFocusEnter(currentContext);

                // Disparo automatico de Prompt e Highlight se configurados
                InteractionRegistry.InteractableData data = InteractionRegistry.get(currentTarget);
                if (data != null) {
                    String pText = data.promptText != null ? data.promptText : (String) data.attributes.get("prompt_text");
                    String pIcon = data.promptIcon != null ? data.promptIcon : (String) data.attributes.get("prompt_icon");
                    if (pText != null) {
                        InteractionPromptController.showPrompt(pText, pIcon, "interact", 0f, data.priority);
                    }
                    InteractionHighlightController.highlight(currentTarget, InteractionHighlightController.HighlightMode.MaterialTint, 1.0f, 0xFFFFFF);
                }
            }

            previousTarget = currentTarget;
        } else if (C13317e.J(currentTarget)) {
            currentContext.target = currentTarget;
            currentContext.interactor = interactor;
            if (bestCandidate != null) {
                currentContext.hitPosition.set(bestCandidate.hitPosition);
                currentContext.hitNormal.set(bestCandidate.hitNormal);
                currentContext.distance = bestCandidate.distance;
            }
            InteractionDispatcher.dispatchFocusStay(currentContext);
        }
    }

    public void handleActionPressed(String action, GameObject actor, Transform cam) {
        GameObject actObj = (actor != null) ? actor : interactor;
        Transform camT = (cam != null) ? cam : cameraTransform;

        if (C13317e.J(currentTarget)) {
            currentContext.reset();
            currentContext.action = (action != null) ? action : "interact";
            currentContext.interactor = actObj;
            currentContext.target = currentTarget;
            currentContext.camera = camT;
            currentContext.inputState = InteractionContext.InputState.Pressed;

            InteractionCandidate bestCandidate = resolver.getCurrentResolvedCandidate();
            if (bestCandidate != null) {
                currentContext.hitPosition.set(bestCandidate.hitPosition);
                currentContext.hitNormal.set(bestCandidate.hitNormal);
                currentContext.distance = bestCandidate.distance;
                currentContext.angle = bestCandidate.angle;
            }

            InteractionDispatcher.dispatchInteract(currentContext);
        }
    }

    public void handleActionReleased(String action, GameObject actor) {
        holdSession.cancel();
    }

    public GameObject getCurrentTarget() {
        return currentTarget;
    }

    public InteractionTargetResolver getResolver() {
        return resolver;
    }

    public InteractionHoldSession getHoldSession() {
        return holdSession;
    }

    public GameObject getInteractor() {
        return interactor;
    }

    public Transform getCameraTransform() {
        return cameraTransform;
    }
}
