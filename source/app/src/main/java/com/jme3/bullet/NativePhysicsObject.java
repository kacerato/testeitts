package com.jme3.bullet;

import java.lang.ref.ReferenceQueue;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Logger;
import p000if.C13702E;
import yd.C16181m;

public abstract class NativePhysicsObject implements Comparable<NativePhysicsObject> {
    static final boolean $assertionsDisabled = false;
    public static final Logger loggerN = Logger.getLogger(NativePhysicsObject.class.getName());
    private static final Map<Long, NpoTracker> map = new ConcurrentHashMap(999);
    static final ReferenceQueue<NativePhysicsObject> weakReferenceQueue = new ReferenceQueue<>();

    private long f81566id = 0;

    public static final int countTrackers() {
        return map.size();
    }

    public static final void dumpTrackers() {
        System.out.println("Active trackers:");
        for (NpoTracker npoTracker : map.values()) {
            System.out.println(" " + ((Object) npoTracker));
        }
        System.out.flush();
    }

    public static final void freeUnusedObjects() {
        while (true) {
            try {
                ((NpoTracker) weakReferenceQueue.remove()).freeTrackedObject();
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    public static void removeTracker(long j10) {
        map.remove(Long.valueOf(j10));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            if (this.f81566id == ((NativePhysicsObject) obj).nativeId()) {
                return true;
            }
        }
        return false;
    }

    public final boolean hasAssignedNativeObject() {
        return this.f81566id != 0;
    }

    public int hashCode() {
        return (int) (this.f81566id >> 4);
    }

    public long nativeId() {
        return this.f81566id;
    }

    public final void reassignNativeId(long j10) {
        C13702E.x(j10, "nativeId");
        if (j10 != this.f81566id) {
            this.f81566id = j10;
            map.put(Long.valueOf(j10), new NpoTracker(this));
        }
    }

    public void setNativeId(long j10) {
        C13702E.x(j10, "nativeId");
        this.f81566id = j10;
        map.put(Long.valueOf(j10), new NpoTracker(this));
    }

    public final void setNativeIdNotTracked(long j10) {
        C13702E.x(j10, "nativeId");
        this.f81566id = j10;
    }

    public String toString() {
        return getClass().getSimpleName() + C16181m.f130230g + Long.toHexString(this.f81566id);
    }

    public final void unassignNativeObject() {
        this.f81566id = 0L;
    }

    @Override
    public int compareTo(NativePhysicsObject nativePhysicsObject) {
        return Long.compare(nativeId(), nativePhysicsObject.nativeId());
    }
}
