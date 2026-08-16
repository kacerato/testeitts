package y9;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Roads.Road;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public interface InterfaceC16153a {
    default void b(InterfaceC16153a previous, InterfaceC16153a next) {
    }

    Vector3 calculateRoadPointPosition();

    boolean isConnected();

    boolean isEnabled();

    void setFirst(boolean first);

    void setLast(boolean last);

    void setRoad(Road road);
}
