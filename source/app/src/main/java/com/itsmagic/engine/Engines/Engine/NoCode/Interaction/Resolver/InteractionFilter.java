package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Resolver;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCapability;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;

/**
 * Filtro de validacao para descarte imediato de candidatos invalidos.
 */
public class InteractionFilter {

    public boolean isValidCandidate(GameObject target, InteractionCapability requiredCapability, String requiredTag) {
        if (!C13317e.J(target)) return false;

        InteractionRegistry.InteractableData data = InteractionRegistry.get(target);
        if (data == null || !data.enabled || data.isBusy) {
            return false;
        }

        // Validar capability se requerida
        if (requiredCapability != null && !data.capabilities.contains(requiredCapability)) {
            return false;
        }

        // Validar tag se requerida
        if (requiredTag != null && !requiredTag.trim().isEmpty() && !data.tags.contains(requiredTag.trim().toLowerCase())) {
            return false;
        }

        return true;
    }
}
