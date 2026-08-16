package com.jme3.cinematic;

import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public class TimeLine extends HashMap<Integer, KeyFrame> implements Savable {
    protected int keyFramesPerSeconds = 30;
    protected int lastKeyFrameIndex = 0;

    public void addKeyFrameAtIndex(int i10, KeyFrame keyFrame) {
        put(Integer.valueOf(i10), keyFrame);
        keyFrame.setIndex(i10);
        if (this.lastKeyFrameIndex < i10) {
            this.lastKeyFrameIndex = i10;
        }
    }

    public void addKeyFrameAtTime(float f10, KeyFrame keyFrame) {
        addKeyFrameAtIndex(getKeyFrameIndexFromTime(f10), keyFrame);
    }

    public Collection<KeyFrame> getAllKeyFrames() {
        return values();
    }

    public KeyFrame getKeyFrameAtIndex(int i10) {
        return get(Integer.valueOf(i10));
    }

    public KeyFrame getKeyFrameAtTime(float f10) {
        return get(Integer.valueOf(getKeyFrameIndexFromTime(f10)));
    }

    public int getKeyFrameIndexFromTime(float f10) {
        return Math.round(f10 * this.keyFramesPerSeconds);
    }

    public float getKeyFrameTime(KeyFrame keyFrame) {
        return keyFrame.getIndex() / this.keyFramesPerSeconds;
    }

    public int getLastKeyFrameIndex() {
        return this.lastKeyFrameIndex;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        Iterator it = jmeImporter.getCapsule(this).readSavableArrayList("keyFrames", null).iterator();
        while (it.hasNext()) {
            KeyFrame keyFrame = (KeyFrame) it.next();
            addKeyFrameAtIndex(keyFrame.getIndex(), keyFrame);
        }
    }

    public void removeKeyFrame(int i10) {
        remove(Integer.valueOf(i10));
        if (this.lastKeyFrameIndex == i10) {
            KeyFrame keyFrame = null;
            while (keyFrame == null && i10 >= 0) {
                keyFrame = getKeyFrameAtIndex(i10);
                this.lastKeyFrameIndex = i10;
                i10--;
            }
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(values());
        capsule.writeSavableArrayList(arrayList, "keyFrames", null);
    }

    public void removeKeyFrame(float f10) {
        removeKeyFrame(getKeyFrameIndexFromTime(f10));
    }
}
