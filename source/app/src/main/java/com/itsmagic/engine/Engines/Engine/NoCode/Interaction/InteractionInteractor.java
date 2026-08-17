package com.itsmagic.engine.Engines.Engine.NoCode.Interaction;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionInputBridge;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionRuntime;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import gb.C13317e;

/**
 * Componente anexavel ao Jogador / Interactor para configuracao automatica e controle continuo.
 */
public class InteractionInteractor extends Component {

    public static final String COMPONENT_NAME = "InteractionInteractor";
    public static final Class<?> COMPONENT_CLASS = InteractionInteractor.class;

    @Expose
    public float interactionDistance = 4.0f;

    @Expose
    public float interactionAngle = 45.0f;

    @Expose
    public boolean autoFindCamera = true;

    private Transform cameraTransform;

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (!C13317e.J(gameObject) || isEditor) return;

        // Auto-descoberta de camera se necessario
        if (cameraTransform == null && autoFindCamera) {
            Camera mainCam = Camera.mainCamera();
            if (mainCam != null && mainCam.f79250n != null) {
                cameraTransform = mainCam.f79250n.J0();
            } else if (gameObject.J0() != null) {
                cameraTransform = gameObject.J0();
            }
        }

        // Registra jogador no Runtime
        InteractionRuntime.getInstance().setPlayer(gameObject, cameraTransform);
    }

    public void setCameraTransform(Transform cam) {
        this.cameraTransform = cam;
        if (this.f79250n != null) {
            InteractionRuntime.getInstance().setPlayer(this.f79250n, cam);
        }
    }

    public Transform getCameraTransform() {
        return this.cameraTransform;
    }

    public void interact() {
        if (this.f79250n != null) {
            InteractionInputBridge.onActionPressed("interact", this.f79250n, this.cameraTransform);
        }
    }

    public void releaseInteract() {
        if (this.f79250n != null) {
            InteractionInputBridge.onActionReleased("interact", this.f79250n);
        }
    }

    public void grab() {
        if (this.f79250n != null) {
            InteractionInputBridge.onActionPressed("grab", this.f79250n, this.cameraTransform);
        }
    }
}
