package com.ardor3d.scenegraph.extension;

import com.ardor3d.renderer.Renderer;
import com.ardor3d.scenegraph.Node;
import com.ardor3d.scenegraph.Spatial;
import java.util.BitSet;

public class SwitchNode extends Node {
    protected BitSet _childMask;

    public SwitchNode() {
        this("SwitchNode");
    }

    @Override
    public void draw(Renderer renderer) {
        Spatial spatial;
        if (this._children == null) {
            return;
        }
        int min = Math.min(this._childMask.length(), this._children.size());
        for (int i10 = 0; i10 < min; i10++) {
            if (this._childMask.get(i10) && (spatial = this._children.get(i10)) != null) {
                spatial.onDraw(renderer);
            }
        }
    }

    public void flipAllVisible() {
        this._childMask.flip(0, getNumberOfChildren());
    }

    public void flipVisible(int i10, int i11) {
        this._childMask.flip(i10, i11);
    }

    public int getNextNonVisible(int i10) {
        return this._childMask.nextClearBit(i10);
    }

    public int getNextVisible(int i10) {
        return this._childMask.nextSetBit(i10);
    }

    public boolean getVisible(int i10) {
        return this._childMask.get(i10);
    }

    public void setAllNonVisible() {
        this._childMask.clear();
    }

    public void setAllVisible() {
        this._childMask.set(0, getNumberOfChildren());
    }

    public void setSingleVisible(int i10) {
        this._childMask.clear();
        this._childMask.set(i10);
    }

    public void setVisible(BitSet bitSet) {
        this._childMask = bitSet;
    }

    public void shiftVisibleLeft() {
        int numberOfChildren = getNumberOfChildren();
        if (numberOfChildren == 0) {
            return;
        }
        int i10 = 0;
        boolean z10 = this._childMask.get(0);
        while (i10 < numberOfChildren - 1) {
            BitSet bitSet = this._childMask;
            int i11 = i10 + 1;
            bitSet.set(i10, bitSet.get(i11));
            i10 = i11;
        }
        this._childMask.set(getNumberOfChildren() - 1, z10);
    }

    public void shiftVisibleRight() {
        int numberOfChildren = getNumberOfChildren();
        if (numberOfChildren == 0) {
            return;
        }
        int i10 = numberOfChildren - 1;
        boolean z10 = this._childMask.get(i10);
        while (i10 > 0) {
            BitSet bitSet = this._childMask;
            bitSet.set(i10, bitSet.get(i10 - 1));
            i10--;
        }
        this._childMask.set(0, z10);
    }

    @Override
    public void updateChildren(double d10) {
        Spatial spatial;
        if (this._children == null) {
            return;
        }
        int min = Math.min(this._childMask.length(), this._children.size());
        for (int i10 = 0; i10 < min; i10++) {
            if (this._childMask.get(i10) && (spatial = this._children.get(i10)) != null) {
                spatial.updateGeometricState(d10, false);
            }
        }
    }

    public SwitchNode(String str) {
        super(str);
        BitSet bitSet = new BitSet();
        this._childMask = bitSet;
        bitSet.set(0);
    }

    public void flipVisible(int i10) {
        this._childMask.flip(i10);
    }

    public BitSet getVisible() {
        return this._childMask;
    }

    public void setVisible(int i10, boolean z10) {
        this._childMask.set(i10, z10);
    }

    public void setVisible(int i10, int i11, boolean z10) {
        this._childMask.set(i10, i11, z10);
    }
}
