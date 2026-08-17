package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Feedback;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;

/**
 * Controlador abstrato para prompts de interacao na interface.
 */
public class InteractionPromptController {

    public interface PromptRenderer {
        void showPrompt(String text, String icon, String actionKey, float duration, int priority);
        void hidePrompt();
        void setCrosshairState(String state);
        void setProgress(float progress01);
    }

    private static PromptRenderer renderer;
    private static String currentText;
    private static String currentIcon;
    private static boolean isVisible = false;

    public static void setRenderer(PromptRenderer customRenderer) {
        renderer = customRenderer;
    }

    public static void showPrompt(String text, String icon, String actionKey, float duration, int priority) {
        currentText = text;
        currentIcon = icon;
        isVisible = true;
        if (renderer != null) {
            renderer.showPrompt(text, icon, actionKey, duration, priority);
        }
    }

    public static void hidePrompt() {
        currentText = null;
        currentIcon = null;
        isVisible = false;
        if (renderer != null) {
            renderer.hidePrompt();
        }
    }

    public static void setCrosshair(String state) {
        if (renderer != null) {
            renderer.setCrosshairState(state);
        }
    }

    public static void setProgress(float progress01) {
        if (renderer != null) {
            renderer.setProgress(progress01);
        }
    }

    public static boolean isPromptVisible() {
        return isVisible;
    }

    public static String getCurrentText() {
        return currentText;
    }

    public static String getCurrentIcon() {
        return currentIcon;
    }
}
