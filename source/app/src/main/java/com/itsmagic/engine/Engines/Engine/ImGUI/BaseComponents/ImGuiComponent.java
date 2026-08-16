package com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import java.util.List;
import k5.AbstractC13938b;

public abstract class ImGuiComponent extends Component {
    public ImGuiComponent(String serializedComponentType) {
        super(serializedComponentType);
    }

    public List<AbstractC13938b> getInSceneOptions() {
        return null;
    }
}
