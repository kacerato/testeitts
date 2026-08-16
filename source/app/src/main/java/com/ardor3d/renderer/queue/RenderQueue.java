package com.ardor3d.renderer.queue;

import com.ardor3d.renderer.Renderer;
import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.util.Ardor3dException;
import java.util.EnumMap;
import java.util.Iterator;

public class RenderQueue {
    private final EnumMap<RenderBucketType, RenderBucket> renderBuckets = new EnumMap<>(RenderBucketType.class);

    public RenderQueue() {
        setupDefaultBuckets();
    }

    private void setupDefaultBuckets() {
        this.renderBuckets.put((EnumMap<RenderBucketType, RenderBucket>) RenderBucketType.PreBucket, (RenderBucketType) new OpaqueRenderBucket());
        this.renderBuckets.put((EnumMap<RenderBucketType, RenderBucket>) RenderBucketType.Shadow, (RenderBucketType) new OpaqueRenderBucket());
        this.renderBuckets.put((EnumMap<RenderBucketType, RenderBucket>) RenderBucketType.Opaque, (RenderBucketType) new OpaqueRenderBucket());
        this.renderBuckets.put((EnumMap<RenderBucketType, RenderBucket>) RenderBucketType.Transparent, (RenderBucketType) new TransparentRenderBucket());
        this.renderBuckets.put((EnumMap<RenderBucketType, RenderBucket>) RenderBucketType.Ortho, (RenderBucketType) new OrthoRenderBucket());
        this.renderBuckets.put((EnumMap<RenderBucketType, RenderBucket>) RenderBucketType.PostBucket, (RenderBucketType) new OpaqueRenderBucket());
    }

    public void addToQueue(Spatial spatial, RenderBucketType renderBucketType) {
        if (renderBucketType == RenderBucketType.Inherit || renderBucketType == RenderBucketType.Skip) {
            throw new Ardor3dException("Can't add spatial to bucket of type: " + ((Object) renderBucketType));
        }
        if (this.renderBuckets.containsKey(renderBucketType)) {
            this.renderBuckets.get(renderBucketType).add(spatial);
            return;
        }
        throw new Ardor3dException("No bucket exists of type: " + ((Object) renderBucketType));
    }

    public void clearBuckets() {
        Iterator<RenderBucket> it = this.renderBuckets.values().iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
    }

    public RenderBucket getRenderBucket(RenderBucketType renderBucketType) {
        return this.renderBuckets.get(renderBucketType);
    }

    public void popBuckets() {
        Iterator<RenderBucket> it = this.renderBuckets.values().iterator();
        while (it.hasNext()) {
            it.next().popBucket();
        }
    }

    public void pushBuckets() {
        Iterator<RenderBucket> it = this.renderBuckets.values().iterator();
        while (it.hasNext()) {
            it.next().pushBucket();
        }
    }

    public void removeFromQueue(Spatial spatial, RenderBucketType renderBucketType) {
        if (renderBucketType == RenderBucketType.Inherit || renderBucketType == RenderBucketType.Skip) {
            throw new Ardor3dException("Can't add spatial to bucket of type: " + ((Object) renderBucketType));
        }
        if (this.renderBuckets.containsKey(renderBucketType)) {
            this.renderBuckets.get(renderBucketType).remove(spatial);
            return;
        }
        throw new Ardor3dException("No bucket exists of type: " + ((Object) renderBucketType));
    }

    public void renderBuckets(Renderer renderer) {
        for (RenderBucket renderBucket : this.renderBuckets.values()) {
            renderBucket.sort();
            renderBucket.render(renderer);
            renderBucket.clear();
        }
    }

    public void renderOnly(Renderer renderer) {
        Iterator<RenderBucket> it = this.renderBuckets.values().iterator();
        while (it.hasNext()) {
            it.next().render(renderer);
        }
    }

    public void setRenderBucket(RenderBucketType renderBucketType, RenderBucket renderBucket) {
        this.renderBuckets.put((EnumMap<RenderBucketType, RenderBucket>) renderBucketType, (RenderBucketType) renderBucket);
    }

    public void sortBuckets() {
        Iterator<RenderBucket> it = this.renderBuckets.values().iterator();
        while (it.hasNext()) {
            it.next().sort();
        }
    }
}
