package com.ardor3d.intersection;

import com.ardor3d.math.Ray3;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public abstract class PickResults {
    private boolean _checkDistance;
    private DistanceComparator _distanceCompare;
    private boolean modified = false;
    private final List<PickData> _nodeList = new ArrayList();

    public static class DistanceComparator implements Comparator<PickData> {
        private DistanceComparator() {
        }

        @Override
        public int compare(PickData pickData, PickData pickData2) {
            return pickData.getIntersectionRecord().getClosestDistance() <= pickData2.getIntersectionRecord().getClosestDistance() ? -1 : 1;
        }
    }

    public abstract void addPick(Ray3 ray3, Pickable pickable);

    public void addPickData(PickData pickData) {
        this._nodeList.add(pickData);
        this.modified = true;
    }

    public void clear() {
        this._nodeList.clear();
    }

    public int getNumber() {
        return this._nodeList.size();
    }

    public PickData getPickData(int i10) {
        if (this.modified) {
            if (this._checkDistance) {
                Collections.sort(this._nodeList, this._distanceCompare);
            }
            this.modified = false;
        }
        return this._nodeList.get(i10);
    }

    public void processPick() {
    }

    public void setCheckDistance(boolean z10) {
        this._checkDistance = z10;
        if (z10) {
            this._distanceCompare = new DistanceComparator();
        }
    }

    public boolean willCheckDistance() {
        return this._checkDistance;
    }
}
