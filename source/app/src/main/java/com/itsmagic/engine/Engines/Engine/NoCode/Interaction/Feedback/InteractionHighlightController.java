package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Feedback;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;

/**
 * Controlador de realce visual (Highlight) com multiplas estrategias de fallback
 * para compatibilidade total com GPUs mobile (Adreno/Mali).
 */
public class InteractionHighlightController {

    public enum HighlightMode {
        None,
        Outline,
        MaterialTint,
        IndicatorIcon
    }

    public interface HighlightRenderer {
        void setHighlight(GameObject target, boolean active, HighlightMode mode, float intensity, int colorHex);
    }

    private static HighlightRenderer renderer;
    private static GameObject currentHighlighted;

    public static void setRenderer(HighlightRenderer customRenderer) {
        renderer = customRenderer;
    }

    public static void highlight(GameObject target, HighlightMode mode, float intensity, int colorHex) {
        if (!C13317e.J(target)) return;

        if (currentHighlighted != null && currentHighlighted != target) {
            removeHighlight(currentHighlighted);
        }

        currentHighlighted = target;
        if (renderer != null) {
            renderer.setHighlight(target, true, mode != null ? mode : HighlightMode.MaterialTint, intensity, colorHex);
        }
    }

    public static void removeHighlight(GameObject target) {
        if (target == null) return;
        if (renderer != null) {
            renderer.setHighlight(target, false, HighlightMode.None, 0f, 0);
        }
        if (currentHighlighted == target) {
            currentHighlighted = null;
        }
    }

    public static void clear() {
        if (currentHighlighted != null) {
            removeHighlight(currentHighlighted);
        }
    }
}
