package com.threed.jpct;

import java.io.Serializable;

public interface CollisionListener extends Serializable {
    void collision(CollisionEvent collisionEvent);

    boolean requiresPolygonIDs();
}
