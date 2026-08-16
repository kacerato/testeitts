package com.jme3.scene.debug;

import com.jme3.animation.Skeleton;
import com.jme3.export.JmeImporter;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.Map;

public class SkeletonDebugger extends Node {
    private SkeletonInterBoneWire interBoneWires;
    private SkeletonPoints points;
    private SkeletonWire wires;

    public SkeletonDebugger() {
    }

    private String getGeometryName(String str) {
        return this.name + str;
    }

    private <T extends Mesh> T getMesh(String str) {
        Geometry geometry = (Geometry) getChild(getGeometryName(str));
        if (geometry != null) {
            return (T) geometry.getMesh();
        }
        return null;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.wires = (SkeletonWire) cloner.clone(this.wires);
        this.points = (SkeletonPoints) cloner.clone(this.points);
        this.interBoneWires = (SkeletonInterBoneWire) cloner.clone(this.interBoneWires);
    }

    public SkeletonInterBoneWire getInterBoneWires() {
        return this.interBoneWires;
    }

    public SkeletonPoints getPoints() {
        return this.points;
    }

    public SkeletonWire getWires() {
        return this.wires;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        this.wires = (SkeletonWire) getMesh("_wires");
        this.points = (SkeletonPoints) getMesh("_points");
        this.interBoneWires = (SkeletonInterBoneWire) getMesh("_interwires");
    }

    @Override
    public void updateLogicalState(float f10) {
        super.updateLogicalState(f10);
        this.wires.updateGeometry();
        this.points.updateGeometry();
        SkeletonInterBoneWire skeletonInterBoneWire = this.interBoneWires;
        if (skeletonInterBoneWire != null) {
            skeletonInterBoneWire.updateGeometry();
        }
    }

    public SkeletonDebugger(String str, Skeleton skeleton) {
        this(str, skeleton, null);
    }

    public SkeletonDebugger(String str, Skeleton skeleton, Map<Integer, Float> map) {
        super(str);
        this.wires = new SkeletonWire(skeleton, map);
        this.points = new SkeletonPoints(skeleton, map);
        attachChild(new Geometry(getGeometryName("_wires"), this.wires));
        attachChild(new Geometry(getGeometryName("_points"), this.points));
        if (map != null) {
            this.interBoneWires = new SkeletonInterBoneWire(skeleton, map);
            attachChild(new Geometry(getGeometryName("_interwires"), this.interBoneWires));
        }
        setQueueBucket(RenderQueue.Bucket.Transparent);
    }
}
