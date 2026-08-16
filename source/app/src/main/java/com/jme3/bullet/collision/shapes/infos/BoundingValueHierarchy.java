package com.jme3.bullet.collision.shapes.infos;

import com.jme3.bounding.BoundingBox;
import com.jme3.bullet.NativePhysicsObject;
import com.jme3.bullet.collision.shapes.MeshCollisionShape;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.logging.Logger;
import p000if.C13702E;

public class BoundingValueHierarchy extends NativePhysicsObject implements JmeCloneable, Savable {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(BoundingValueHierarchy.class.getName());
    private static final String tagBytes = "bytes";

    public BoundingValueHierarchy() {
    }

    private static native long deSerialize(byte[] bArr);

    private static native void finalizeNative(long j10);

    private static void freeNativeObject(long j10) {
        finalizeNative(j10);
    }

    private static native void getAabb(long j10, Vector3f vector3f, Vector3f vector3f2);

    private static native int getEscapeIndex(long j10, int i10);

    private static native int getNumLeafNodes(long j10);

    private static native int getNumNodes(long j10);

    private static native int getNumSubtreeHeaders(long j10);

    private static native long getOptimizedBvh(long j10);

    private static native int getPartId(long j10, int i10);

    private static native void getQuantization(long j10, Vector3f vector3f);

    private static native int getTraversalMode(long j10);

    private static native int getTriangleIndex(long j10, int i10);

    private static native boolean isCompressed(long j10);

    private static native boolean isLeafNode(long j10, int i10);

    private static native byte[] serialize(long j10);

    private static native void setTraversalMode(long j10, int i10);

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        reassignNativeId(deSerialize(((BoundingValueHierarchy) obj).serialize()));
    }

    public BoundingBox copyAabb(BoundingBox boundingBox) {
        if (boundingBox == null) {
            boundingBox = new BoundingBox();
        }
        long nativeId = nativeId();
        Vector3f vector3f = new Vector3f();
        Vector3f vector3f2 = new Vector3f();
        getAabb(nativeId, vector3f2, vector3f);
        boundingBox.setMinMax(vector3f2, vector3f);
        return boundingBox;
    }

    public Vector3f copyQuantization(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        getQuantization(nativeId(), vector3f);
        return vector3f;
    }

    public int countLeafNodes() {
        return getNumLeafNodes(nativeId());
    }

    public int countNodes() {
        return getNumNodes(nativeId());
    }

    public int countSubtreeHeaders() {
        return getNumSubtreeHeaders(nativeId());
    }

    public int escapeIndex(int i10) {
        long nativeId = nativeId();
        C13702E.i(i10, "node index", 0, getNumNodes(nativeId) - 1);
        return getEscapeIndex(nativeId, i10);
    }

    public boolean isCompressed() {
        return isCompressed(nativeId());
    }

    public boolean isLeafNode(int i10) {
        long nativeId = nativeId();
        C13702E.i(i10, "node index", 0, getNumNodes(nativeId) - 1);
        return isLeafNode(nativeId, i10);
    }

    public int partId(int i10) {
        long nativeId = nativeId();
        C13702E.i(i10, "node index", 0, getNumNodes(nativeId) - 1);
        return getPartId(nativeId, i10);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        setNativeId(deSerialize(jmeImporter.getCapsule(this).readByteArray(tagBytes, null)));
    }

    public byte[] serialize() {
        return serialize(nativeId());
    }

    public void setTraversalMode(int i10) {
        C13702E.i(i10, "mode", 0, 2);
        setTraversalMode(nativeId(), i10);
    }

    public int traversalMode() {
        return getTraversalMode(nativeId());
    }

    public int triangleIndex(int i10) {
        long nativeId = nativeId();
        C13702E.i(i10, "node index", 0, getNumNodes(nativeId) - 1);
        return getTriangleIndex(nativeId, i10);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        jmeExporter.getCapsule(this).write(serialize(), tagBytes, (byte[]) null);
    }

    public BoundingValueHierarchy(MeshCollisionShape meshCollisionShape) {
        C13702E.t(meshCollisionShape, "mesh shape");
        super.setNativeIdNotTracked(getOptimizedBvh(meshCollisionShape.nativeId()));
    }

    @Override
    public BoundingValueHierarchy jmeClone() {
        try {
            return (BoundingValueHierarchy) clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public BoundingValueHierarchy(byte[] bArr) {
        C13702E.t(bArr, tagBytes);
        super.setNativeId(deSerialize(bArr));
    }
}
