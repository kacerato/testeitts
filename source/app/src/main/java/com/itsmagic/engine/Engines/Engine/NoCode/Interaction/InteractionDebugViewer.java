package com.itsmagic.engine.Engines.Engine.NoCode.Interaction;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Resolver.InteractionTargetResolver;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;

/**
 * Debugger em tempo de execucao para inspecionar alvo focado e metadados de interacao.
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
                sb.append("State: ").append(InteractionRegistry.getState(target)).append("\n");
                sb.append("Priority: ").append(data.priority).append("\n");
                sb.append("Distance Limit: ").append(data.maxInteractionDistance).append("\n");
                sb.append("Angle Limit: ").append(data.maxInteractionAngle).append("\n");
                sb.append("Line Of Sight: ").append(data.requireLineOfSight).append("\n");
                sb.append("Capabilities: ").append(data.capabilities).append("\n");
                sb.append("Tags: ").append(data.tags).append("\n");
            }
            InteractionCandidate candidate = resolver.getCurrentResolvedCandidate();
            if (candidate != null && candidate.target == target) {
                sb.append("Distance: ").append(candidate.distance).append("\n");
                sb.append("Angle: ").append(candidate.angle).append("\n");
                sb.append("Score: ").append(candidate.score).append("\n");
            }
        } else {
            sb.append("Focused Target: None\n");
        }
        sb.append("=========================");
        return sb.toString();
    }
}
