package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionContext;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;

/**
 * Ponte entre entradas fisicas (Mobile Touch, Teclado, Gamepad) e acoes logicas ("interact", "grab", "inspect").
 */
public class InteractionInputBridge {

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
