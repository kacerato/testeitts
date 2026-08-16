package com.jme3.collision;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

public class CollisionResults implements Iterable<CollisionResult> {
    private ArrayList<CollisionResult> results = null;
    private boolean sorted = true;

    public void addCollision(CollisionResult collisionResult) {
        if (this.results == null) {
            this.results = new ArrayList<>();
        }
        this.results.add(collisionResult);
        this.sorted = false;
    }

    public void clear() {
        ArrayList<CollisionResult> arrayList = this.results;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    public CollisionResult getClosestCollision() {
        if (this.results == null || size() == 0) {
            return null;
        }
        if (!this.sorted) {
            Collections.sort(this.results);
            this.sorted = true;
        }
        return this.results.get(0);
    }

    public CollisionResult getCollision(int i10) {
        ArrayList<CollisionResult> arrayList = this.results;
        if (arrayList != null) {
            if (!this.sorted) {
                Collections.sort(arrayList);
                this.sorted = true;
            }
            return this.results.get(i10);
        }
        throw new IndexOutOfBoundsException("Index: " + i10 + ", Size: 0");
    }

    public CollisionResult getCollisionDirect(int i10) {
        ArrayList<CollisionResult> arrayList = this.results;
        if (arrayList != null) {
            return arrayList.get(i10);
        }
        throw new IndexOutOfBoundsException("Index: " + i10 + ", Size: 0");
    }

    public CollisionResult getFarthestCollision() {
        if (this.results == null || size() == 0) {
            return null;
        }
        if (!this.sorted) {
            Collections.sort(this.results);
            this.sorted = true;
        }
        return this.results.get(size() - 1);
    }

    @Override
    public Iterator<CollisionResult> iterator() {
        ArrayList<CollisionResult> arrayList = this.results;
        if (arrayList == null) {
            return Collections.emptyList().iterator();
        }
        if (!this.sorted) {
            Collections.sort(arrayList);
            this.sorted = true;
        }
        return this.results.iterator();
    }

    public int size() {
        ArrayList<CollisionResult> arrayList = this.results;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("CollisionResults[");
        ArrayList<CollisionResult> arrayList = this.results;
        if (arrayList != null) {
            Iterator<CollisionResult> it = arrayList.iterator();
            while (it.hasNext()) {
                sb2.append((Object) it.next());
                sb2.append(", ");
            }
            if (this.results.size() > 0) {
                sb2.setLength(sb2.length() - 2);
            }
        }
        sb2.append("]");
        return sb2.toString();
    }
}
