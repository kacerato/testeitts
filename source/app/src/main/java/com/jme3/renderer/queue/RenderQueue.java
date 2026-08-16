package com.jme3.renderer.queue;

import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.scene.Geometry;

public class RenderQueue {
    static final boolean $assertionsDisabled = false;
    private GeometryList opaqueList = new GeometryList(new OpaqueComparator());
    private GeometryList guiList = new GeometryList(new GuiComparator());
    private GeometryList transparentList = new GeometryList(new TransparentComparator());
    private GeometryList translucentList = new GeometryList(new TransparentComparator());
    private GeometryList skyList = new GeometryList(new NullComparator());

    public enum Bucket {
        Opaque,
        Transparent,
        Sky,
        Translucent,
        Gui,
        Inherit
    }

    public enum ShadowMode {
        Off,
        Cast,
        Receive,
        CastAndReceive,
        Inherit
    }

    private void renderGeometryList(GeometryList geometryList, RenderManager renderManager, Camera camera, boolean z10) {
        geometryList.setCamera(camera);
        geometryList.sort();
        for (int i10 = 0; i10 < geometryList.size(); i10++) {
            Geometry geometry = geometryList.get(i10);
            renderManager.renderGeometry(geometry);
            geometry.queueDistance = Float.NEGATIVE_INFINITY;
        }
        if (z10) {
            geometryList.clear();
        }
    }

    public void addToQueue(Geometry geometry, Bucket bucket) {
        int ordinal = bucket.ordinal();
        if (ordinal == 0) {
            this.opaqueList.add(geometry);
            return;
        }
        if (ordinal == 1) {
            this.transparentList.add(geometry);
            return;
        }
        if (ordinal == 2) {
            this.skyList.add(geometry);
            return;
        }
        if (ordinal == 3) {
            this.translucentList.add(geometry);
        } else {
            if (ordinal == 4) {
                this.guiList.add(geometry);
                return;
            }
            throw new UnsupportedOperationException("Unknown bucket type: " + ((Object) bucket));
        }
    }

    public void clear() {
        this.opaqueList.clear();
        this.guiList.clear();
        this.transparentList.clear();
        this.translucentList.clear();
        this.skyList.clear();
    }

    public GeometryComparator getGeometryComparator(Bucket bucket) {
        int ordinal = bucket.ordinal();
        if (ordinal == 0) {
            return this.opaqueList.getComparator();
        }
        if (ordinal == 1) {
            return this.transparentList.getComparator();
        }
        if (ordinal == 2) {
            return this.skyList.getComparator();
        }
        if (ordinal == 3) {
            return this.translucentList.getComparator();
        }
        if (ordinal == 4) {
            return this.guiList.getComparator();
        }
        throw new UnsupportedOperationException("Unknown bucket type: " + ((Object) bucket));
    }

    public GeometryList getList(Bucket bucket) {
        int ordinal = bucket.ordinal();
        if (ordinal == 0) {
            return this.opaqueList;
        }
        if (ordinal == 1) {
            return this.transparentList;
        }
        if (ordinal == 2) {
            return this.skyList;
        }
        if (ordinal == 3) {
            return this.translucentList;
        }
        if (ordinal == 4) {
            return this.guiList;
        }
        throw new UnsupportedOperationException();
    }

    public boolean isQueueEmpty(Bucket bucket) {
        int ordinal = bucket.ordinal();
        if (ordinal == 0) {
            return this.opaqueList.size() == 0;
        }
        if (ordinal == 1) {
            return this.transparentList.size() == 0;
        }
        if (ordinal == 2) {
            return this.skyList.size() == 0;
        }
        if (ordinal == 3) {
            return this.translucentList.size() == 0;
        }
        if (ordinal == 4) {
            return this.guiList.size() == 0;
        }
        throw new UnsupportedOperationException("Unsupported bucket type: " + ((Object) bucket));
    }

    public void renderQueue(Bucket bucket, RenderManager renderManager, Camera camera) {
        renderQueue(bucket, renderManager, camera, true);
    }

    public void renderShadowQueue(GeometryList geometryList, RenderManager renderManager, Camera camera, boolean z10) {
        renderManager.getRenderer().pushDebugGroup("ShadowQueue");
        renderGeometryList(geometryList, renderManager, camera, z10);
        renderManager.getRenderer().popDebugGroup();
    }

    public void setGeometryComparator(Bucket bucket, GeometryComparator geometryComparator) {
        int ordinal = bucket.ordinal();
        if (ordinal == 0) {
            this.opaqueList = new GeometryList(geometryComparator);
            return;
        }
        if (ordinal == 1) {
            this.transparentList = new GeometryList(geometryComparator);
            return;
        }
        if (ordinal == 2) {
            this.skyList = new GeometryList(geometryComparator);
            return;
        }
        if (ordinal == 3) {
            this.translucentList = new GeometryList(geometryComparator);
        } else {
            if (ordinal == 4) {
                this.guiList = new GeometryList(geometryComparator);
                return;
            }
            throw new UnsupportedOperationException("Unknown bucket type: " + ((Object) bucket));
        }
    }

    public void renderQueue(Bucket bucket, RenderManager renderManager, Camera camera, boolean z10) {
        renderManager.getRenderer().pushDebugGroup(bucket.name());
        int ordinal = bucket.ordinal();
        if (ordinal == 0) {
            renderGeometryList(this.opaqueList, renderManager, camera, z10);
        } else if (ordinal == 1) {
            renderGeometryList(this.transparentList, renderManager, camera, z10);
        } else if (ordinal == 2) {
            renderGeometryList(this.skyList, renderManager, camera, z10);
        } else if (ordinal == 3) {
            renderGeometryList(this.translucentList, renderManager, camera, z10);
        } else if (ordinal == 4) {
            renderGeometryList(this.guiList, renderManager, camera, z10);
        } else {
            throw new UnsupportedOperationException("Unsupported bucket type: " + ((Object) bucket));
        }
        renderManager.getRenderer().popDebugGroup();
    }
}
