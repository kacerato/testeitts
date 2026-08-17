package com.itsmagic.engine.Engines.Engine.NoCode.Interaction;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionInputBridge;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionRuntime;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;

/**
 * Componente anexavel ao jogador/interactor.
 * Mantem o InteractionRuntime configurado com o owner, camera e perfil de alcance,
 * e oferece uma ponte unica para touch, teclado, gamepad e chamadas de NoCode/Java.
 */
public class InteractionInteractor extends Component {

    public static final String COMPONENT_NAME = "InteractionInteractor";
    public static final Class COMPONENT_CLASS = InteractionInteractor.class;

    @Expose
    public float interactionDistance = 4.0f;

    @Expose
    public float interactionAngle = 45.0f;

    @Expose
    public boolean autoFindCamera = true;

    private transient Transform cameraTransform;
    private transient long runtimeFrameCounter = 0L;

    /** Registro nativo para serializacao e menu de componentes. */
    public static class Factory extends AbstractC13203c {
        @Override
        public Class b() {
            return COMPONENT_CLASS;
        }

        @Override
        public String c() {
            return COMPONENT_NAME;
        }

        @Override
        public String e() {
            return "NoCode / Interaction";
        }

        @Override
        public String h(boolean translate) {
            return "Interaction Interactor";
        }
    }

    static {
        C13201a.b(new Factory());
    }

    /** Forca a inicializacao da classe/registro quando o runtime central sobe. */
    public static void ensureRegistered() {
        // A chamada deste metodo dispara o static initializer da classe.
    }

    public InteractionInteractor() {
        super(COMPONENT_NAME);
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (!C13317e.J(gameObject) || isEditor) return;

        if (cameraTransform == null && autoFindCamera) {
            Camera mainCam = Camera.mainCamera();
            if (mainCam != null && C13317e.J(mainCam.f79250n)) {
                cameraTransform = mainCam.f79250n.J0();
            }
        }

        if (cameraTransform == null) {
            cameraTransform = gameObject.J0();
        }

        InteractionRuntime runtime = InteractionRuntime.getInstance();
        runtime.setPlayer(gameObject, cameraTransform);
        runtime.configureSensor(interactionDistance, interactionAngle);

        // O resolver e os servicos (Door/Grab/Inspect/etc.) precisam de um tick por frame.
        // O World ainda nao e consumido pelo InteractionRuntime; usar null evita acoplar
        // este componente a uma API de World apenas para manter o subsistema atualizado.
        runtime.update(null, ++this.runtimeFrameCounter, K8.d.d());
    }

    @Override
    public void onDetach() {
        InteractionRuntime.getInstance().clearPlayer(this.f79250n);
        super.onDetach();
    }

    public void setCameraTransform(Transform cam) {
        this.cameraTransform = cam;
        if (C13317e.J(this.f79250n)) {
            InteractionRuntime runtime = InteractionRuntime.getInstance();
            runtime.setPlayer(this.f79250n, cam);
            runtime.configureSensor(interactionDistance, interactionAngle);
        }
    }

    public Transform getCameraTransform() {
        return this.cameraTransform;
    }

    /** Entrada fisica generica para UI/touch/teclado/gamepad. */
    public void handleInput(String physicalInput, boolean isDown) {
        if (C13317e.J(this.f79250n)) {
            InteractionInputBridge.handleRawInput(physicalInput, isDown, this.f79250n, this.cameraTransform);
        }
    }

    public void interact() {
        pressAction("interact");
    }

    public void releaseInteract() {
        releaseAction("interact");
    }

    public void grab() {
        pressAction("grab");
    }

    public void secondaryInteract() {
        pressAction("secondary_interact");
    }

    public void cancelInteraction() {
        releaseAction("cancel");
    }

    public void pressAction(String action) {
        if (C13317e.J(this.f79250n)) {
            InteractionInputBridge.onActionPressed(action, this.f79250n, this.cameraTransform);
        }
    }

    public void releaseAction(String action) {
        if (C13317e.J(this.f79250n)) {
            InteractionInputBridge.onActionReleased(action, this.f79250n);
        }
    }

    @Override
    public String getDisplayableTitle() {
        return "Interaction Interactor";
    }

    @Override
    public String getTitle() {
        return "Interaction Interactor";
    }

    @Override
    public Component mo1248clone() {
        InteractionInteractor clone = new InteractionInteractor();
        clone.interactionDistance = this.interactionDistance;
        clone.interactionAngle = this.interactionAngle;
        clone.autoFindCamera = this.autoFindCamera;
        return clone;
    }
}
