package com.jme3.cinematic;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.jme3.cinematic.events.CinematicEvent;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class KeyFrame implements Savable {
    List<CinematicEvent> cinematicEvents = new ArrayList();
    private int index;

    public List<CinematicEvent> getCinematicEvents() {
        return this.cinematicEvents;
    }

    public int getIndex() {
        return this.index;
    }

    public boolean isEmpty() {
        return this.cinematicEvents.isEmpty();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.cinematicEvents = capsule.readSavableArrayList("cinematicEvents", null);
        this.index = capsule.readInt(FirebaseAnalytics.d.f67690b0, 0);
    }

    public void setCinematicEvents(List<CinematicEvent> list) {
        this.cinematicEvents = list;
    }

    public void setIndex(int i10) {
        this.index = i10;
    }

    public List<CinematicEvent> trigger() {
        Iterator<CinematicEvent> it = this.cinematicEvents.iterator();
        while (it.hasNext()) {
            it.next().play();
        }
        return this.cinematicEvents;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.writeSavableArrayList((ArrayList) this.cinematicEvents, "cinematicEvents", null);
        capsule.write(this.index, FirebaseAnalytics.d.f67690b0, 0);
    }
}
