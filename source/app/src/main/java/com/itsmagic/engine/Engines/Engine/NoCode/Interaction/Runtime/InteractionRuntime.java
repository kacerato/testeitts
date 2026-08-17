package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Detection.InteractionRaySensor;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Detection.InteractionSensor;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Feedback.InteractionHighlightController;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Feedback.InteractionPromptController;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCandidate;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionContext;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionInteractor;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Resolver.InteractionTargetResolver;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.World.World;
import gb.C13317e;

/**
 * Runtime central do subsistema de interacao.
 * Executa uma vez por frame global da engine (K8.a.C), mantendo uma unica fonte
 * de verdade para player, camera, alvo focado, contexto e servicos continuos.
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
        InteractionInteractor.ensureRegistered();
        if (instance == null) {
            instance = new InteractionRuntime();
        }
        return instance;
    }

    public void setPlayer(GameObject newInteractor, Transform newCameraTransform) {
        if (C13317e.J(newInteractor) && this.interactor != newInteractor) {
            clearFocusedTarget();
            resolver.reset();
        }
        this.interactor = newInteractor;
        this.cameraTransform = newCameraTransform;
    }

    /** Configura o sensor central sem criar resolvers paralelos. */
    public void configureSensor(float maxDistance, float maxAngleDeg) {
        InteractionSensor sensor = resolver.getSensor();
        if (sensor == null) return;

        float safeDistance = Math.max(0.1f, Math.min(100.0f, maxDistance));
        float safeAngle = Math.max(1.0f, Math.min(180.0f, maxAngleDeg));
        sensor.setMaxDistance(safeDistance);
        if (sensor instanceof InteractionRaySensor) {
            ((InteractionRaySensor) sensor).setMaxConeAngle(safeAngle);
        }
    }

    /** Remove referencias de um interactor desmontado/destruido. */
    public void clearPlayer(GameObject expectedInteractor) {
        if (!C13317e.J(expectedInteractor) || expectedInteractor != this.interactor) return;
        clearFocusedTarget();
        holdSession.cancel();
        resolver.reset();
        this.interactor = null;
        this.cameraTransform = null;
    }

    /** Ponto de entrada global por frame da engine. */
    public void update(World world, long frameCount, float deltaTime) {
        if (this.lastFrameCount == frameCount) {
            return;
        }
        this.lastFrameCount = frameCount;

        float dt = (deltaTime > 0f && deltaTime < 0.1f) ? deltaTime : 0.0166f;

        if (!C13317e.J(interactor) || cameraTransform == null) {
            autoDiscoverPlayerAndCamera();
        }

        GrabService.update(dt);
        DoorService.update(dt);
        holdSession.update(dt);

        if (!C13317e.J(interactor)) return;

        currentTarget = resolver.resolveTarget(interactor, cameraTransform, null, null);
        InteractionCandidate bestCandidate = resolver.getCurrentResolvedCandidate();

        if (currentTarget != previousTarget) {
            if (C13317e.J(previousTarget)) {
                InteractionRegistry.setFocused(previousTarget, false);
                currentContext.target = previousTarget;
                currentContext.interactor = interactor;
                currentContext.camera = cameraTransform;
                InteractionDispatcher.dispatchFocusExit(currentContext);
                InteractionPromptController.hidePrompt();
                InteractionHighlightController.removeHighlight(previousTarget);
            }

            if (C13317e.J(currentTarget)) {
                InteractionRegistry.setFocused(currentTarget, true);
                fillContextFromCandidate(currentTarget, bestCandidate);
                InteractionDispatcher.dispatchFocusEnter(currentContext);

                InteractionRegistry.InteractableData data = InteractionRegistry.get(currentTarget);
                if (data != null) {
                    String pText = data.promptText != null ? data.promptText : (String) data.attributes.get("prompt_text");
                    String pIcon = data.promptIcon != null ? data.promptIcon : (String) data.attributes.get("prompt_icon");
                    if (pText != null) {
                        InteractionPromptController.showPrompt(pText, pIcon, "interact", 0f, data.priority);
                    }
                    InteractionHighlightController.highlight(
                        currentTarget,
                        InteractionHighlightController.HighlightMode.MaterialTint,
                        1.0f,
                        0xFFFFFF
                    );
                }
            }

            previousTarget = currentTarget;
        } else if (C13317e.J(currentTarget)) {
            fillContextFromCandidate(currentTarget, bestCandidate);
            InteractionDispatcher.dispatchFocusStay(currentContext);
        }
    }

    /**
     * Procura primeiro um InteractionInteractor na cadeia de pais da camera.
     * Caso nao exista, usa o pai direto da camera e, por ultimo, o proprio objeto da camera.
     */
    private void autoDiscoverPlayerAndCamera() {
        Camera mainCam = Camera.mainCamera();
        if (mainCam == null) {
            mainCam = Camera.mainCameraAllowEditor();
        }
        if (mainCam == null || !C13317e.J(mainCam.f79250n)) return;

        GameObject camObj = mainCam.f79250n;
        if (this.cameraTransform == null) {
            this.cameraTransform = camObj.J0();
        }

        if (!C13317e.J(this.interactor)) {
            GameObject explicitInteractor = findInteractorOwner(camObj);
            if (C13317e.J(explicitInteractor)) {
                this.interactor = explicitInteractor;
            } else if (C13317e.J(camObj.f79294k)) {
                this.interactor = camObj.f79294k;
            } else {
                this.interactor = camObj;
            }
        }
    }

    private GameObject findInteractorOwner(GameObject start) {
        GameObject current = start;
        int safety = 0;
        while (C13317e.J(current) && safety++ < 32) {
            int componentCount = current.N();
            for (int i = 0; i < componentCount; i++) {
                Component component = current.L(i);
                if (component instanceof InteractionInteractor) {
                    return current;
                }
            }
            current = current.f79294k;
        }
        return null;
    }

    private void fillContextFromCandidate(GameObject target, InteractionCandidate candidate) {
        currentContext.target = target;
        currentContext.interactor = interactor;
        currentContext.camera = cameraTransform;
        if (candidate != null && candidate.target == target) {
            currentContext.hitPosition.set(candidate.hitPosition);
            currentContext.hitNormal.set(candidate.hitNormal);
            currentContext.distance = candidate.distance;
            currentContext.angle = candidate.angle;
        }
    }

    private void clearFocusedTarget() {
        if (C13317e.J(previousTarget)) {
            InteractionRegistry.setFocused(previousTarget, false);
            InteractionHighlightController.removeHighlight(previousTarget);
        }
        if (C13317e.J(currentTarget) && currentTarget != previousTarget) {
            InteractionRegistry.setFocused(currentTarget, false);
            InteractionHighlightController.removeHighlight(currentTarget);
        }
        InteractionPromptController.hidePrompt();
        previousTarget = null;
        currentTarget = null;
    }

    public void handleActionPressed(String action, GameObject actor, Transform cam) {
        GameObject actObj = C13317e.J(actor) ? actor : interactor;
        Transform camT = (cam != null) ? cam : cameraTransform;

        if (C13317e.J(currentTarget)) {
            currentContext.reset();
            currentContext.action = (action != null) ? action : "interact";
            currentContext.interactor = actObj;
            currentContext.target = currentTarget;
            currentContext.camera = camT;
            currentContext.inputState = InteractionContext.InputState.Pressed;

            InteractionCandidate bestCandidate = resolver.getCurrentResolvedCandidate();
            if (bestCandidate != null && bestCandidate.target == currentTarget) {
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
