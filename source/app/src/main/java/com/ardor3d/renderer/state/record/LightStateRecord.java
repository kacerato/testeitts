package com.ardor3d.renderer.state.record;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.util.geom.BufferUtils;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class LightStateRecord extends StateRecord {
    private int backLightMask;
    private boolean enabled;
    private int lightMask;
    private boolean localViewer;
    private boolean separateSpecular;
    private boolean twoSidedOn;
    private final List<LightRecord> lightList = new ArrayList();
    public ColorRGBA globalAmbient = new ColorRGBA(-1.0f, -1.0f, -1.0f, -1.0f);
    public FloatBuffer lightBuffer = BufferUtils.createColorBuffer(1);

    public int getBackLightMask() {
        return this.backLightMask;
    }

    public int getLightMask() {
        return this.lightMask;
    }

    public LightRecord getLightRecord(int i10) {
        if (this.lightList.size() <= i10) {
            return null;
        }
        return this.lightList.get(i10);
    }

    @Override
    public void invalidate() {
        super.invalidate();
        Iterator<LightRecord> it = this.lightList.iterator();
        while (it.hasNext()) {
            it.next().invalidate();
        }
        this.lightMask = -1;
        this.backLightMask = -1;
        this.twoSidedOn = false;
        this.enabled = false;
        this.localViewer = false;
        this.separateSpecular = false;
        this.globalAmbient.set(-1.0f, -1.0f, -1.0f, -1.0f);
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public boolean isLocalViewer() {
        return this.localViewer;
    }

    public boolean isSeparateSpecular() {
        return this.separateSpecular;
    }

    public boolean isTwoSidedOn() {
        return this.twoSidedOn;
    }

    public void setBackLightMask(int i10) {
        this.backLightMask = i10;
    }

    public void setEnabled(boolean z10) {
        this.enabled = z10;
    }

    public void setLightMask(int i10) {
        this.lightMask = i10;
    }

    public void setLightRecord(LightRecord lightRecord, int i10) {
        while (this.lightList.size() <= i10) {
            this.lightList.add(null);
        }
        this.lightList.set(i10, lightRecord);
    }

    public void setLocalViewer(boolean z10) {
        this.localViewer = z10;
    }

    public void setSeparateSpecular(boolean z10) {
        this.separateSpecular = z10;
    }

    public void setTwoSidedOn(boolean z10) {
        this.twoSidedOn = z10;
    }

    @Override
    public void validate() {
        super.validate();
        Iterator<LightRecord> it = this.lightList.iterator();
        while (it.hasNext()) {
            it.next().validate();
        }
    }
}
