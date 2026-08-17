package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Feedback;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionDispatcher;
import java.io.Serializable;

/**
 * Controlador desacoplado de prompt/crosshair/progresso.
 * Pode usar um renderer nativo quando a UI da engine fornecer um adapter e, em paralelo,
 * publica eventos no InteractionDispatcher para que a UI existente seja ligada por NoCode.
 */
public class InteractionPromptController {

    public static class PromptState implements Serializable {
        public String text;
        public String icon;
        public String actionKey;
        public float duration;
        public int priority;
        public float progress;
        public String crosshairState;
        public boolean visible;
    }

    public interface PromptRenderer {
        void showPrompt(String text, String icon, String actionKey, float duration, int priority);
        void hidePrompt();
        void setCrosshairState(String state);
        void setProgress(float progress01);
    }

    private static PromptRenderer renderer;
    private static final PromptState STATE = new PromptState();

    public static void setRenderer(PromptRenderer customRenderer) {
        renderer = customRenderer;
        if (renderer != null) {
            if (STATE.visible) renderer.showPrompt(STATE.text, STATE.icon, STATE.actionKey, STATE.duration, STATE.priority);
            if (STATE.crosshairState != null) renderer.setCrosshairState(STATE.crosshairState);
            renderer.setProgress(STATE.progress);
        }
    }

    public static void showPrompt(String text, String icon, String actionKey, float duration, int priority) {
        STATE.text = text;
        STATE.icon = icon;
        STATE.actionKey = actionKey;
        STATE.duration = duration;
        STATE.priority = priority;
        STATE.visible = true;
        if (renderer != null) renderer.showPrompt(text, icon, actionKey, duration, priority);
        InteractionDispatcher.dispatchCustomEvent("interaction_prompt_show", null, snapshot());
    }

    public static void hidePrompt() {
        STATE.visible = false;
        if (renderer != null) renderer.hidePrompt();
        InteractionDispatcher.dispatchCustomEvent("interaction_prompt_hide", null, snapshot());
        STATE.text = null;
        STATE.icon = null;
        STATE.actionKey = null;
    }

    public static void setCrosshair(String state) {
        STATE.crosshairState = state;
        if (renderer != null) renderer.setCrosshairState(state);
        InteractionDispatcher.dispatchCustomEvent("interaction_crosshair_changed", null, state);
    }

    public static void setProgress(float progress01) {
        STATE.progress = Math.max(0f, Math.min(1f, progress01));
        if (renderer != null) renderer.setProgress(STATE.progress);
        InteractionDispatcher.dispatchCustomEvent("interaction_progress_changed", null, Float.valueOf(STATE.progress));
    }

    public static boolean isPromptVisible() { return STATE.visible; }
    public static String getCurrentText() { return STATE.text; }
    public static String getCurrentIcon() { return STATE.icon; }
    public static PromptState getState() { return snapshot(); }

    private static PromptState snapshot() {
        PromptState value = new PromptState();
        value.text = STATE.text;
        value.icon = STATE.icon;
        value.actionKey = STATE.actionKey;
        value.duration = STATE.duration;
        value.priority = STATE.priority;
        value.progress = STATE.progress;
        value.crosshairState = STATE.crosshairState;
        value.visible = STATE.visible;
        return value;
    }
}
