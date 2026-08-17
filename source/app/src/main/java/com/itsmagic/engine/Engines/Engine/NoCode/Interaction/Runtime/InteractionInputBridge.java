package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/** Ponte entre entradas fisicas e acoes logicas independentes de dispositivo. */
public class InteractionInputBridge {

    private static final Map<String, String> ACTION_MAPPINGS = new ConcurrentHashMap<>();

    static {
        ACTION_MAPPINGS.put("key_e", "interact");
        ACTION_MAPPINGS.put("key_f", "grab");
        ACTION_MAPPINGS.put("key_g", "drop");
        ACTION_MAPPINGS.put("key_r", "inspect");
        ACTION_MAPPINGS.put("mouse_left", "interact");
        ACTION_MAPPINGS.put("mouse_right", "secondary_interact");
        ACTION_MAPPINGS.put("gamepad_x", "interact");
        ACTION_MAPPINGS.put("gamepad_y", "secondary_interact");
        ACTION_MAPPINGS.put("gamepad_b", "cancel");
        ACTION_MAPPINGS.put("mobile_btn_interact", "interact");
        ACTION_MAPPINGS.put("mobile_btn_secondary", "secondary_interact");
        ACTION_MAPPINGS.put("mobile_btn_grab", "grab");
        ACTION_MAPPINGS.put("mobile_btn_drop", "drop");
        ACTION_MAPPINGS.put("mobile_btn_throw", "throw");
        ACTION_MAPPINGS.put("mobile_btn_inspect", "inspect");
        ACTION_MAPPINGS.put("mobile_btn_cancel", "cancel");
    }

    public static void mapAction(String physicalInput, String logicalAction) {
        if (physicalInput == null || logicalAction == null) return;
        ACTION_MAPPINGS.put(physicalInput.trim().toLowerCase(), logicalAction.trim().toLowerCase());
    }

    public static void unmapAction(String physicalInput) {
        if (physicalInput == null) return;
        ACTION_MAPPINGS.remove(physicalInput.trim().toLowerCase());
    }

    public static String resolveAction(String physicalInput) {
        if (physicalInput == null) return null;
        String key = physicalInput.trim().toLowerCase();
        String mapped = ACTION_MAPPINGS.get(key);
        return mapped != null ? mapped : key;
    }

    public static void handleRawInput(String physicalInput, boolean isDown, GameObject interactor, Transform cameraTransform) {
        String action = resolveAction(physicalInput);
        if (action == null) return;
        if (isDown) onActionPressed(action, interactor, cameraTransform);
        else onActionReleased(action, interactor);
    }

    public static void onActionPressed(String action, GameObject interactor, Transform cameraTransform) {
        InteractionRuntime runtime = InteractionRuntime.getInstance();
        if (runtime != null) runtime.handleActionPressed(action, interactor, cameraTransform);
    }

    public static void onActionReleased(String action, GameObject interactor) {
        InteractionRuntime runtime = InteractionRuntime.getInstance();
        if (runtime != null) runtime.handleActionReleased(action, interactor);
    }
}
