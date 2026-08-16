package com.jme3.bullet.collision.shapes;

import android.os.BatteryManager;
import com.jme3.bullet.collision.shapes.infos.IndexedMesh;
import com.jme3.bullet.util.DebugShapeFactory;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import com.jme3.terrain.Terrain;
import com.jme3.terrain.heightmap.HeightMap;
import com.jme3.util.BufferUtils;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.util.logging.Logger;
import p000if.C13702E;

public class HeightfieldCollisionShape extends CollisionShape {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger2 = Logger.getLogger(HeightfieldCollisionShape.class.getName());
    private static final Vector3f scaleIdentity = new Vector3f(1.0f, 1.0f, 1.0f);
    private static final String tagFlipQuadEdges = "flipQuadEdges";
    private static final String tagFlipTriangleWinding = "flipTriangleWinding";
    private static final String tagHeightScale = "heightScale";
    private static final String tagHeightStickLength = "heightStickLength";
    private static final String tagHeightStickWidth = "heightStickWidth";
    private static final String tagHeightfieldData = "heightfieldData";
    private static final String tagMaxHeight = "maxHeight";
    private static final String tagMinHeight = "minHeight";
    private static final String tagUpAxis = "upAxis";
    private static final String tagUseDiamond = "useDiamond";
    private static final String tagUseZigzag = "useZigzag";
    private FloatBuffer directBuffer;
    private boolean flipQuadEdges;
    private boolean flipTriangleWinding;
    private float heightScale;
    private int heightStickLength;
    private int heightStickWidth;
    private float[] heightfieldData;
    private float maxHeight;
    private float minHeight;
    private int upAxis;
    private boolean useDiamond;
    private boolean useZigzag;

    public HeightfieldCollisionShape() {
        this.flipQuadEdges = true;
        this.flipTriangleWinding = false;
        this.useDiamond = false;
        this.useZigzag = false;
        this.heightScale = 1.0f;
        this.upAxis = 1;
    }

    private void calculateMinAndMax() {
        float[] fArr = this.heightfieldData;
        float f10 = fArr[0];
        float f11 = f10;
        for (float f12 : fArr) {
            if (f12 < f11) {
                f11 = f12;
            }
            if (f12 > f10) {
                f10 = f12;
            }
        }
        if (f10 >= 0.0f && Math.abs(f10) > Math.abs(f11)) {
            f11 = -f10;
        } else {
            f10 = -f11;
        }
        this.minHeight = f11;
        this.maxHeight = f10;
    }

    private void createCollisionHeightfield(float[] fArr, Vector3f vector3f) {
        this.scale.set(vector3f);
        this.heightfieldData = (float[]) fArr.clone();
        int sqrt = (int) FastMath.sqrt(r2.length);
        this.heightStickWidth = sqrt;
        this.heightStickLength = sqrt;
        calculateMinAndMax();
        createShape();
    }

    private void createShape() {
        this.directBuffer = BufferUtils.createFloatBuffer(this.heightfieldData.length);
        for (float f10 : this.heightfieldData) {
            if (!Float.isFinite(f10)) {
                throw new IllegalArgumentException("illegal height: " + f10);
            }
            this.directBuffer.put(f10);
        }
        setNativeId(createShape2(this.heightStickWidth, this.heightStickLength, this.directBuffer, this.heightScale, this.minHeight, this.maxHeight, this.upAxis, this.flipQuadEdges, this.flipTriangleWinding, this.useDiamond, this.useZigzag));
        setContactFilterEnabled(this.enableContactFilter);
        setScale(this.scale);
        setMargin(this.margin);
    }

    private static native long createShape2(int i10, int i11, FloatBuffer floatBuffer, float f10, float f11, float f12, int i12, boolean z10, boolean z11, boolean z12, boolean z13);

    private static native void finalizeNative(long j10);

    private static void freeNativeObject(long j10) {
        finalizeNative(j10);
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        createShape();
        copyShapeProperties((HeightfieldCollisionShape) obj);
    }

    public int countColumns() {
        return this.heightStickWidth;
    }

    public int countMeshVertices() {
        return this.heightfieldData.length;
    }

    public int countRows() {
        return this.heightStickLength;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.heightStickWidth = capsule.readInt(tagHeightStickWidth, 0);
        this.heightStickLength = capsule.readInt(tagHeightStickLength, 0);
        this.heightScale = capsule.readFloat(tagHeightScale, 0.0f);
        this.minHeight = capsule.readFloat(tagMinHeight, 0.0f);
        this.maxHeight = capsule.readFloat(tagMaxHeight, 0.0f);
        this.upAxis = capsule.readInt(tagUpAxis, 1);
        this.heightfieldData = capsule.readFloatArray(tagHeightfieldData, new float[0]);
        this.flipQuadEdges = capsule.readBoolean(tagFlipQuadEdges, true);
        this.flipTriangleWinding = capsule.readBoolean(tagFlipTriangleWinding, false);
        this.useDiamond = capsule.readBoolean(tagUseDiamond, false);
        this.useZigzag = capsule.readBoolean(tagUseZigzag, false);
        createShape();
        readShapeProperties(capsule);
    }

    @Override
    public CollisionShape toSplittableShape() {
        return new MeshCollisionShape(true, new IndexedMesh(DebugShapeFactory.getDebugTriangles(this, 0)));
    }

    public int upAxis() {
        return this.upAxis;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.heightStickWidth, tagHeightStickWidth, 0);
        capsule.write(this.heightStickLength, tagHeightStickLength, 0);
        capsule.write(this.heightScale, tagHeightScale, 0.0f);
        capsule.write(this.minHeight, tagMinHeight, 0.0f);
        capsule.write(this.maxHeight, tagMaxHeight, 0.0f);
        capsule.write(this.upAxis, tagUpAxis, 1);
        capsule.write(this.heightfieldData, tagHeightfieldData, new float[0]);
        capsule.write(this.flipQuadEdges, tagFlipQuadEdges, true);
        capsule.write(this.flipTriangleWinding, tagFlipTriangleWinding, false);
        capsule.write(this.useDiamond, tagUseDiamond, false);
        capsule.write(this.useZigzag, tagUseZigzag, false);
    }

    public HeightfieldCollisionShape(float[] fArr) {
        this.flipQuadEdges = true;
        this.flipTriangleWinding = false;
        this.useDiamond = false;
        this.useZigzag = false;
        this.heightScale = 1.0f;
        this.upAxis = 1;
        C13702E.l(fArr, "height array");
        C13702E.i(fArr.length, "number of heights", 4, Integer.MAX_VALUE);
        createCollisionHeightfield(fArr, scaleIdentity);
    }

    public HeightfieldCollisionShape(HeightMap heightMap) {
        this.flipQuadEdges = true;
        this.flipTriangleWinding = false;
        this.useDiamond = false;
        this.useZigzag = false;
        this.heightScale = 1.0f;
        this.upAxis = 1;
        float[] heightMap2 = heightMap.getHeightMap();
        if (heightMap2 == null) {
            heightMap.load();
            heightMap2 = heightMap.getHeightMap();
        }
        createCollisionHeightfield(heightMap2, scaleIdentity);
    }

    public HeightfieldCollisionShape(float[] fArr, Vector3f vector3f) {
        this.flipQuadEdges = true;
        this.flipTriangleWinding = false;
        this.useDiamond = false;
        this.useZigzag = false;
        this.heightScale = 1.0f;
        this.upAxis = 1;
        C13702E.l(fArr, "height array");
        C13702E.i(fArr.length, "number of heights", 4, Integer.MAX_VALUE);
        C13702E.s(vector3f, BatteryManager.EXTRA_SCALE);
        createCollisionHeightfield(fArr, vector3f);
    }

    public HeightfieldCollisionShape(Terrain terrain, Vector3f vector3f) {
        this.flipQuadEdges = true;
        this.flipTriangleWinding = false;
        this.useDiamond = false;
        this.useZigzag = false;
        this.heightScale = 1.0f;
        this.upAxis = 1;
        C13702E.s(vector3f, BatteryManager.EXTRA_SCALE);
        float[] heightMap = terrain.getHeightMap();
        C13702E.i(heightMap.length, "number of heights", 4, Integer.MAX_VALUE);
        createCollisionHeightfield(heightMap, vector3f);
    }

    public HeightfieldCollisionShape(int i10, int i11, float[] fArr, Vector3f vector3f, int i12, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.flipQuadEdges = true;
        this.flipTriangleWinding = false;
        this.useDiamond = false;
        this.useZigzag = false;
        this.heightScale = 1.0f;
        this.upAxis = 1;
        C13702E.i(i10, "stick length", 2, Integer.MAX_VALUE);
        C13702E.i(i11, "stick width", 2, Integer.MAX_VALUE);
        C13702E.l(fArr, "heightmap");
        C13702E.s(vector3f, BatteryManager.EXTRA_SCALE);
        C13702E.a(i12, "up axis");
        this.heightStickLength = i10;
        this.heightStickWidth = i11;
        this.heightfieldData = (float[]) fArr.clone();
        this.scale.set(vector3f);
        this.upAxis = i12;
        this.flipQuadEdges = z10;
        this.flipTriangleWinding = z11;
        this.useDiamond = z12;
        this.useZigzag = z13;
        calculateMinAndMax();
        createShape();
    }
}
