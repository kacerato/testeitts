package com.jme3.bullet.debug;

import com.jme3.bullet.collision.shapes.CompoundCollisionShape;
import com.jme3.bullet.collision.shapes.infos.ChildCollisionShape;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class ChildSummaryList {
    static final Logger logger = Logger.getLogger(ChildSummaryList.class.getName());
    private final List<ChildSummary> list = new ArrayList(8);

    public int countValid() {
        int i10 = 0;
        while (i10 < this.list.size() && this.list.get(i10).isValid()) {
            i10++;
        }
        return i10;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            int countValid = countValid();
            ChildSummaryList childSummaryList = (ChildSummaryList) obj;
            if (countValid == childSummaryList.countValid()) {
                for (int i10 = 0; i10 < countValid; i10++) {
                    if (this.list.get(i10).equals(childSummaryList.list.get(i10))) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int countValid = countValid();
        int i10 = 13;
        for (int i11 = 0; i11 < countValid; i11++) {
            i10 = (i10 * 47) + this.list.get(i11).hashCode();
        }
        return i10;
    }

    public void update(CompoundCollisionShape compoundCollisionShape) {
        ChildCollisionShape[] listChildren = compoundCollisionShape.listChildren();
        int length = listChildren.length;
        while (length > this.list.size()) {
            this.list.add(new ChildSummary());
        }
        for (int i10 = 0; i10 < this.list.size(); i10++) {
            ChildSummary childSummary = this.list.get(i10);
            if (i10 < length) {
                childSummary.update(listChildren[i10]);
            } else {
                childSummary.update(null);
            }
        }
    }
}
