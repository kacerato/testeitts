package com.jme3.util;

import com.jme3.bounding.BoundingBox;
import com.jme3.collision.CollisionResults;
import com.jme3.collision.bih.BIHNode;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Eigen3f;
import com.jme3.math.Matrix3f;
import com.jme3.math.Matrix4f;
import com.jme3.math.Plane;
import com.jme3.math.Quaternion;
import com.jme3.math.Triangle;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.jme3.scene.Spatial;
import java.io.Closeable;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.Arrays;

public class TempVars implements Closeable {
    private static final int STACK_SIZE = 5;
    private static final ThreadLocal<TempVarsStack> varsLocal = new ThreadLocal<TempVarsStack>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public TempVarsStack initialValue() {
            return new TempVarsStack();
        }
    };
    private boolean isUsed = false;
    public final IntBuffer intBuffer1 = BufferUtils.createIntBuffer(1);
    public final IntBuffer intBuffer16 = BufferUtils.createIntBuffer(16);
    public final FloatBuffer floatBuffer16 = BufferUtils.createFloatBuffer(16);
    public final BoundingBox bbox = new BoundingBox();
    public final float[] skinPositions = new float[1536];
    public final float[] skinNormals = new float[1536];
    public final float[] skinTangents = new float[2048];
    public final Triangle triangle = new Triangle();
    public final ColorRGBA color = new ColorRGBA();
    public final Vector3f vect1 = new Vector3f();
    public final Vector3f vect2 = new Vector3f();
    public final Vector3f vect3 = new Vector3f();
    public final Vector3f vect4 = new Vector3f();
    public final Vector3f vect5 = new Vector3f();
    public final Vector3f vect6 = new Vector3f();
    public final Vector3f vect7 = new Vector3f();
    public final Vector3f vect8 = new Vector3f();
    public final Vector3f vect9 = new Vector3f();
    public final Vector3f vect10 = new Vector3f();
    public final Vector4f vect4f1 = new Vector4f();
    public final Vector4f vect4f2 = new Vector4f();
    public final Vector3f[] tri = {new Vector3f(), new Vector3f(), new Vector3f()};
    public final Vector2f vect2d = new Vector2f();
    public final Vector2f vect2d2 = new Vector2f();
    public final Matrix3f tempMat3 = new Matrix3f();
    public final Matrix4f tempMat4 = new Matrix4f();
    public final Matrix4f tempMat42 = new Matrix4f();
    public final Quaternion quat1 = new Quaternion();
    public final Quaternion quat2 = new Quaternion();
    public final Eigen3f eigen = new Eigen3f();
    public final Plane plane = new Plane();
    public final float[] fWdU = new float[3];
    public final float[] fAWdU = new float[3];
    public final float[] fDdU = new float[3];
    public final float[] fADdU = new float[3];
    public final float[] fAWxDdU = new float[3];
    public final Spatial[] spatialStack = new Spatial[32];
    public final float[] matrixWrite = new float[16];
    public final CollisionResults collisionResults = new CollisionResults();
    public final float[] bihSwapTmp = new float[9];
    public final ArrayList<BIHNode.BIHStackData> bihStack = new ArrayList<>();

    public static class TempVarsStack {
        int index;
        TempVars[] tempVars;

        private TempVarsStack() {
            this.index = 0;
            this.tempVars = new TempVars[5];
        }
    }

    private TempVars() {
    }

    private void clear() {
        this.collisionResults.clear();
        this.bihStack.clear();
        Arrays.fill(this.spatialStack, (Object) null);
    }

    public static TempVars get() {
        TempVarsStack tempVarsStack = varsLocal.get();
        TempVars tempVars = tempVarsStack.tempVars[tempVarsStack.index];
        if (tempVars == null) {
            tempVars = new TempVars();
            tempVarsStack.tempVars[tempVarsStack.index] = tempVars;
        }
        tempVarsStack.index++;
        tempVars.isUsed = true;
        return tempVars;
    }

    @Override
    public void close() {
        release();
    }

    public void release() {
        if (!this.isUsed) {
            throw new IllegalStateException("This instance of TempVars was already released!");
        }
        clear();
        this.isUsed = false;
        TempVarsStack tempVarsStack = varsLocal.get();
        int i10 = tempVarsStack.index - 1;
        tempVarsStack.index = i10;
        if (tempVarsStack.tempVars[i10] != this) {
            throw new IllegalStateException("An instance of TempVars has not been released in a called method!");
        }
    }
}
