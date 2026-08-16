package com.jme3.animation;

import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.ArrayList;

@Deprecated
public class TrackInfo implements Savable, JmeCloneable {
    ArrayList<Track> tracks = new ArrayList<>();

    public void addTrack(Track track) {
        this.tracks.add(track);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.tracks = (ArrayList) cloner.clone(this.tracks);
    }

    public ArrayList<Track> getTracks() {
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
        this.tracks = jmeImporter.getCapsule(this).readSavableArrayList("tracks", null);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        jmeExporter.getCapsule(this).writeSavableArrayList(this.tracks, "tracks", null);
    }
}
