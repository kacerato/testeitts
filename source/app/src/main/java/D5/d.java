package D5;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;

public interface d {
    boolean allowSelect();

    Component get();

    GameObject getAllowObject();

    String getExtraTittle();

    String getTittle();

    boolean match(Component component);

    void set(Component component);
}
