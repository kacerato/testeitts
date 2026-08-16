package com.jme3.audio;

import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.util.NativeObject;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;

public abstract class Filter extends NativeObject implements Savable, JmeCloneable {
    public Filter() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
    }

    @Override
    public abstract NativeObject createDestructableClone();

    @Override
    public void deleteObject(Object obj) {
        ((AudioRenderer) obj).deleteFilter(this);
    }

    @Override
    public Object jmeClone() {
        return super.mo1296clone();
    }

    public void read(JmeImporter jmeImporter) throws IOException {
    }

    @Override
    public void resetObject() {
        this.f81661id = -1;
        setUpdateNeeded();
    }

    public void write(JmeExporter jmeExporter) throws IOException {
    }

    public Filter(int i10) {
        super(i10);
    }
}
