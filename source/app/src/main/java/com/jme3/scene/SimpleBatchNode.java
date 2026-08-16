package com.jme3.scene;

import com.jme3.math.Matrix4f;
import com.jme3.scene.BatchNode;
import com.jme3.util.TempVars;
import com.jme3.util.clone.Cloner;

public class SimpleBatchNode extends BatchNode {
    private Matrix4f cachedLocalMat;

    public SimpleBatchNode() {
        this.cachedLocalMat = new Matrix4f();
    }

    @Override
    public int attachChild(Spatial spatial) {
        if (spatial instanceof Geometry) {
            return super.attachChild(spatial);
        }
        throw new UnsupportedOperationException("BatchNode is BatchMode.Simple only support child of type Geometry, use BatchMode.Complex to use a complex structure");
    }

    @Override
    public void batch() {
        doBatch();
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.cachedLocalMat = (Matrix4f) cloner.clone(this.cachedLocalMat);
    }

    @Override
    public Matrix4f getTransformMatrix(Geometry geometry) {
        this.cachedLocalMat.loadIdentity();
        this.cachedLocalMat.setRotationQuaternion(geometry.localTransform.getRotation());
        this.cachedLocalMat.setTranslation(geometry.localTransform.getTranslation());
        TempVars tempVars = TempVars.get();
        Matrix4f matrix4f = tempVars.tempMat4;
        matrix4f.loadIdentity();
        matrix4f.scale(geometry.localTransform.getScale());
        this.cachedLocalMat.multLocal(matrix4f);
        tempVars.release();
        return this.cachedLocalMat;
    }

    @Override
    public void setTransformRefresh() {
        this.refreshFlags |= 1;
        setBoundRefresh();
        for (BatchNode.Batch batch : this.batches.getArray()) {
            batch.geometry.setTransformRefresh();
        }
    }

    public SimpleBatchNode(String str) {
        super(str);
        this.cachedLocalMat = new Matrix4f();
    }
}
