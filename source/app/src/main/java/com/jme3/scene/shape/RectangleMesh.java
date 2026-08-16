package com.jme3.scene.shape;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Rectangle;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import org.eclipse.jdt.core.JavaCore;

public class RectangleMesh extends Mesh {
    private boolean flipped;
    private Vector3f normal;
    private Rectangle rectangle;
    private Vector2f[] texCoords;

    public RectangleMesh() {
        this(new Rectangle(new Vector3f(), new Vector3f(1.0f, 0.0f, 0.0f), new Vector3f(0.0f, 1.0f, 0.0f)));
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.rectangle = (Rectangle) cloner.clone(this.rectangle);
        this.texCoords = (Vector2f[]) cloner.clone(this.texCoords);
        this.normal = (Vector3f) cloner.clone(this.normal);
    }

    public void flip() {
        this.normal.negateLocal();
        this.flipped = !this.flipped;
        updateMesh();
    }

    public Vector3f getNormal() {
        return this.normal;
    }

    public Rectangle getRectangle() {
        return this.rectangle;
    }

    public Vector2f[] getTexCoords() {
        return this.texCoords;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.rectangle = (Rectangle) capsule.readSavable("rectangle", new Rectangle(new Vector3f(), new Vector3f(1.0f, 0.0f, 0.0f), new Vector3f(0.0f, 1.0f, 0.0f)));
        this.texCoords = (Vector2f[]) capsule.readSavableArray("texCoords", new Vector2f[]{new Vector2f(0.0f, 0.0f), new Vector2f(1.0f, 0.0f), new Vector2f(1.0f, 1.0f), new Vector2f(0.0f, 1.0f)});
        this.normal = (Vector3f) capsule.readSavable(JavaCore.NORMAL, null);
        this.flipped = capsule.readBoolean("flipped", false);
    }

    public void setRectangle(Rectangle rectangle) {
        this.rectangle = rectangle;
        updateMesh();
    }

    public void setTexCoords(Vector2f[] vector2fArr) throws IllegalArgumentException {
        if (vector2fArr.length != 4) {
            throw new IllegalArgumentException("Texture coordinates are 4 vertices, therefore a Vector2f array of length 4 must be provided.");
        }
        this.texCoords = vector2fArr;
        updateMesh();
    }

    public void updateMesh() {
        Vector3f a10 = this.rectangle.getA();
        Vector3f b10 = this.rectangle.getB();
        Vector3f c10 = this.rectangle.getC();
        Vector3f calculateD = this.rectangle.calculateD();
        setBuffer(VertexBuffer.Type.Position, 3, new float[]{a10.f81611x, a10.f81612y, a10.f81613z, b10.f81611x, b10.f81612y, b10.f81613z, calculateD.f81611x, calculateD.f81612y, calculateD.f81613z, c10.f81611x, c10.f81612y, c10.f81613z});
        setBuffer(VertexBuffer.Type.TexCoord, 2, BufferUtils.createFloatBuffer(this.texCoords));
        if (this.normal == null) {
            this.normal = this.rectangle.calculateNormal(null);
        }
        VertexBuffer.Type type = VertexBuffer.Type.Normal;
        Vector3f vector3f = this.normal;
        setBuffer(type, 3, BufferUtils.createFloatBuffer(vector3f, vector3f, vector3f, vector3f));
        if (this.flipped) {
            setBuffer(VertexBuffer.Type.Index, 3, new short[]{1, 0, 3, 3, 2, 1});
        } else {
            setBuffer(VertexBuffer.Type.Index, 3, new short[]{3, 0, 1, 1, 2, 3});
        }
        updateBound();
        setStatic();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.rectangle, "rectangle", new Rectangle(new Vector3f(), new Vector3f(1.0f, 0.0f, 0.0f), new Vector3f(0.0f, 1.0f, 0.0f)));
        capsule.write(this.texCoords, "texCoords", new Vector2f[]{new Vector2f(0.0f, 0.0f), new Vector2f(1.0f, 0.0f), new Vector2f(1.0f, 1.0f), new Vector2f(0.0f, 1.0f)});
        capsule.write(this.normal, JavaCore.NORMAL, (Savable) null);
        capsule.write(this.flipped, "flipped", false);
    }

    public RectangleMesh(Rectangle rectangle) {
        this.rectangle = rectangle;
        this.texCoords = new Vector2f[]{new Vector2f(0.0f, 0.0f), new Vector2f(1.0f, 0.0f), new Vector2f(1.0f, 1.0f), new Vector2f(0.0f, 1.0f)};
        this.flipped = false;
        updateMesh();
    }

    public RectangleMesh(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        this(new Rectangle(vector3f, vector3f2, vector3f3));
    }
}
