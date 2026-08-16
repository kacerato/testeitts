package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.Vector2;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.util.export.CapsuleUtils;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import java.io.IOException;

public class OrientedBox extends Mesh {
    private static final long serialVersionUID = 1;
    protected Vector3 _center;
    public boolean _correctCorners;
    protected Vector3 _extent;
    protected Vector2 _texBotLeft;
    protected Vector2 _texBotRight;
    protected Vector2 _texTopLeft;
    protected Vector2 _texTopRight;
    public Vector3[] _vectorStore;
    protected Vector3 _xAxis;
    protected Vector3 _yAxis;
    protected Vector3 _zAxis;

    public OrientedBox() {
        this._xAxis = new Vector3(1.0d, 0.0d, 0.0d);
        this._yAxis = new Vector3(0.0d, 1.0d, 0.0d);
        this._zAxis = new Vector3(0.0d, 0.0d, 1.0d);
        this._extent = new Vector3(0.0d, 0.0d, 0.0d);
    }

    private void setIndexData() {
        if (this._meshData.getIndexBuffer() == null) {
            this._meshData.setIndexBuffer(BufferUtils.createByteBuffer(36));
            for (int i10 = 0; i10 < 6; i10++) {
                int i11 = i10 * 4;
                this._meshData.getIndices().put2(i11);
                int i12 = i11 + 1;
                this._meshData.getIndices().put2(i12);
                int i13 = i11 + 3;
                this._meshData.getIndices().put2(i13);
                this._meshData.getIndices().put2(i12);
                this._meshData.getIndices().put2(i11 + 2);
                this._meshData.getIndices().put2(i13);
            }
        }
    }

    private void setNormalData() {
        if (this._meshData.getNormalBuffer() == null) {
            this._meshData.setNormalBuffer(BufferUtils.createVector3Buffer(24));
        } else {
            this._meshData.getNormalBuffer().rewind();
        }
        this._meshData.getNormalBuffer().put(this._yAxis.getXf()).put(this._yAxis.getYf()).put(this._yAxis.getZf());
        this._meshData.getNormalBuffer().put(this._yAxis.getXf()).put(this._yAxis.getYf()).put(this._yAxis.getZf());
        this._meshData.getNormalBuffer().put(this._yAxis.getXf()).put(this._yAxis.getYf()).put(this._yAxis.getZf());
        this._meshData.getNormalBuffer().put(this._yAxis.getXf()).put(this._yAxis.getYf()).put(this._yAxis.getZf());
        this._meshData.getNormalBuffer().put(this._xAxis.getXf()).put(this._xAxis.getYf()).put(this._xAxis.getZf());
        this._meshData.getNormalBuffer().put(this._xAxis.getXf()).put(this._xAxis.getYf()).put(this._xAxis.getZf());
        this._meshData.getNormalBuffer().put(this._xAxis.getXf()).put(this._xAxis.getYf()).put(this._xAxis.getZf());
        this._meshData.getNormalBuffer().put(this._xAxis.getXf()).put(this._xAxis.getYf()).put(this._xAxis.getZf());
        this._meshData.getNormalBuffer().put(-this._xAxis.getXf()).put(-this._xAxis.getYf()).put(-this._xAxis.getZf());
        this._meshData.getNormalBuffer().put(-this._xAxis.getXf()).put(-this._xAxis.getYf()).put(-this._xAxis.getZf());
        this._meshData.getNormalBuffer().put(-this._xAxis.getXf()).put(-this._xAxis.getYf()).put(-this._xAxis.getZf());
        this._meshData.getNormalBuffer().put(-this._xAxis.getXf()).put(-this._xAxis.getYf()).put(-this._xAxis.getZf());
        this._meshData.getNormalBuffer().put(-this._yAxis.getXf()).put(-this._yAxis.getYf()).put(-this._yAxis.getZf());
        this._meshData.getNormalBuffer().put(-this._yAxis.getXf()).put(-this._yAxis.getYf()).put(-this._yAxis.getZf());
        this._meshData.getNormalBuffer().put(-this._yAxis.getXf()).put(-this._yAxis.getYf()).put(-this._yAxis.getZf());
        this._meshData.getNormalBuffer().put(-this._yAxis.getXf()).put(-this._yAxis.getYf()).put(-this._yAxis.getZf());
        this._meshData.getNormalBuffer().put(-this._zAxis.getXf()).put(-this._zAxis.getYf()).put(-this._zAxis.getZf());
        this._meshData.getNormalBuffer().put(-this._zAxis.getXf()).put(-this._zAxis.getYf()).put(-this._zAxis.getZf());
        this._meshData.getNormalBuffer().put(-this._zAxis.getXf()).put(-this._zAxis.getYf()).put(-this._zAxis.getZf());
        this._meshData.getNormalBuffer().put(-this._zAxis.getXf()).put(-this._zAxis.getYf()).put(-this._zAxis.getZf());
        this._meshData.getNormalBuffer().put(this._zAxis.getXf()).put(this._zAxis.getYf()).put(this._zAxis.getZf());
        this._meshData.getNormalBuffer().put(this._zAxis.getXf()).put(this._zAxis.getYf()).put(this._zAxis.getZf());
        this._meshData.getNormalBuffer().put(this._zAxis.getXf()).put(this._zAxis.getYf()).put(this._zAxis.getZf());
        this._meshData.getNormalBuffer().put(this._zAxis.getXf()).put(this._zAxis.getYf()).put(this._zAxis.getZf());
    }

    private void setTextureData() {
        if (this._meshData.getTextureBuffer(0) == null) {
            this._meshData.setTextureBuffer(BufferUtils.createVector2Buffer(24), 0);
            for (int i10 = 0; i10 < 6; i10++) {
                this._meshData.getTextureCoords(0).getBuffer().put(this._texTopRight.getXf()).put(this._texTopRight.getYf());
                this._meshData.getTextureCoords(0).getBuffer().put(this._texTopLeft.getXf()).put(this._texTopLeft.getYf());
                this._meshData.getTextureCoords(0).getBuffer().put(this._texBotLeft.getXf()).put(this._texBotLeft.getYf());
                this._meshData.getTextureCoords(0).getBuffer().put(this._texBotRight.getXf()).put(this._texBotRight.getYf());
            }
        }
    }

    private void setVertexData() {
        computeCorners();
        if (this._meshData.getVertexBuffer() == null) {
            this._meshData.setVertexBuffer(BufferUtils.createVector3Buffer(24));
        } else {
            this._meshData.getVertexBuffer().rewind();
        }
        this._meshData.getVertexBuffer().put(this._vectorStore[0].getXf()).put(this._vectorStore[0].getYf()).put(this._vectorStore[0].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[1].getXf()).put(this._vectorStore[1].getYf()).put(this._vectorStore[1].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[5].getXf()).put(this._vectorStore[5].getYf()).put(this._vectorStore[5].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[3].getXf()).put(this._vectorStore[3].getYf()).put(this._vectorStore[3].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[0].getXf()).put(this._vectorStore[0].getYf()).put(this._vectorStore[0].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[3].getXf()).put(this._vectorStore[3].getYf()).put(this._vectorStore[3].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[6].getXf()).put(this._vectorStore[6].getYf()).put(this._vectorStore[6].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[2].getXf()).put(this._vectorStore[2].getYf()).put(this._vectorStore[2].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[5].getXf()).put(this._vectorStore[5].getYf()).put(this._vectorStore[5].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[1].getXf()).put(this._vectorStore[1].getYf()).put(this._vectorStore[1].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[4].getXf()).put(this._vectorStore[4].getYf()).put(this._vectorStore[4].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[7].getXf()).put(this._vectorStore[7].getYf()).put(this._vectorStore[7].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[6].getXf()).put(this._vectorStore[6].getYf()).put(this._vectorStore[6].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[7].getXf()).put(this._vectorStore[7].getYf()).put(this._vectorStore[7].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[4].getXf()).put(this._vectorStore[4].getYf()).put(this._vectorStore[4].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[2].getXf()).put(this._vectorStore[2].getYf()).put(this._vectorStore[2].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[3].getXf()).put(this._vectorStore[3].getYf()).put(this._vectorStore[3].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[5].getXf()).put(this._vectorStore[5].getYf()).put(this._vectorStore[5].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[7].getXf()).put(this._vectorStore[7].getYf()).put(this._vectorStore[7].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[6].getXf()).put(this._vectorStore[6].getYf()).put(this._vectorStore[6].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[1].getXf()).put(this._vectorStore[1].getYf()).put(this._vectorStore[1].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[4].getXf()).put(this._vectorStore[4].getYf()).put(this._vectorStore[4].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[2].getXf()).put(this._vectorStore[2].getYf()).put(this._vectorStore[2].getZf());
        this._meshData.getVertexBuffer().put(this._vectorStore[0].getXf()).put(this._vectorStore[0].getYf()).put(this._vectorStore[0].getZf());
    }

    public void computeCorners() {
        this._correctCorners = true;
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance3 = Vector3.fetchTempInstance();
        fetchTempInstance.set(this._xAxis).multiplyLocal(this._extent.getX());
        fetchTempInstance2.set(this._yAxis).multiplyLocal(this._extent.getY());
        fetchTempInstance3.set(this._zAxis).multiplyLocal(this._extent.getZ());
        this._vectorStore[0].set(this._center).addLocal(fetchTempInstance).addLocal(fetchTempInstance2).addLocal(fetchTempInstance3);
        this._vectorStore[1].set(this._center).addLocal(fetchTempInstance).subtractLocal(fetchTempInstance2).addLocal(fetchTempInstance3);
        this._vectorStore[2].set(this._center).addLocal(fetchTempInstance).addLocal(fetchTempInstance2).subtractLocal(fetchTempInstance3);
        this._vectorStore[3].set(this._center).subtractLocal(fetchTempInstance).addLocal(fetchTempInstance2).addLocal(fetchTempInstance3);
        this._vectorStore[4].set(this._center).addLocal(fetchTempInstance).subtractLocal(fetchTempInstance2).subtractLocal(fetchTempInstance3);
        this._vectorStore[5].set(this._center).subtractLocal(fetchTempInstance).subtractLocal(fetchTempInstance2).addLocal(fetchTempInstance3);
        this._vectorStore[6].set(this._center).subtractLocal(fetchTempInstance).addLocal(fetchTempInstance2).subtractLocal(fetchTempInstance3);
        this._vectorStore[7].set(this._center).subtractLocal(fetchTempInstance).subtractLocal(fetchTempInstance2).subtractLocal(fetchTempInstance3);
        Vector3.releaseTempInstance(fetchTempInstance);
        Vector3.releaseTempInstance(fetchTempInstance2);
        Vector3.releaseTempInstance(fetchTempInstance3);
    }

    public void computeInformation() {
        setVertexData();
        setNormalData();
        setTextureData();
        setIndexData();
    }

    public Vector3 getCenter() {
        return this._center;
    }

    public Vector3 getExtent() {
        return this._extent;
    }

    public Vector3 getYAxis() {
        return this._yAxis;
    }

    public Vector3 getZAxis() {
        return this._zAxis;
    }

    public Vector3 getxAxis() {
        return this._xAxis;
    }

    public boolean isCorrectCorners() {
        return this._correctCorners;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        ReadOnlyVector3 readOnlyVector3 = Vector3.ZERO;
        this._center = (Vector3) inputCapsule.readSavable("center", new Vector3(readOnlyVector3));
        this._xAxis = (Vector3) inputCapsule.readSavable("_xAxis", new Vector3(Vector3.UNIT_X));
        this._yAxis = (Vector3) inputCapsule.readSavable("yAxis", new Vector3(Vector3.UNIT_Y));
        this._zAxis = (Vector3) inputCapsule.readSavable("zAxis", new Vector3(Vector3.UNIT_Z));
        this._extent = (Vector3) inputCapsule.readSavable("extent", new Vector3(readOnlyVector3));
        this._texTopRight = (Vector2) inputCapsule.readSavable("texTopRight", new Vector2(1.0d, 1.0d));
        this._texTopLeft = (Vector2) inputCapsule.readSavable("texTopLeft", new Vector2(1.0d, 0.0d));
        this._texBotRight = (Vector2) inputCapsule.readSavable("texBotRight", new Vector2(0.0d, 1.0d));
        this._texBotLeft = (Vector2) inputCapsule.readSavable("texBotLeft", new Vector2(0.0d, 0.0d));
        this._vectorStore = (Vector3[]) CapsuleUtils.asArray(inputCapsule.readSavableArray("vectorStore", new Vector3[8]), Vector3.class);
        this._correctCorners = inputCapsule.readBoolean("correctCorners", false);
    }

    public void setCenter(Vector3 vector3) {
        this._center = vector3;
    }

    public void setExtent(Vector3 vector3) {
        this._extent = vector3;
    }

    public void setXAxis(Vector3 vector3) {
        this._xAxis = vector3;
    }

    public void setYAxis(Vector3 vector3) {
        this._yAxis = vector3;
    }

    public void setZAxis(Vector3 vector3) {
        this._zAxis = vector3;
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        Vector3 vector3 = this._center;
        ReadOnlyVector3 readOnlyVector3 = Vector3.ZERO;
        outputCapsule.write(vector3, "center", new Vector3(readOnlyVector3));
        outputCapsule.write(this._xAxis, "_xAxis", new Vector3(Vector3.UNIT_X));
        outputCapsule.write(this._yAxis, "yAxis", new Vector3(Vector3.UNIT_Y));
        outputCapsule.write(this._zAxis, "zAxis", new Vector3(Vector3.UNIT_Z));
        outputCapsule.write(this._extent, "extent", new Vector3(readOnlyVector3));
        outputCapsule.write(this._texTopRight, "texTopRight", new Vector2(1.0d, 1.0d));
        outputCapsule.write(this._texTopLeft, "texTopLeft", new Vector2(1.0d, 0.0d));
        outputCapsule.write(this._texBotRight, "texBotRight", new Vector2(0.0d, 1.0d));
        outputCapsule.write(this._texBotLeft, "texBotLeft", new Vector2(0.0d, 0.0d));
        outputCapsule.write(this._vectorStore, "vectorStore", new Vector3[8]);
        outputCapsule.write(this._correctCorners, "correctCorners", false);
    }

    public OrientedBox(String str) {
        super(str);
        this._xAxis = new Vector3(1.0d, 0.0d, 0.0d);
        this._yAxis = new Vector3(0.0d, 1.0d, 0.0d);
        this._zAxis = new Vector3(0.0d, 0.0d, 1.0d);
        this._extent = new Vector3(0.0d, 0.0d, 0.0d);
        this._vectorStore = new Vector3[8];
        int i10 = 0;
        while (true) {
            Vector3[] vector3Arr = this._vectorStore;
            if (i10 < vector3Arr.length) {
                vector3Arr[i10] = new Vector3();
                i10++;
            } else {
                this._texTopRight = new Vector2(1.0d, 1.0d);
                this._texTopLeft = new Vector2(1.0d, 0.0d);
                this._texBotRight = new Vector2(0.0d, 1.0d);
                this._texBotLeft = new Vector2(0.0d, 0.0d);
                this._center = new Vector3(0.0d, 0.0d, 0.0d);
                this._correctCorners = false;
                computeInformation();
                return;
            }
        }
    }
}
