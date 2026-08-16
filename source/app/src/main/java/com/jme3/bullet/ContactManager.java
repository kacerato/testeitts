package com.jme3.bullet;

import com.jme3.bullet.collision.ContactListener;
import com.jme3.bullet.collision.PhysicsCollisionListener;

public interface ContactManager extends ContactListener {
    void addCollisionListener(PhysicsCollisionListener physicsCollisionListener);

    void addContactListener(ContactListener contactListener, int i10);

    void addOngoingCollisionListener(PhysicsCollisionListener physicsCollisionListener);

    int countCollisionListeners();

    void distributeEvents();

    void removeCollisionListener(PhysicsCollisionListener physicsCollisionListener);

    void removeContactListener(ContactListener contactListener);

    void removeOngoingCollisionListener(PhysicsCollisionListener physicsCollisionListener);

    void update(float f10, int i10, int i11);
}
