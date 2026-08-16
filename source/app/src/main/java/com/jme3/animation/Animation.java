package com.jme3.animation;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.scene.Spatial;
import com.jme3.util.SafeArrayList;
import com.jme3.util.TempVars;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.Iterator;
import org.eclipse.jdt.internal.core.JavaElement;

@Deprecated
public class Animation implements Savable, Cloneable, JmeCloneable {
    private float length;
    private String name;
    private SafeArrayList<Track> tracks = new SafeArrayList<>(Track.class);

    public Animation() {
    }

    public void addTrack(Track track) {
        this.tracks.add(track);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        SafeArrayList<Track> safeArrayList = new SafeArrayList<>(Track.class);
        Iterator<Track> it = this.tracks.iterator();
        while (it.hasNext()) {
            Track next = it.next();
            if (next instanceof JmeCloneable) {
                safeArrayList.add((Track) cloner.clone(next));
            } else {
                safeArrayList.add(next);
            }
        }
        this.tracks = safeArrayList;
    }

    public Animation cloneForSpatial(Spatial spatial) {
        try {
            Animation animation = (Animation) super.clone();
            animation.tracks = new SafeArrayList<>(Track.class);
            Iterator<Track> it = this.tracks.iterator();
            while (it.hasNext()) {
                Track next = it.next();
                if (next instanceof ClonableTrack) {
                    animation.tracks.add(((ClonableTrack) next).cloneForSpatial(spatial));
                } else {
                    animation.tracks.add(next);
                }
            }
            return animation;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public float getLength() {
        return this.length;
    }

    public String getName() {
        return this.name;
    }

    public Track[] getTracks() {
        return this.tracks.getArray();
    }

    @Override
    public Object jmeClone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException("Error cloning", e10);
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.name = capsule.readString("name", null);
        this.length = capsule.readFloat("length", 0.0f);
        Savable[] readSavableArray = capsule.readSavableArray("tracks", null);
        if (readSavableArray != null) {
            this.tracks = new SafeArrayList<>(Track.class);
            for (Savable savable : readSavableArray) {
                this.tracks.add((Track) savable);
            }
        }
    }

    public void removeTrack(Track track) {
        this.tracks.remove(track);
        if (track instanceof ClonableTrack) {
            ((ClonableTrack) track).cleanUp();
        }
    }

    public void setLength(float f10) {
        this.length = f10;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setTime(float f10, float f11, AnimControl animControl, AnimChannel animChannel, TempVars tempVars) {
        SafeArrayList<Track> safeArrayList = this.tracks;
        if (safeArrayList == null) {
            return;
        }
        Iterator<Track> it = safeArrayList.iterator();
        while (it.hasNext()) {
            it.next().setTime(f10, f11, animControl, animChannel, tempVars);
        }
    }

    public void setTracks(Track[] trackArr) {
        for (Track track : trackArr) {
            this.tracks.add(track);
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "[name=" + this.name + ", length=" + this.length + JavaElement.JEM_TYPE_PARAMETER;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.name, "name", (String) null);
        capsule.write(this.length, "length", 0.0f);
        capsule.write(this.tracks.getArray(), "tracks", (Savable[]) null);
    }

    public Animation m1253clone() {
        try {
            Animation animation = (Animation) super.clone();
            animation.tracks = new SafeArrayList<>(Track.class);
            Iterator<Track> it = this.tracks.iterator();
            while (it.hasNext()) {
                animation.tracks.add(it.next().m1261clone());
            }
            return animation;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Animation(String str, float f10) {
        this.name = str;
        this.length = f10;
    }
}
