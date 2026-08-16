package f9;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public interface InterfaceC13197a {
    Vector3 calculateRoadPointForward();

    Vector3 calculateRoadPointPosition();

    boolean isConnected();

    boolean isEnabled();

    void setFirst(boolean first);

    void setLast(boolean last);

    void setSequencials(InterfaceC13197a previous, InterfaceC13197a next);

    void setUsageComponent(Component component);
}
