package com.itsmagic.engine.Engines.Engine.NoCode.Interaction;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Resolver.InteractionTargetResolver;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;

/**
 * Debugger em tempo de execucao para inspecionar alvos focados, pontuacoes e candidatos ativos.
 */
public class InteractionDebugViewer {

    public static String getDebugInfo(GameObject interactor, InteractionTargetResolver resolver) {
        if (!C13317e.J(interactor) || resolver == null) {
            return "Interaction Debug: No active interactor.";
        }

        GameObject target = resolver.getCurrentTarget();
        StringBuilder sb = new StringBuilder();
        sb.append("=== INTERACTION DEBUG ===\n");
        if (C13317e.J(target)) {
            sb.append("Focused Target: ").append(target.getName()).append("\n");
            InteractionRegistry.InteractableData data = InteractionRegistry.get(target);
            if (data != null) {
                sb.append("State: ").append(data.state).append("\n");
                sb.append("Priority: ").append(data.priority).append("\n");
                sb.append("Capabilities: ").append(data.capabilities).append("\n");
                sb.append("Tags: ").append(data.tags).append("\n");
            }
        } else {
            sb.append("Focused Target: None\n");
        }
        sb.append("=========================");
        return sb.toString();
    }
}
