package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Feedback.InteractionHighlightController;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Feedback.InteractionPromptController;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCandidate;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionContext;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Resolver.InteractionTargetResolver;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.World.World;
import gb.C13317e;

/**
 * Runtime central do subsistema de interacao.
 * Executa exatamente UMA vez por frame global da engine (K8.a.C),
 * com auto-descoberta de Camera/Player, Raycast fisico, Line Of Sight e despachos contínuos.
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

    private long lastFrameCount = -1L;

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
     * Ponto de entrada global por frame da engine.
     */
    public void update(World world, long frameCount, float deltaTime) {
        if (this.lastFrameCount == frameCount) {
            return; // Frame Guard garantido: apenas 1 tick por frame global da engine
        }
        this.lastFrameCount = frameCount;

        float dt = (deltaTime > 0f && deltaTime < 0.1f) ? deltaTime : 0.0166f;

        // Auto-descoberta de Camera e Interactor caso ainda nao tenham sido setados manualmente
        if (!C13317e.J(interactor) || cameraTransform == null) {
            autoDiscoverPlayerAndCamera();
        }

        // 1. Atualiza servicos continuos
        GrabService.update(dt);
        DoorService.update(dt);
        holdSession.update(dt);

        if (!C13317e.J(interactor)) return;

        // 2. Resolve o alvo atual usando Raycast, Camera e histerese
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

                // Disparo automatico de Prompt e Highlight
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

    private void autoDiscoverPlayerAndCamera() {
        Camera mainCam = Camera.mainCamera();
        if (mainCam == null) {
            mainCam = Camera.mainCameraAllowEditor();
        }

        if (mainCam != null && mainCam.f79250n != null) {
            if (this.cameraTransform == null) {
                this.cameraTransform = mainCam.f79250n.J0();
            }
            if (this.interactor == null) {
                // Se a camera for filha de um corpo/jogador, usa o pai/raiz
                GameObject camObj = mainCam.f79250n;
                this.interactor = (camObj.h0() != null) ? camObj.h0() : camObj;
            }
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
