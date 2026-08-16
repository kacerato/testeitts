package com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents;

import R9.a;

public abstract class UIPBarComponent extends ImGuiRenderableComponent {
    public UIPBarComponent(String serializedComponentType) {
        super(serializedComponentType);
    }

    public abstract a getOrientation();

    public abstract float getProgressValue();
}
