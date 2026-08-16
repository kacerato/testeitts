package com.jme3.anim;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;

public class AnimClip implements JmeCloneable, Savable {
    private double length;
    private String name;
    private AnimTrack[] tracks;

    public AnimClip() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        AnimTrack[] animTrackArr = new AnimTrack[this.tracks.length];
        int i10 = 0;
        while (true) {
            AnimTrack[] animTrackArr2 = this.tracks;
            if (i10 >= animTrackArr2.length) {
                this.tracks = animTrackArr;
                return;
            } else {
                animTrackArr[i10] = (AnimTrack) cloner.clone(animTrackArr2[i10]);
                i10++;
            }
        }
    }

    public double getLength() {
        return this.length;
    }

    public String getName() {
        return this.name;
    }

    public AnimTrack[] getTracks() {
        return this.tracks;
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
        Savable[] readSavableArray = capsule.readSavableArray("tracks", null);
        if (readSavableArray != null) {
            this.tracks = new AnimTrack[readSavableArray.length];
            for (int i10 = 0; i10 < readSavableArray.length; i10++) {
                AnimTrack animTrack = (AnimTrack) readSavableArray[i10];
                this.tracks[i10] = animTrack;
                if (animTrack.getLength() > this.length) {
                    this.length = animTrack.getLength();
                }
            }
        }
    }

    public void setTracks(AnimTrack[] animTrackArr) {
        this.tracks = animTrackArr;
        for (AnimTrack animTrack : animTrackArr) {
            if (animTrack.getLength() > this.length) {
                this.length = animTrack.getLength();
            }
        }
    }

    public String toString() {
        return "Clip " + this.name + ", " + this.length + 's';
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.name, "name", (String) null);
        capsule.write(this.tracks, "tracks", (Savable[]) null);
    }

    public AnimClip(String str) {
        this.name = str;
    }
}
