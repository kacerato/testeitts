package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Feedback.InteractionHighlightController;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Feedback.InteractionPromptController;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCapability;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionContext;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Resolver.InteractionTargetResolver;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import gb.C13317e;

/**
 * Runtime central do subsistema de interacao.
 * Executa continuamente o loop de sensor -> resolver -> scoring -> histerese -> focus events -> gameplay services.
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

    public void update(float deltaTime) {
        // 1. Atualiza servicos contínuos
        GrabService.update(deltaTime);
        DoorService.update(deltaTime);
        holdSession.update(deltaTime);

        if (!C13317e.J(interactor)) return;

        // 2. Resolve o alvo atual usando a camera e histerese
        currentTarget = resolver.resolveTarget(interactor, cameraTransform, null, null);

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
}
