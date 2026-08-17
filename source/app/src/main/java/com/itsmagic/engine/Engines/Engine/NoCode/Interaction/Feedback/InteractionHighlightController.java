package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Feedback;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionDispatcher;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;
import java.io.Serializable;

/** Highlight desacoplado do renderer com fallback pelo barramento de eventos. */
public class InteractionHighlightController {

    public enum HighlightMode { None, Outline, MaterialTint, IndicatorIcon }

    public static class HighlightState implements Serializable {
        public GameObject target;
        public boolean active;
        public HighlightMode mode;
        public float intensity;
        public int colorHex;
    }

    public interface HighlightRenderer {
        void setHighlight(GameObject target, boolean active, HighlightMode mode, float intensity, int colorHex);
    }

    private static HighlightRenderer renderer;
    private static GameObject currentHighlighted;
    private static HighlightMode currentMode = HighlightMode.None;
    private static float currentIntensity;
    private static int currentColor;

    public static void setRenderer(HighlightRenderer customRenderer) {
        renderer = customRenderer;
        if (renderer != null && C13317e.J(currentHighlighted)) {
            renderer.setHighlight(currentHighlighted, true, currentMode, currentIntensity, currentColor);
        }
    }

    public static void highlight(GameObject target, HighlightMode mode, float intensity, int colorHex) {
        if (!C13317e.J(target)) return;
        if (currentHighlighted != null && currentHighlighted != target) removeHighlight(currentHighlighted);

        currentHighlighted = target;
        currentMode = mode != null ? mode : HighlightMode.MaterialTint;
        currentIntensity = Math.max(0f, intensity);
        currentColor = colorHex;

        if (renderer != null) renderer.setHighlight(target, true, currentMode, currentIntensity, currentColor);
        InteractionDispatcher.dispatchCustomEvent("interaction_highlight_on", target, snapshot(true));
    }

    public static void removeHighlight(GameObject target) {
        if (target == null) return;
        if (renderer != null) renderer.setHighlight(target, false, HighlightMode.None, 0f, 0);
        InteractionDispatcher.dispatchCustomEvent("interaction_highlight_off", target, snapshotFor(target, false));
        if (currentHighlighted == target) {
            currentHighlighted = null;
            currentMode = HighlightMode.None;
            currentIntensity = 0f;
            currentColor = 0;
        }
    }

    public static GameObject getCurrentHighlighted() { return currentHighlighted; }

    public static void clear() {
        if (currentHighlighted != null) removeHighlight(currentHighlighted);
    }

    private static HighlightState snapshot(boolean active) {
        return snapshotFor(currentHighlighted, active);
    }

    private static HighlightState snapshotFor(GameObject target, boolean active) {
        HighlightState state = new HighlightState();
        state.target = target;
        state.active = active;
        state.mode = active ? currentMode : HighlightMode.None;
        state.intensity = active ? currentIntensity : 0f;
        state.colorHex = active ? currentColor : 0;
        return state;
    }
}
