package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Ponte desacoplada entre entradas fisicas (Mobile Buttons, Teclas de Teclado, Gamepad)
 * e acoes logicas ("interact", "grab", "inspect", "use").
 */
public class InteractionInputBridge {

    private static final Map<String, String> ACTION_MAPPINGS = new ConcurrentHashMap<>();

    static {
        // Mapeamentos padrao
        ACTION_MAPPINGS.put("key_e", "interact");
        ACTION_MAPPINGS.put("key_f", "grab");
        ACTION_MAPPINGS.put("gamepad_x", "interact");
        ACTION_MAPPINGS.put("mobile_btn_interact", "interact");
    }

    public static void mapAction(String physicalInput, String logicalAction) {
        if (physicalInput == null || logicalAction == null) return;
        ACTION_MAPPINGS.put(physicalInput.trim().toLowerCase(), logicalAction.trim().toLowerCase());
    }

    public static void handleRawInput(String physicalInput, boolean isDown, GameObject interactor, Transform cameraTransform) {
        if (physicalInput == null) return;
        String action = ACTION_MAPPINGS.get(physicalInput.trim().toLowerCase());
        if (action == null) {
            action = physicalInput;
        }

        if (isDown) {
            onActionPressed(action, interactor, cameraTransform);
        } else {
            onActionReleased(action, interactor);
        }
    }

    public static void onActionPressed(String action, GameObject interactor, Transform cameraTransform) {
        InteractionRuntime runtime = InteractionRuntime.getInstance();
        if (runtime != null) {
            runtime.handleActionPressed(action, interactor, cameraTransform);
        }
    }

    public static void onActionReleased(String action, GameObject interactor) {
        InteractionRuntime runtime = InteractionRuntime.getInstance();
        if (runtime != null) {
            runtime.handleActionReleased(action, interactor);
        }
    }
}
