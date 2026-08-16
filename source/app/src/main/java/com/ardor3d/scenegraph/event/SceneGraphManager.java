package com.ardor3d.scenegraph.event;

import com.ardor3d.scenegraph.Spatial;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SceneGraphManager implements DirtyEventListener {
    private static SceneGraphManager sceneGraphManagerInstance;
    private final List<DirtyEventListener> _listeners = new ArrayList();

    private SceneGraphManager() {
    }

    public static SceneGraphManager getSceneGraphManager() {
        if (sceneGraphManagerInstance == null) {
            sceneGraphManagerInstance = new SceneGraphManager();
        }
        return sceneGraphManagerInstance;
    }

    public void addDirtyEventListener(DirtyEventListener dirtyEventListener) {
        this._listeners.add(dirtyEventListener);
    }

    public void listenOnSpatial(Spatial spatial) {
        spatial.setListener(this);
    }

    public void removeDirtyEventListener(DirtyEventListener dirtyEventListener) {
        this._listeners.remove(dirtyEventListener);
    }

    @Override
    public boolean spatialDirty(Spatial spatial, DirtyType dirtyType) {
        Iterator<DirtyEventListener> it = this._listeners.iterator();
        while (it.hasNext()) {
            it.next().spatialDirty(spatial, dirtyType);
        }
        return false;
    }
}
