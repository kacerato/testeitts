package com.jme3.bullet;

import G0.E;
import com.jme3.bullet.collision.ContactListener;
import com.jme3.bullet.collision.PersistentManifolds;
import com.jme3.bullet.collision.PhysicsCollisionEvent;
import com.jme3.bullet.collision.PhysicsCollisionListener;
import com.jme3.bullet.collision.PhysicsCollisionObject;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;
import org.eclipse.jdt.core.JavaCore;
import p000if.C13702E;

public class DefaultContactManager implements ContactManager {
    static final boolean $assertionsDisabled = false;
    static final Logger logger = Logger.getLogger(DefaultContactManager.class.getName());
    private final PhysicsSpace space;
    private final Collection<PhysicsCollisionListener> ongoingListeners = new ArrayList(4);
    private final Collection<PhysicsCollisionListener> startedListeners = new ArrayList(4);
    private final Deque<PhysicsCollisionEvent> ongoingEvents = new ArrayDeque(99);
    private final Deque<PhysicsCollisionEvent> startedEvents = new ArrayDeque(99);
    private int stepFlags = 0;
    private final List<ContactListener> immediateListeners = new ArrayList(4);
    private final List<Integer> immediateListenerFlags = new ArrayList(4);

    public DefaultContactManager(PhysicsSpace physicsSpace) {
        C13702E.t(physicsSpace, JavaCore.SPACE);
        this.space = physicsSpace;
    }

    private void updateFlags() {
        Iterator<Integer> it = this.immediateListenerFlags.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 |= it.next().intValue();
        }
        if (!this.ongoingListeners.isEmpty()) {
            i10 |= 2;
        }
        if (!this.startedListeners.isEmpty()) {
            i10 |= 4;
        }
        this.stepFlags = i10;
    }

    @Override
    public synchronized void addCollisionListener(PhysicsCollisionListener physicsCollisionListener) {
        C13702E.t(physicsCollisionListener, E.a.f7280a);
        this.startedListeners.add(physicsCollisionListener);
        this.stepFlags |= 4;
    }

    @Override
    public synchronized void addContactListener(ContactListener contactListener, int i10) {
        C13702E.t(contactListener, E.a.f7280a);
        this.immediateListeners.add(contactListener);
        this.immediateListenerFlags.add(Integer.valueOf(i10));
        this.stepFlags |= i10;
    }

    @Override
    public synchronized void addOngoingCollisionListener(PhysicsCollisionListener physicsCollisionListener) {
        C13702E.t(physicsCollisionListener, E.a.f7280a);
        this.ongoingListeners.add(physicsCollisionListener);
        this.stepFlags |= 2;
    }

    @Override
    public synchronized int countCollisionListeners() {
        return this.ongoingListeners.size() + this.startedListeners.size();
    }

    @Override
    public synchronized void distributeEvents() {
        while (!this.startedEvents.isEmpty()) {
            try {
                PhysicsCollisionEvent pop = this.startedEvents.pop();
                Iterator<PhysicsCollisionListener> it = this.startedListeners.iterator();
                while (it.hasNext()) {
                    it.next().collision(pop);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        while (!this.ongoingEvents.isEmpty()) {
            PhysicsCollisionEvent pop2 = this.ongoingEvents.pop();
            Iterator<PhysicsCollisionListener> it2 = this.ongoingListeners.iterator();
            while (it2.hasNext()) {
                it2.next().collision(pop2);
            }
        }
    }

    @Override
    public boolean onContactConceived(long j10, long j11, PhysicsCollisionObject physicsCollisionObject, PhysicsCollisionObject physicsCollisionObject2) {
        return true;
    }

    @Override
    public void onContactEnded(long j10) {
        int size = this.immediateListeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            if ((this.immediateListenerFlags.get(i10).intValue() & 1) != 0) {
                this.immediateListeners.get(i10).onContactEnded(j10);
            }
        }
    }

    @Override
    public void onContactProcessed(PhysicsCollisionObject physicsCollisionObject, PhysicsCollisionObject physicsCollisionObject2, long j10) {
        int size = this.immediateListeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            if ((this.immediateListenerFlags.get(i10).intValue() & 2) != 0) {
                this.immediateListeners.get(i10).onContactProcessed(physicsCollisionObject, physicsCollisionObject2, j10);
            }
        }
        if (this.ongoingListeners.isEmpty()) {
            return;
        }
        this.ongoingEvents.add(new PhysicsCollisionEvent(physicsCollisionObject, physicsCollisionObject2, j10));
    }

    @Override
    public void onContactStarted(long j10) {
        int countPoints;
        int size = this.immediateListeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            if ((this.immediateListenerFlags.get(i10).intValue() & 4) != 0) {
                this.immediateListeners.get(i10).onContactStarted(j10);
            }
        }
        if (this.startedListeners.isEmpty() || (countPoints = PersistentManifolds.countPoints(j10)) == 0) {
            return;
        }
        PhysicsCollisionObject findInstance = PhysicsCollisionObject.findInstance(PersistentManifolds.getBodyAId(j10));
        PhysicsCollisionObject findInstance2 = PhysicsCollisionObject.findInstance(PersistentManifolds.getBodyBId(j10));
        for (int i11 = 0; i11 < countPoints; i11++) {
            this.startedEvents.add(new PhysicsCollisionEvent(findInstance, findInstance2, PersistentManifolds.getPointId(j10, i11)));
        }
    }

    @Override
    public synchronized void removeCollisionListener(PhysicsCollisionListener physicsCollisionListener) {
        C13702E.t(physicsCollisionListener, E.a.f7280a);
        this.startedListeners.remove(physicsCollisionListener);
        updateFlags();
    }

    @Override
    public synchronized void removeContactListener(ContactListener contactListener) {
        C13702E.t(contactListener, E.a.f7280a);
        int indexOf = this.immediateListeners.indexOf(contactListener);
        this.immediateListeners.remove(indexOf);
        this.immediateListenerFlags.remove(indexOf);
        updateFlags();
    }

    @Override
    public synchronized void removeOngoingCollisionListener(PhysicsCollisionListener physicsCollisionListener) {
        C13702E.t(physicsCollisionListener, E.a.f7280a);
        this.ongoingListeners.remove(physicsCollisionListener);
        updateFlags();
    }

    @Override
    public void update(float f10, int i10, int i11) {
        this.space.update(f10, i10, i11 | this.stepFlags);
    }
}
